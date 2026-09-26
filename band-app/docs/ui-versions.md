# Band train screen — UI версии

Запис на одобрени baseline-и. При промяна на layout първо провери, че не нарушаваш активната версия.

## v2 — стабилен play layout (baseline)

- Play: **152×152 px**, центриран в `tr-play-row` (212 px)
- Цветове само през CSS класове: `tr-play-idle`, `tr-play-run`
- Без inline `width`/`style` на play бутона
- Без `btn` / `down` transform на play
- `buildChannels` не се преизгражда при toggle на `run`
- Канал **Глутеус** (не Седалище)

Preview: `python3 scripts/gen-train-preview.py multi` — 6 кадъра, червен контур, play не мърда.

## v3 — естетика (текуща, върху v2)

CSS-only, без нови PNG:

- `tr-play-glow` — пръстен зад play; breathe в idle
- `tr-play-press` — scale(0.96) при натискане
- `kpi` рамка + `ctl-rule` разделител
- `cface-live` — по-ярка рамка на канали при run
- `stop-core` highlight border

**Layout от v2 не се променя.**

Band 5.9.27 / APK 1.1.139-ai.
