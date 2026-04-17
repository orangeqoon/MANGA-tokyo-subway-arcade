# マスターインデックス (Master Index)
# 東京地下鉄ゲーセン — 全データベース索引

このファイルはAIエージェントがプロジェクト全体を素早く把握するための索引です。
エージェントは作業開始時に必ずこのファイルを読んでください。

---

## 世界観データベース (Lore DB)

| ファイル | 内容 | カテゴリ |
|---------|------|---------|
| [world/01_shinjuku_underground.md](world/01_shinjuku_underground.md) | 新宿地下ネオ・アゴラの基本設定、KTK経済、ルードス・デモクラシー | location, economy, governance |
| [world/02_vertical_farming.md](world/02_vertical_farming.md) | 垂直農業システム（LED水耕栽培、食料自給） | technology |

---

## キャラクターデータベース (Character DB)

### メインキャスト

| ID | ファイル | 名前 | 役割 | Last Sync |
|----|---------|------|------|-----------|
| char_main_001 | [characters/main/01_satoshi.md](characters/main/01_satoshi.md) | サトシ | 主人公 / 10歳 | 2026-04-08 |
| char_main_002 | [characters/main/02_virtual_ai.md](characters/main/02_virtual_ai.md) | ヴァーチャルAI（未命名） | サトシの声棒 | 2026-04-08 |
| char_main_003 | [characters/main/03_mina.md](characters/main/03_mina.md) | ミナ | 垂直農業技術者 | 2026-04-17 |

---

## プロットデータベース (Plot DB)

| ファイル | 内容 |
|---------|------|
| [plot/01_concept_memo.md](plot/01_concept_memo.md) | コンセプト・物語の種・リファレンス一覧 |

---

## シミュレーションログ (Simulation DB)

| ファイル | 内容 |
|---------|------|
| (まだなし) | |

---

## 未解決の設定項目（要決定）

- [ ] サトシの一人称・口調
- [ ] サトシの短所
- [ ] サトシの出自（地下ネイティブ or 地上からの迷い込み）
- [ ] ヴァーチャルAIの名前
- [ ] ヴァーチャルAIの性格タイプ（A案/B案/C案 — `02_virtual_ai.md`参照）
- [ ] 垂直農業に従事する女性キャラクターの追加（設定資料待ち）

---

## エージェントへの注意事項

- 上記テーブルを**常に最新状態に保つこと** (キャラ追加・設定変更のたびに更新)
- 詳細なルールは [AGENTS.md](AGENTS.md) を参照
- Claude系ツール向けの文脈は [CLAUDE.md](CLAUDE.md) を参照
