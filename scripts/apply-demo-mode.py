#!/usr/bin/env python3
"""Install BLE demo mode for training screen testing without hardware."""

import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING = ROOT / "branding"
SMALI_DIR = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp"
BLE_MANAGER = SMALI_DIR / "train" / "ble" / "BleDeviceManager.smali"
BASE_ACTIVITY = SMALI_DIR / "BaseActivity.smali"
SETTING_FRAGMENT = SMALI_DIR / "fragment" / "SettingFragment.smali"
CONNECT_FRAGMENT = SMALI_DIR / "dialog" / "NewUserProgramDeviceConnectDialogFragment.smali"

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
    for name in ("DemoUtils.smali", "DemoUtils$DemoSwitchListener.smali"):
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

    if-eqz v0, :cond_demo_connect_str

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

    if-eqz v0, :cond_demo_connect_dev

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

    if-eqz v0, :cond_demo_write_end

    .line 316
    invoke-static {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->getConfig(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;"""
    end_marker = """    .line 318
    return-void
.end method"""
    end_inject = """    .line 318
    return-void

    :cond_demo_write_end
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
    patch_demo_strings()
    print("Demo mode installed.")


if __name__ == "__main__":
    main()
