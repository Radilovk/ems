# BLE пулс v1.1.49-hrfix (и v1.1.48)

## Проблем

Директният BLE път (`XiaomiBandBleClient`) пращаше **START (8/45) на всеки 2 s** като
„keepalive“. Устройството ACK-ва кадъра, но **рестартира прозореца на измерване** —
първото `8/47` никога не идва. UI показваше `BLE HR: 0 · disconnected`, докато
логът изглеждаше „streaming“.

## Промени в `XiaomiBandBleClient` (build `v1.1.49-hrfix`)

| Преди | След |
| ----- | ---- |
| `keepalive START` на 1–2 s | **един** START на сесия |
| `streaming` веднага след START | `starting` → `measuring` (hr=0) → `streaming` |
| без `8/11` | `CONFIG_HEART_RATE_SET` преди START |
| decrypt с `decIndex++` | inbound винаги counter **0** |
| тишина = повторен START | тишина = **reconnect** след 8 s / 15 s |

## Сборка

```bash
bash build-apk.sh
```

След patch: `scripts/compile-wearable-java.sh` (или пълен `build-apk.sh`).

## Верификация в лога

Очаквано:

```
health CONFIG_HEART_RATE_SET enabled interval=1
health realtime START enc=true encIdx=N
state starting
hr raw hr=0 …
state measuring
hr raw hr=72 …
state streaming
```

**Няма** редове `keepalive START`.

## Референция

Протоколът и тестовете: [BLE HR Doctor](https://github.com/Radilovk/ems) companion
repo (анализатор + Kotlin reference + 66 self-test проверки).
