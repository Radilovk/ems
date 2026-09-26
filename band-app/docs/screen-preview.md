# Извеждане на кадри от екрана на band приложението

**Одобрен метод (2026-09-26).** Използвай го за агенти, CI и PR доказателства — **не** Vela емулатор/gRPC скрииншоти.

## Кратко

```bash
cd band-app
python3 scripts/gen-train-preview.py idle    /path/train_idle.png
python3 scripts/gen-train-preview.py running /path/train_running.png
python3 scripts/gen-train-preview.py multi   /path/train_multi_click.png

# или всички наведнъж:
bash scripts/run-emulator-test.sh
# изход: $ARTIFACT_DIR/screenshots/train_play_*.png
#        (по подразбиране /opt/cursor/artifacts/screenshots/)
```

## Какво прави

| Компонент | Роля |
|-----------|------|
| `scripts/gen-train-preview.py` | Рендерира PNG **212×520** с Pillow от layout константи |
| `scripts/run-emulator-test.sh` | Генерира idle + running + multi (името е историческо — **няма емулатор**) |
| `scripts/gen-bg.py`, `gen-icons.py`, `gen-all-btn.py` | Същите asset-и като в приложението |

Размерите и цветовете съвпадат с `src/pages/train/index.ux` (play 152×152 в ред 212px, канали 196×92, и т.н.).

## Режими

| Режим | Описание |
|-------|----------|
| `idle` | Зелен play, канали dim |
| `running` | Оранжев pause, канали live |
| `multi` | 6 кадъра (начало + 5 клика) с червен контур — доказва, че play не мърда/смалява |

## Кога да го ползваш

- Показване на UI промени в PR / агент walkthrough
- Проверка на layout след CSS/template промени
- Сравнение преди/след (idle vs running vs multi-click)

## Какво **не** е

- **Не** е снимка от реално Band 10 устройство (шрифти, Vela рендер, центриране на `<image>`, кирилица на часовника)
- Pillow preview **приближава** layout константи; за стоп/play винаги потвърждавай на устройство
- **Не** замества `system.interconnect` тест с таблет
- **Не** ползвай Vela емулатор за скрииншоти в cloud — ненадежден

За окончателно потвърждение на устройство: снимка от Band 10.

## Поддръжка при промени в UI

1. Промени `src/pages/train/index.ux` (layout/CSS).
2. Обнови съответните константи в `gen-train-preview.py` (`PLAY`, `PLAY_X`, `NAMES`, цветове).
3. Пусни `node test/train-layout.test.mjs` + `bash scripts/run-emulator-test.sh`.
4. При нова версия на екрана — запиши baseline в `docs/ui-versions.md`.

## Версии на train екрана

| Версия | Описание |
|--------|----------|
| **v2** | Стабилен play layout (152×152 центриран), без inline style на play |
| **v3** | Лека естетика върху v2: glow пръстен, KPI рамки, live channel border |

## Интеграция в тестовете

```bash
cd band-app && bash scripts/test-band.sh   # стъпка 4/4 = preview PNG
```

Виж и `test/README.md`.
