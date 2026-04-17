# AGENTS.md — AI Agent Protocol for "東京地下鉄ゲーセン"

This document defines the rules and conventions that **any AI coding agent** (Antigravity, Claude, Cursor, Copilot, etc.) MUST follow when working on this manga project.

---

## 1. Project Overview

**Title (Working):** 東京地下鉄ゲーセン (Tokyo Subway Arcade)
**Type:** Manga / story-building project
**Language:** Japanese (primary), English (secondary for file metadata)
**GitHub:** https://github.com/orangeqoon/MANGA-tokyo-subway-arcade

---

## 2. Directory Structure & Rules

```
/
├── AGENTS.md               ← This file. DO NOT DELETE.
├── CLAUDE.md               ← Claude-specific system prompt
├── README.md               ← Human-readable project overview
├── task.md                 ← Active task list. Keep this updated.
├── git_auto_backup.bat     ← Windows batch file for quick git commit
│
├── world/                  ← World setting database (Lore DB)
│   ├── _template.md        ← Template for new world entries
│   └── *.md                ← One file per world concept/rule
│
├── characters/             ← Character database (Character DB)
│   ├── _template.md        ← Template for new characters
│   ├── images/             ← Character concept art / images
│   └── main/               ← Main cast characters
│       └── *.md
│
├── plot/                   ← Story plots and episode outlines
│   └── *.md
│
└── simulations/            ← Character dialogue/behavior simulations
    └── *.md
```

### File Naming Conventions
- Character files: `NN_charactername.md` (e.g., `01_satoshi.md`)
- World files: `NN_concept_name.md` (e.g., `01_shinjuku_underground.md`)
- Plot files: `NN_description.md` (e.g., `01_concept_memo.md`)
- Simulation files: `YYYYMMDD_charA_vs_charB.md`

---

## 3. Character File Schema (YAML Frontmatter)

Every character file MUST begin with this YAML block:

```yaml
---
id: "char_[role]_[NNN]"       # e.g. "char_main_001"
name: "キャラクター名"
role: "役割 / Role in story"
ktk_value: 0                  # Current KTK (shoulder-tap token) holding amount
tags: ["tag1", "tag2"]        # Personality / role tags
image: "characters/images/filename.png"  # Relative path to concept art
related_chars: []             # IDs of related characters
last_sync: "YYYY-MM-DD"       # Date of last Lore Sync
---
```

---

## 4. World File Schema (YAML Frontmatter)

Every world setting file MUST begin with this YAML block:

```yaml
---
id: "world_[NNN]"
title: "設定タイトル"
category: "economy | governance | location | technology | culture"
affects_chars: []   # IDs of characters affected by this lore
last_updated: "YYYY-MM-DD"
---
```

---

## 5. Lore Sync Protocol

When a world setting is changed or added, the agent MUST:
1. **Identify** which characters are affected (check `affects_chars` and `related_chars` fields).
2. **Report** to the user: "This change affects [char A] and [char B]. Here is why:"
3. **Wait for user approval**, then update the relevant character files.
4. **Update** the `last_sync` field in affected character files.
5. **Update** `task.md` to reflect the completed sync.

---

## 6. Simulation Protocol

When running a character simulation:
1. **Load** all relevant character files from `/characters/`
2. **Load** the latest world settings from `/world/`
3. **Run** the simulation based on established character voices and rules
4. **Save** notable results to `/simulations/YYYYMMDD_description.md`
5. If the user says "これを正史（カノン）にして", update the character DB accordingly.

---

## 7. Git Workflow

- Always commit before major changes with a descriptive message in Japanese
- Use `git_auto_backup.bat` for quick saves on Windows
- Commit message format: `[種別] 変更内容の概要`
  - 種別: `feat` (新機能/新設定), `update` (更新), `sync` (Lore Sync), `sim` (Simulation log)

Example: `feat: 垂直農業キャラクターのDBを追加`

---

## 8. Image Handling

- All concept art is stored in `/characters/images/`
- When generating AI images, save to this directory with a descriptive filename
- Reference images in character files using the `image:` field in frontmatter
- Embed images in markdown using: `![説明](characters/images/filename.png)`

---

## 9. What Agents MUST NOT Do

- ❌ Do NOT delete any existing `*.md` files without user confirmation
- ❌ Do NOT change a character's core identity without running a Lore Sync
- ❌ Do NOT commit to git with a generic message like "update"
- ❌ Do NOT create files outside the defined directory structure
