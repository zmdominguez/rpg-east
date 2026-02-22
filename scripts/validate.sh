#!/bin/bash

# Obsidian Vault Validation Script (Bash version)
# For environments without Node.js

VAULT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$VAULT_ROOT"

total_errors=0

echo "🔍 Validating Obsidian vault..."
echo ""

# Directories to skip in link validation
SKIP_PATTERNS="z_Templates|\.git|\.github|\.obsidian|\.claude|scripts|personalNotes|Collaboration\.md|CLAUDE\.md|readme\.md"

# 1. Check for broken wiki-links
echo "📎 Checking wiki-links..."

while IFS= read -r file; do
  # Extract wiki-links from file
  while IFS= read -r link; do
    # Skip template variables
    [[ "$link" == *"<%"* ]] && continue
    [[ "$link" == *"%>"* ]] && continue

    # Skip empty links
    [[ -z "${link// }" ]] && continue

    # Skip image file references (png, jpg, jpeg, gif, webp)
    [[ "$link" =~ \.(png|jpg|jpeg|gif|webp)$ ]] && continue

    # Clean up the link (remove trailing backslash if present)
    link="${link%\\}"

    # Get the base filename
    link_name=$(basename "$link" .md)

    # Check if link target exists (by filename)
    if ! find . -name "${link_name}.md" -type f 2>/dev/null | grep -q .; then
      echo "  ❌ $file: Broken link [[${link}]]"
      total_errors=$((total_errors + 1))
    fi
  done < <(grep -oE '\[\[[^]|]+' "$file" 2>/dev/null | sed 's/\[\[//')
done < <(find . -name "*.md" -type f | grep -vE "$SKIP_PATTERNS")

# 2. Check session file naming
echo ""
echo "📝 Checking session file naming..."

if [[ -d "./Campaign Journal/Main" ]]; then
  while IFS= read -r file; do
    filename=$(basename "$file")
    case "$filename" in
      S[0-9][0-9]*|Calendar.md|Questions.md|Lore.md)
        # Valid
        ;;
      *)
        echo "  ❌ $file: Main session should start with 'S##' prefix"
        total_errors=$((total_errors + 1))
        ;;
    esac
  done < <(find "./Campaign Journal/Main" -name "*.md" -type f 2>/dev/null)
fi

if [[ -d "./Campaign Journal/Cross Bone Inc" ]]; then
  while IFS= read -r file; do
    filename=$(basename "$file")
    if [[ ! "$filename" =~ ^X[0-9][0-9] ]]; then
      echo "  ❌ $file: Cross Bones session should start with 'X##' prefix"
      total_errors=$((total_errors + 1))
    fi
  done < <(find "./Campaign Journal/Cross Bone Inc" -name "*.md" -type f 2>/dev/null)
fi

if [[ -d "./Campaign Journal/One Shot" ]]; then
  while IFS= read -r file; do
    filename=$(basename "$file")
    if [[ ! "$filename" =~ ^O[0-9][0-9] ]]; then
      echo "  ❌ $file: One-shot session should start with 'O##' prefix"
      total_errors=$((total_errors + 1))
    fi
  done < <(find "./Campaign Journal/One Shot" -name "*.md" -type f 2>/dev/null)
fi

# 3. Check Dataview Publisher marker pairs
echo ""
echo "📊 Checking Dataview Publisher markers..."

while IFS= read -r file; do
  start_count=$(grep -c "DATAVIEW_PUBLISHER: start" "$file" 2>/dev/null | tr -d '[:space:]' || echo 0)
  end_count=$(grep -c "DATAVIEW_PUBLISHER: end" "$file" 2>/dev/null | tr -d '[:space:]' || echo 0)

  # Default to 0 if empty
  start_count=${start_count:-0}
  end_count=${end_count:-0}

  if [ "$start_count" -ne "$end_count" ] 2>/dev/null; then
    echo "  ❌ $file: Mismatched Dataview markers ($start_count start, $end_count end)"
    total_errors=$((total_errors + 1))
  fi
done < <(find . -name "*.md" -type f | grep -vE "z_Templates|\.git|CLAUDE\.md|readme\.md")

# 4. Check for malformed plot hooks
echo ""
echo "❓ Checking plot hook syntax..."

while IFS= read -r file; do
  # Look for [question: with single colon (should be double)
  if grep -qE '\[question:[^:]' "$file" 2>/dev/null; then
    echo "  ❌ $file: Malformed plot hook (use '[question:: text]' with double colon)"
    total_errors=$((total_errors + 1))
  fi
done < <(find . -name "*.md" -type f | grep -vE "z_Templates|\.git|CLAUDE\.md|readme\.md")

# 5. Check front matter exists in content files
echo ""
echo "📋 Checking YAML front matter..."

for dir in "Party/Main" "Party/CrossBonesInc" "NPCs"; do
  if [[ -d "./$dir" ]]; then
    while IFS= read -r file; do
      filename=$(basename "$file")

      # Skip special files and non-md
      [[ ! "$filename" =~ \.md$ ]] && continue
      [[ "$filename" =~ ^(Calendar|Questions|Lore)\.md$ ]] && continue

      # Check for front matter
      if ! head -1 "$file" 2>/dev/null | grep -q "^---$"; then
        echo "  ❌ $file: Missing YAML front matter"
        total_errors=$((total_errors + 1))
      fi
    done < <(find "./$dir" -name "*.md" -type f 2>/dev/null)
  fi
done

# Summary
echo ""
echo "─────────────────────────────────────────────────"
if [ "$total_errors" -eq 0 ]; then
  echo "✅ All validations passed!"
  exit 0
else
  echo "❌ Found $total_errors error(s)"
  echo ""
  echo "Fix all errors before pushing to origin."
  exit 1
fi
