# Прекъсната връзка с костюма — повторно свързване (1.1.246-ai)

Код: `wearable/SuitReconnect.java`, кукички: `scripts/apply-suit-reconnect.py` (в build след
`apply-double-impulse.py`). Лог: таг `suit` в `WearableBleDiagLog`.

## Поведение
- Връзката с костюм на ред с оставащо време падне → редът **не се затваря**: клиент, програма, оставащо
  време, всички настройки и записът на тренировката остават. Тренировката спира (пауза).
- Над реда: „Връзката с костюма прекъсна · Свързвам отново… 0:23“. Таблетът опитва същия костюм на 4 s
  (`BleManager.connect(mac)`, собствен `BleGattCallback`).
- Костюмът се върне → нов sender/receiver на същия ред (`TrainItem.xemsRebind`), остава на пауза;
  лента горе „✓ Костюмът е свързан отново · Натисни ▶“ (4 s) + съобщение. ▶ продължава от там, където спря.
- 5 минути без костюм → редът се затваря както преди (стоковото `close`).
- Редът махнат / даден на друг костюм → чакането спира; закъснял отговор на костюма се прекъсва.
- Тренировка без оставащо време → затваряне както преди.

## Стоково (преди)
`NewTrainFragment.onDeviceDisConnected` → `TrainItemManager.disConnected(mac)` → `TrainItem.close()`:
стоп, `connected = false`, прекъсване, изтрит запис. Връщане само с изход от екрана и нова тренировка.

## Кукички
- `TrainItemManager.disConnected` (начало): `SuitReconnect.lost(this, mac)` → true = пропуска close.
- `TrainItem.xemsHold()` (ново): stop, receiver.close, `connected = false`, прерисуване.
- `TrainItem.xemsRebind(BleDevice)` (ново): като `init()` без `reset()` + `connected = true`, sendStop.
- `TrainViewHolder.updateUI` (край): `SuitReconnect.mark(item, row)` — банер в `row.getOverlay()`.
- Ново падане след връщане: нашият callback праща `DeviceDisConnectedEvent` → същият път отново.
