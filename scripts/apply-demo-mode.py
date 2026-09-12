#!/usr/bin/env python3
"""Install BLE demo mode for training screen testing without hardware."""

import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING = ROOT / "branding"
SMALI_DIR = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp"
BLE_MANAGER = SMALI_DIR / "train" / "ble" / "BleDeviceManager.smali"
BLE_CONTROLLER = SMALI_DIR / "ble" / "AndroidBleController.smali"
BASE_ACTIVITY = SMALI_DIR / "BaseActivity.smali"
SETTING_FRAGMENT = SMALI_DIR / "fragment" / "SettingFragment.smali"
CONNECT_FRAGMENT = SMALI_DIR / "dialog" / "NewUserProgramDeviceConnectDialogFragment.smali"
CONNECT_OK_LISTENER = SMALI_DIR / "dialog" / "NewUserProgramDeviceConnectDialogFragment$4.smali"

DEMO_BIND_CALL = (
    "    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;"
    "->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;\n\n"
    "    move-result-object v1\n\n"
    "    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/DemoUtils;"
    "->bindDemoSwitch(Landroid/app/Activity;Landroid/view/View;)V\n\n"
)

CONNECT_STRING_INJECT = (
    "    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/"
    "NewUserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;\n\n"
    "    invoke-static {v1}, Lcom/isaigu/gymapp/utils/DemoUtils;"
    "->ensureDemoDeviceInList(Ljava/util/List;)V\n\n"
    "    .line 129\n"
    "    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/"
    "NewUserProgramDeviceConnectDialogFragment;->initData()V"
)

EVENTBUS_REGISTER_BLOCK = (
    "    .line 192\n"
    "    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;\n\n"
    "    move-result-object v1\n\n"
    "    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V"
)

START_SCAN_SIMULATE_INJECT = (
    "NewUserProgramDeviceConnectDialogFragment;->startScan()V\n\n"
    "    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/"
    "NewUserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/"
    "NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;\n\n"
    "    invoke-static {v1}, Lcom/isaigu/gymapp/utils/DemoUtils;"
    "->simulateDeviceDiscover(Lcom/isaigu/gymapp/dialog/"
    "NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;)V\n\n"
)

START_SCAN_MARKER = (
    "NewUserProgramDeviceConnectDialogFragment;->startScan()V\n\n" + EVENTBUS_REGISTER_BLOCK
)


def install_smali_files() -> None:
    utils_dir = SMALI_DIR / "utils"
    utils_dir.mkdir(parents=True, exist_ok=True)
    for name in ("DemoUtils.smali", "DemoUtils$DemoSwitchListener.smali", "DemoBleDevice.smali"):
        shutil.copy2(BRANDING / "smali" / name, utils_dir / name)
        print(f"installed {name}")


def patch_base_activity() -> None:
    text = BASE_ACTIVITY.read_text(encoding="utf-8")
    marker = (
        "invoke-static {p0}, Lcom/isaigu/gymapp/utils/ThemeUtils;"
        "->applyStoredNightMode(Landroid/content/Context;)V"
    )
    inject = (
        f"{marker}\n\n"
        "    invoke-static {p0}, Lcom/isaigu/gymapp/utils/DemoUtils;"
        "->applyStoredDemoMode(Landroid/content/Context;)V"
    )
    if "DemoUtils;->applyStoredDemoMode" not in text:
        if marker not in text:
            raise RuntimeError("BaseActivity theme marker not found for demo patch")
        text = text.replace(marker, inject, 1)
        BASE_ACTIVITY.write_text(text, encoding="utf-8")
        print("patched BaseActivity.applyStoredDemoMode")
    else:
        print("BaseActivity already applies demo mode")


def patch_setting_fragment_bind() -> None:
    text = SETTING_FRAGMENT.read_text(encoding="utf-8")
    if "DemoUtils;->bindDemoSwitch" in text:
        print("SettingFragment already binds demo switch")
        return
    marker = (
        "    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;"
        "->bindThemeSwitch(Landroid/app/Activity;Landroid/view/View;)V\n\n"
        "    .line 143\n"
        "    return-object v0\n.end method"
    )
    replacement = (
        "    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;"
        "->bindThemeSwitch(Landroid/app/Activity;Landroid/view/View;)V\n\n"
        f"{DEMO_BIND_CALL}"
        "    .line 143\n"
        "    return-object v0\n.end method"
    )
    if marker not in text:
        raise RuntimeError("SettingFragment.onCreateView demo bind marker not found")
    text = text.replace(marker, replacement, 1)
    SETTING_FRAGMENT.write_text(text, encoding="utf-8")
    print("patched SettingFragment.bindDemoSwitch")


def patch_connect_fragment() -> None:
    text = CONNECT_FRAGMENT.read_text(encoding="utf-8")
    old = (
        "    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/"
        "NewUserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;\n\n"
        "    .line 129\n"
        "    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/"
        "NewUserProgramDeviceConnectDialogFragment;->initData()V"
    )
    if "DemoUtils;->ensureDemoDeviceInList" not in text:
        if old not in text:
            raise RuntimeError("connect dialog deviceBeans marker not found")
        text = text.replace(old, CONNECT_STRING_INJECT, 1)
        print("patched connect dialog ensureDemoDeviceInList")
    else:
        print("connect dialog ensureDemoDeviceInList already patched")

    broken_scan = (
        "    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/    .line 192\n"
        "    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;"
    )
    fixed_scan = (
        "    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/"
        "NewUserProgramDeviceConnectDialogFragment;->startScan()V\n\n"
        "    .line 192\n"
        "    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;"
    )
    if broken_scan in text:
        text = text.replace(broken_scan, fixed_scan, 1)
        print("repaired broken connect dialog startScan block")
    elif START_SCAN_SIMULATE_INJECT in text:
        text = text.replace(START_SCAN_SIMULATE_INJECT, "", 1)
        print("removed unsafe connect dialog simulateDeviceDiscover call")
    elif "DemoUtils;->simulateDeviceDiscover" in text:
        raise RuntimeError("unexpected simulateDeviceDiscover patch variant in connect dialog")

    CONNECT_FRAGMENT.write_text(text, encoding="utf-8")


def patch_ble_connect_string() -> None:
    text = BLE_MANAGER.read_text(encoding="utf-8")
    marker = """.method public static connect(Ljava/lang/String;)V
    .locals 2
    .param p0, "mac"    # Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;"""
    inject = """.method public static connect(Ljava/lang/String;)V
    .locals 2
    .param p0, "mac"    # Ljava/lang/String;

    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z

    move-result v0

    if-nez v0, :cond_demo_connect_str

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;"""
    if "cond_demo_connect_str" not in text:
        if marker not in text:
            raise RuntimeError("BleDeviceManager.connect(String) marker not found")
        text = text.replace(marker, inject, 1)

    return_marker = """    .line 238
    return-void
.end method

.method private static connectAll(Ljava/util/List;)V"""
    return_inject = """    .line 238
    return-void

    :cond_demo_connect_str
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/DemoUtils;->simulateConnectByMac(Ljava/lang/String;)V

    return-void
.end method

.method private static connectAll(Ljava/util/List;)V"""
    if ":cond_demo_connect_str" in text and "simulateConnectByMac" not in text:
        if return_marker not in text:
            raise RuntimeError("BleDeviceManager.connect(String) return marker not found")
        text = text.replace(return_marker, return_inject, 1)
        print("patched BleDeviceManager.connect(String)")
    elif "simulateConnectByMac" in text:
        print("BleDeviceManager.connect(String) already patched")

    BLE_MANAGER.write_text(text, encoding="utf-8")


def patch_ble_connect_device() -> None:
    text = BLE_MANAGER.read_text(encoding="utf-8")
    marker = """.method public static connect(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 207
    sget v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I"""
    inject = """.method public static connect(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z

    move-result v0

    if-nez v0, :cond_demo_connect_dev

    .line 207
    sget v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I"""
    if "cond_demo_connect_dev" not in text:
        if marker not in text:
            raise RuntimeError("BleDeviceManager.connect(BleDevice) marker not found")
        text = text.replace(marker, inject, 1)

    return_marker = """    .line 210
    return-void
.end method

.method public static connect(Ljava/lang/String;)V"""
    return_inject = """    .line 210
    return-void

    :cond_demo_connect_dev
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/DemoUtils;->simulateConnectByMac(Ljava/lang/String;)V

    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->decreaseConnect()V

    return-void
.end method

.method public static connect(Ljava/lang/String;)V"""
    already_patched = (
        ":cond_demo_connect_dev\n"
        "    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;"
    ) in text
    if not already_patched:
        if return_marker not in text:
            raise RuntimeError("BleDeviceManager.connect(BleDevice) return marker not found")
        text = text.replace(return_marker, return_inject, 1)
        print("patched BleDeviceManager.connect(BleDevice)")
    else:
        print("BleDeviceManager.connect(BleDevice) already patched")

    BLE_MANAGER.write_text(text, encoding="utf-8")


def patch_ble_write() -> None:
    text = BLE_MANAGER.read_text(encoding="utf-8")
    marker = """.method public static write(Lcom/clj/fastble/data/BleDevice;[BLcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 7
    .param p0, "device"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "data"    # [B
    .param p2, "callback"    # Lcom/clj/fastble/callback/BleWriteCallback;

    .line 316
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->getConfig(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;"""
    inject = """.method public static write(Lcom/clj/fastble/data/BleDevice;[BLcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 7
    .param p0, "device"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "data"    # [B
    .param p2, "callback"    # Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z

    move-result v0

    if-nez v0, :cond_demo_write_end

    .line 316
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->getConfig(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;"""
    end_marker = """    .line 318
    return-void
.end method"""
    end_inject = """    .line 318
    return-void

    :cond_demo_write_end
    if-eqz p2, :cond_demo_write_done

    invoke-static {p2, p1}, Lcom/isaigu/gymapp/utils/DemoUtils;->simulateWriteSuccess(Lcom/clj/fastble/callback/BleWriteCallback;[B)V

    :cond_demo_write_done
    return-void
.end method"""
    if "cond_demo_write_end" not in text:
        if marker not in text:
            raise RuntimeError("BleDeviceManager.write marker not found")
        text = text.replace(marker, inject, 1)
        text = text.replace(end_marker, end_inject, 1)
        print("patched BleDeviceManager.write")
    else:
        print("BleDeviceManager.write already patched")

    BLE_MANAGER.write_text(text, encoding="utf-8")


def fix_demo_ble_callbacks() -> None:
    """Upgrade demo write/notify stubs to invoke BLE callbacks."""
    text = BLE_MANAGER.read_text(encoding="utf-8")
    write_old = """    :cond_demo_write_end
    return-void
.end method"""
    write_new = """    :cond_demo_write_end
    if-eqz p2, :cond_demo_write_done

    invoke-static {p2, p1}, Lcom/isaigu/gymapp/utils/DemoUtils;->simulateWriteSuccess(Lcom/clj/fastble/callback/BleWriteCallback;[B)V

    :cond_demo_write_done
    return-void
.end method"""
    notify_old = """    :cond_demo_notify_end
    return-void
.end method

.method private static onDeviceConnected"""
    notify_new = """    :cond_demo_notify_end
    if-eqz p1, :cond_demo_notify_done

    invoke-static {p1}, Lcom/isaigu/gymapp/utils/DemoUtils;->simulateNotifySuccess(Lcom/clj/fastble/callback/BleNotifyCallback;)V

    :cond_demo_notify_done
    return-void
.end method

.method private static onDeviceConnected"""
    changed = False
    if write_old in text and "simulateWriteSuccess" not in text:
        text = text.replace(write_old, write_new, 1)
        changed = True
    if notify_old in text and "simulateNotifySuccess" not in text:
        text = text.replace(notify_old, notify_new, 1)
        changed = True
    if changed:
        BLE_MANAGER.write_text(text, encoding="utf-8")
        print("upgraded demo BLE write/notify callbacks in BleDeviceManager")
    else:
        print("demo BLE write/notify callbacks already upgraded")


def patch_connect_skip_loading() -> None:
    text = CONNECT_OK_LISTENER.read_text(encoding="utf-8")
    marker = """    .line 391
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x67

    invoke-direct {v0, v2, v1}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V"""
    inject = """    .line 391
    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z

    move-result v0

    if-nez v0, :cond_demo_show_loading

    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x67

    invoke-direct {v0, v2, v1}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    :cond_demo_show_loading"""
    if "cond_demo_show_loading" not in text:
        if marker not in text:
            raise RuntimeError("connect dialog OK loading marker not found")
        text = text.replace(marker, inject, 1)
        CONNECT_OK_LISTENER.write_text(text, encoding="utf-8")
        print("patched connect dialog to skip loading overlay in demo mode")
    else:
        print("connect dialog demo loading skip already patched")


def fix_demo_branch_logic() -> None:
    """Correct inverted if-eqz branches from earlier demo patches."""
    text = BLE_MANAGER.read_text(encoding="utf-8")
    fixes = (
        (
            "invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z\n\n"
            "    move-result v0\n\n"
            "    if-eqz v0, :cond_demo_connect_str",
            "invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z\n\n"
            "    move-result v0\n\n"
            "    if-nez v0, :cond_demo_connect_str",
        ),
        (
            "invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z\n\n"
            "    move-result v0\n\n"
            "    if-eqz v0, :cond_demo_connect_dev",
            "invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z\n\n"
            "    move-result v0\n\n"
            "    if-nez v0, :cond_demo_connect_dev",
        ),
        (
            "invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z\n\n"
            "    move-result v0\n\n"
            "    if-eqz v0, :cond_demo_write_end",
            "invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z\n\n"
            "    move-result v0\n\n"
            "    if-nez v0, :cond_demo_write_end",
        ),
        (
            "invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z\n\n"
            "    move-result v0\n\n"
            "    if-eqz v0, :cond_demo_notify_end",
            "invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z\n\n"
            "    move-result v0\n\n"
            "    if-nez v0, :cond_demo_notify_end",
        ),
    )
    changed = False
    for old, new in fixes:
        if old in text:
            text = text.replace(old, new, 1)
            changed = True
    if changed:
        BLE_MANAGER.write_text(text, encoding="utf-8")
        print("fixed inverted demo branch logic in BleDeviceManager")
    else:
        print("demo branch logic already correct")


def patch_ble_notify() -> None:
    text = BLE_MANAGER.read_text(encoding="utf-8")
    marker = """.method public static notify(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleNotifyCallback;)V
    .locals 4
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "callback"    # Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 297
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->getConfig(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;"""
    inject = """.method public static notify(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleNotifyCallback;)V
    .locals 4
    .param p0, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;
    .param p1, "callback"    # Lcom/clj/fastble/callback/BleNotifyCallback;

    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z

    move-result v0

    if-nez v0, :cond_demo_notify_end

    .line 297
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->getConfig(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;"""
    end_marker = """    .line 299
    return-void
.end method

.method private static onDeviceConnected"""
    end_inject = """    .line 299
    return-void

    :cond_demo_notify_end
    if-eqz p1, :cond_demo_notify_done

    invoke-static {p1}, Lcom/isaigu/gymapp/utils/DemoUtils;->simulateNotifySuccess(Lcom/clj/fastble/callback/BleNotifyCallback;)V

    :cond_demo_notify_done
    return-void
.end method

.method private static onDeviceConnected"""
    if "cond_demo_notify_end" not in text:
        if marker not in text:
            raise RuntimeError("BleDeviceManager.notify marker not found")
        text = text.replace(marker, inject, 1)
        text = text.replace(end_marker, end_inject, 1)
        print("patched BleDeviceManager.notify")
    else:
        print("BleDeviceManager.notify already patched")
    BLE_MANAGER.write_text(text, encoding="utf-8")


def patch_android_ble_controller() -> None:
    text = BLE_CONTROLLER.read_text(encoding="utf-8")
    is_connected_marker = """.method public isConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;"""
    is_connected_inject = """.method public isConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z

    move-result v0

    if-eqz v0, :cond_real_is_connected

    invoke-static {p1}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoMac(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_real_is_connected
    .line 759
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;"""
    if "DemoUtils;->isDemoMac" not in text:
        if is_connected_marker not in text:
            raise RuntimeError("AndroidBleController.isConnected marker not found")
        text = text.replace(is_connected_marker, is_connected_inject, 1)
        print("patched AndroidBleController.isConnected")

    connect_marker = """.method public connectByAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;"""
    connect_inject = """.method public connectByAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z

    move-result v0

    if-eqz v0, :cond_real_connect_by_address

    invoke-static {p1}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_real_connect_by_address

    const/4 v0, 0x1

    return v0

    :cond_real_connect_by_address
    .line 385
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;"""
    if "cond_real_connect_by_address" not in text:
        if connect_marker not in text:
            raise RuntimeError("AndroidBleController.connectByAddress marker not found")
        text = text.replace(connect_marker, connect_inject, 1)
        print("patched AndroidBleController.connectByAddress")
    else:
        print("AndroidBleController.connectByAddress already patched")

    BLE_CONTROLLER.write_text(text, encoding="utf-8")


def patch_demo_strings() -> None:
    strings = {
        "values/strings.xml": "Demo mode (simulated device):",
        "values-en/strings.xml": "Demo mode (simulated device):",
        "values-bg/strings.xml": "Демо режим (симулирано устройство):",
    }
    for rel, value in strings.items():
        path = DECOMPILED / "res" / rel
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if 'name="setdemomode"' in text:
            continue
        text = text.replace("</resources>", f'    <string name="setdemomode">{value}</string>\n</resources>')
        path.write_text(text, encoding="utf-8")
        print(f"added setdemomode to {rel}")


def main() -> None:
    install_smali_files()
    patch_base_activity()
    patch_setting_fragment_bind()
    patch_connect_fragment()
    patch_ble_connect_string()
    patch_ble_connect_device()
    patch_ble_write()
    patch_ble_notify()
    fix_demo_branch_logic()
    fix_demo_ble_callbacks()
    patch_connect_skip_loading()
    patch_android_ble_controller()
    patch_demo_strings()
    print("Demo mode installed.")


if __name__ == "__main__":
    main()
