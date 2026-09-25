#!/usr/bin/env python3
"""Patch wearable smali for settings band connection test (full reconnect + status UX)."""

from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SMALI = ROOT / "branding" / "smali" / "wearable"


def patch_direct_ble_listener(text: str) -> str:
    needle = """    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    goto :goto_1
"""
    tail = """    :cond_0
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authenticated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_hr_try

    const-string v1, "initialized"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_hr_try

    return-void

    :cond_hr_try
    :try_start_hr
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V
    :try_end_hr
    .catch Ljava/lang/Throwable; {:try_start_hr .. :try_end_hr} :catch_hr

    :catch_hr
    return-void
"""
    if ":cond_hr_try" in text:
        return text
    if needle not in text:
        raise SystemExit("DirectBleListener.onState patch anchor missing")
    text = text.replace(
        """    :cond_0
    :goto_1
    return-void
""",
        tail,
        1,
    )
    return text


def patch_on_band_connected(text: str) -> str:
    needle = """    sput-boolean v4, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 419
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->start()V
"""
    insert = """    sput-boolean v4, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    :try_start_hr
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->applyHr(Landroid/content/Context;)V
    :try_end_hr
    .catch Ljava/lang/Throwable; {:try_start_hr .. :try_end_hr} :catch_hr

    :catch_hr
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->start()V
"""
    if ":try_start_hr" in text:
        return text
    if needle not in text:
        raise SystemExit("onBandConnected patch anchor missing")
    return text.replace(needle, insert, 1)


def patch_notify_bridge(text: str) -> str:
    if "settingsFullReconnect" in text:
        return text
    text = text.replace(
        "Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;,",
        "Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;,\n        "
        "Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;,",
        1,
    )
    text = text.replace(
        ".field private static final fullReconnectTask:",
        ".field private static final settingsReconnectTask:"
        "Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;\n\n"
        ".field private static final fullReconnectTask:",
        1,
    )
    clinit = """    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    .line 332
"""
    clinit_new = """    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;

    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    .line 332
"""
    if clinit not in text:
        raise SystemExit("NotifyWearableBridge clinit anchor missing")
    text = text.replace(clinit, clinit_new, 1)

    full = Path(SMALI / "NotifyWearableBridge$FullReconnectTask.smali").read_text(encoding="utf-8")
    settings_task = full.replace("FullReconnectTask", "SettingsReconnectTask").replace(
        "NotifyWearableBridge.fullReconnect", "NotifyWearableBridge.settingsReconnect"
    )
    Path(SMALI / "NotifyWearableBridge$SettingsReconnectTask.smali").write_text(settings_task, encoding="utf-8")

    method = """
.method public static settingsFullReconnect(Landroid/app/Activity;)V
    .locals 5

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->owners:Ljava/util/Set;

    const-string v1, "settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->refreshCacheOnNextConnect()V

    const-string v0, "reconnecting"

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bleState:Ljava/lang/String;

    const/4 v4, -0x1

    sput v4, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrOn:Ljava/lang/Boolean;

    const-string v0, "reconnect"

    const-string v1, "settings full reconnect"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRate(IZ)V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnostics()V

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    iput-object p0, v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;->activity:Landroid/app/Activity;

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsReconnectTask:Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "reconnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings disconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

"""
    anchor = ".method public static reconnect(Landroid/app/Activity;Ljava/lang/String;)V"
    if anchor not in text:
        raise SystemExit("reconnect method anchor missing")
    text = text.replace(anchor, method + anchor, 1)
    return text


def patch_settings_section(text: str) -> str:
    # refreshStatus / flushConfigFromUi / settingsFullReconnect live in Java smali — do not patch here.
    if "settingsFullReconnect" in text:
        return text
    text = text.replace(
        "invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->reconnect(Landroid/app/Activity;Ljava/lang/String;)V",
        "invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->flushConfigFromUi(Landroid/app/Activity;)V\n\n"
        "    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsFullReconnect(Landroid/app/Activity;)V",
        1,
    )
    flush = """
.method static flushConfigFromUi(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    if-eqz v0, :cond_mac_cfg

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_mac

    :cond_mac_cfg
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_mac
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_key

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    :cond_key
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-eqz v0, :cond_key_cfg

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_key

    :cond_key_cfg
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_key
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_done

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAuthKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_done
    return-void
.end method

"""
    anchor = ".method private static startTest(Landroid/app/Activity;)V"
    text = text.replace(anchor, flush + anchor, 1)
    return text


def patch_sync_helper(text: str) -> str:
    old = """    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingHostReady()V

    goto :goto_5
"""
    new = """    :try_start_ready
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingHostReady()V
    :try_end_ready
    .catch Ljava/lang/Throwable; {:try_start_ready .. :try_end_ready} :catch_ready

    goto :goto_5

    :catch_ready
    move-exception v0

    const-string v1, "WearableSyncHelper.onTrainingHostReady"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
"""
    if ":try_start_ready" in text or "WearableSyncHelper.onTrainingHostReady" in text:
        return text
    if old not in text:
        return text
    return text.replace(old, new, 1)


def main() -> int:
    patches = [
        (SMALI / "NotifyWearableBridge$DirectBleListener.smali", patch_direct_ble_listener),
        (SMALI / "NotifyWearableBridge.smali", patch_notify_bridge),
        (SMALI / "WearableSettingsSection.smali", patch_settings_section),
        (SMALI / "WearableSyncHelper.smali", patch_sync_helper),
    ]
    for path, fn in patches:
        original = path.read_text(encoding="utf-8")
        updated = fn(original)
        if updated != original:
            path.write_text(updated, encoding="utf-8")
            print(f"patched {path.relative_to(ROOT)}")
        else:
            print(f"unchanged {path.relative_to(ROOT)}")
    print("apply-wearable-settings-connect: OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
