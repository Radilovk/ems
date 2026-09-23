# BLE пулс v1.1.53-ble — защо Band 8 прекъсваше след START

## Намерени бъгове (потвърдени със симулатора `scripts/ble-sim`)

| # | Бъг | Последствие | Поправка |
|---|-----|-------------|----------|
| 1 | ACK за входящ кадър от гривната се пишеше на **0x52**, а кадърът идва на **0x51** | Гривната чака ACK на 0x51, не праща следващ кадър (8/47) и след ~6 s прекъсва | ACK/chunk-ACK се пише на характеристиката, от която е дошъл кадърът (както `XiaomiCharacteristic.sendAck` в Gadgetbridge) |
| 2 | Няма резервен ход, ако `onMtuChanged` не дойде (MTU вече договорен от друго приложение) | Вечно `connecting` | Откриване на услугите след 2.5 s без MTU callback |
| 3 | Изгубен ACK от гривната блокира опашката завинаги | Вечно `authenticated`, START никога не тръгва | Таймаут 3 s за ACK на команда |
| 4 | `8/11 CONFIG_HEART_RATE_SET` презаписваше настройките за пулс на гривната | Сменя потребителските настройки; Gadgetbridge не го прави | Премахнато — само START (8/45) |

Също: сглобяването на chunk-ове е по характеристика; кадри на 0x53/0x55 се ACK-ват там и не се
третират като команди.

## Тест

```bash
pip install pycryptodome
STRICT=1 scripts/ble-sim/run.sh          # пълен поток auth → init → START → 8/47 → HR
STRICT=1 scripts/ble-sim/run.sh nomtu    # без onMtuChanged
STRICT=1 NOACK_FIRST_ENC=1 scripts/ble-sim/run.sh   # гривната изпуска един ACK
```

Симулаторът е независима Python реализация (pycryptodome AES-CCM) по Gadgetbridge.
Версия v1.1.52 минава само в толерантен режим (`STRICT=0`); в строг спира на първия ACK.
