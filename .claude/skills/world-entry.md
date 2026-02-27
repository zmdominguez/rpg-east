# /world-entry

Create a new world location entry.

## Usage
```
/world-entry [name]
```

## Instructions

1. Ask the user for:
   - Location name (if not provided)
   - Type: City location or Region location
   - Parent location (e.g., "Thornhaven City" or "Thornhaven Region")
   - Brief description
   - Key NPCs associated with this location
   - Map reference (if any)

2. Determine file path:
   - City location: `World/Thornhaven City/[Name].md`
   - Region location: `World/Thornhaven Region/[Name].md`
   - Or create in appropriate subfolder based on parent

3. Create the file using this template:

```markdown
## Description
[Brief description of the location]

## Key Features
- Notable feature 1
- Notable feature 2

## Key NPCs
- [[NPC Name]] - Role/relationship to location

## Notable Locations
- [[Sub-location]] - Description

## Notes
- Additional information
- History or lore
```

4. If it's a business/establishment, use this format instead:
```markdown
Owner: [[Owner Name]]
Map: [Map Reference]

## Description
[Description of the establishment]

## History
> Historical background or founding story

## Notes
- Regular visitors or notable events
```

5. After creating, remind user to:
   - Link this location from relevant session notes
   - Add to Timeline if historically significant
   - Update related NPC files
