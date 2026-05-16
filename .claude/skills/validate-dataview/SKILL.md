---
name: rpg-validate-dataview
description: Check that all Dataview Serializer blocks are correctly formatted and have been run. Use before opening a PR to catch unrendered queries and malformed markers.
allowed-tools: Bash Glob Read
model: claude-sonnet-4-6
arguments: scope
---

# /validate-dataview

Check Dataview Serializer plugin format compliance across the vault.

## Usage
```
/validate-dataview [scope]
```

- `scope`: `$scope` — `"pr"` (only git-changed files, default), `"all"` (entire vault), or a folder path like `"World/NPCs"`

## What This Checks

The [Dataview Serializer plugin](https://developassion.gitbook.io/obsidian-dataview-serializer/usage) requires:

1. **Block queries** — Every `<!-- QueryToSerialize: query -->` must be followed by a `<!-- SerializedQuery: query -->` … `<!-- SerializedQuery END -->` result block
2. **Inline queries** — Every `<!-- IQ: =expr -->content<!-- /IQ -->` must have non-empty content between the tags
3. **Marker pairing** — Every `<!-- SerializedQuery: -->` must have a matching `<!-- SerializedQuery END -->`

## Instructions

1. Determine scope from `$scope`:
   - `"pr"` or empty → run `git diff main..HEAD --name-only` to get changed `.md` files
   - `"all"` → scan the entire vault (skip `personalNotes/`, `.git/`, `.claude/`, `z_Templates/`, `scripts/`)
   - folder path → scan only that folder

2. Run this bash script to detect issues:

```bash
python3 -c "
import re, os, subprocess, sys

vault = os.getcwd()
scope = sys.argv[1] if len(sys.argv) > 1 else 'pr'
skip = {'personalNotes', '.git', '.claude', 'z_Templates', 'scripts'}

def get_files(scope):
    if scope == 'pr':
        out = subprocess.check_output(['git', 'diff', 'main..HEAD', '--name-only']).decode()
        return [os.path.join(vault, f.strip()) for f in out.splitlines() if f.strip().endswith('.md')]
    elif scope == 'all':
        files = []
        for root, dirs, fnames in os.walk(vault):
            dirs[:] = [d for d in dirs if d not in skip]
            for f in fnames:
                if f.endswith('.md'):
                    files.append(os.path.join(root, f))
        return files
    else:
        folder = os.path.join(vault, scope)
        return [os.path.join(r, f) for r, _, fs in os.walk(folder) for f in fs if f.endswith('.md')]

empty_iq, unrun_query, no_end, ok = [], [], [], 0

for path in get_files(scope):
    if not os.path.isfile(path): continue
    rel = os.path.relpath(path, vault)
    # Skip CLAUDE.md (contains examples in prose)
    if os.path.basename(path) == 'CLAUDE.md': continue
    try:
        lines = open(path).readlines()
    except:
        continue

    content = ''.join(lines)

    # Skip files where QueryToSerialize only appears inside code fences
    stripped = re.sub(r'\`\`\`.*?\`\`\`', '', content, flags=re.DOTALL)
    stripped = re.sub(r'\`[^\`]+\`', '', stripped)

    q_count = len(re.findall(r'<!-- QueryToSerialize:', stripped))
    s_count = len(re.findall(r'<!-- SerializedQuery:', stripped))
    end_count = len(re.findall(r'<!-- SerializedQuery END -->', stripped))

    if q_count > 0 and s_count < q_count:
        unrun_query.append((rel, q_count, s_count))

    if s_count != end_count:
        no_end.append((rel, s_count, end_count))

    for i, line in enumerate(lines, 1):
        if re.search(r'<!-- IQ:[^>]+--><!-- /IQ -->', line):
            empty_iq.append((rel, i, line.strip()))

    if q_count == s_count and s_count == end_count and not any(rel == r for r,*_ in unrun_query + no_end + [(r,) for r,*_ in empty_iq]):
        ok += 1

print(f'Scope: {scope}')
print(f'Clean files: {ok}')
print()

if empty_iq:
    print(f'EMPTY IQ BLOCKS ({len(empty_iq)}) — plugin must be run before committing:')
    for rel, lineno, text in empty_iq:
        print(f'  {rel}:{lineno}')
        print(f'    {text[:100]}')
    print()

if unrun_query:
    print(f'UNRUN QUERIES ({len(unrun_query)}) — QueryToSerialize without SerializedQuery output:')
    for rel, q, s in unrun_query:
        print(f'  {rel}  ({q} queries, {s} serialized)')
    print()

if no_end:
    print(f'MISSING END MARKERS ({len(no_end)}) — SerializedQuery block not closed:')
    for rel, s, e in no_end:
        print(f'  {rel}  ({s} starts, {e} ends)')
    print()

if not (empty_iq or unrun_query or no_end):
    print('All Dataview Serializer markers are valid.')
" "$scope"
```

3. Interpret the results:

   **Empty IQ blocks** → The file has inline queries like `<!-- IQ: =this.date --><!-- /IQ -->` with no content rendered. This means the file was created/edited without opening it in Obsidian. **The plugin must be run before committing.**

   **Unrun queries** → A `QueryToSerialize` block has no `SerializedQuery` output yet. Common in new NPC/character files where only some sections have been visited. Not always blocking — check if the file is newly added in this PR.

   **Missing END markers** → A `SerializedQuery` block was opened but never closed. This is always a bug — the plugin may have partially run and failed.

4. Conclude with a clear verdict:
   - **No issues** → "✅ All Dataview Serializer markers are valid. Safe to open PR."
   - **Empty IQ only** → "⚠️ Open these files in Obsidian and wait for the plugin to run, then commit the updated content before pushing."
   - **Unrun queries in new PR files** → "⚠️ New files have unrun QueryToSerialize blocks. Open them in Obsidian, let the plugin populate the results, then commit."
   - **Missing END** → "❌ Malformed SerializedQuery blocks found. These need manual fixing."
