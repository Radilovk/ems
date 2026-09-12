#!/usr/bin/env python3
"""Remove all demo-mode smali patches and UI hooks from the decompiled APK."""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
SMALI_DIR = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp"
UTILS_DIR = SMALI_DIR / "utils"


def _replace(path: Path, old: str, new: str, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    if old not in text:
        if new in text or "DemoUtils" not in text:
            print(f"{label}: already clean")
            return
        raise RuntimeError(f"{label}: marker not found in {path.name}")
    path.write_text(text.replace(old, new, 1), encoding="utf-8")
    print(f"{label}: removed")


def strip_base_activity() -> None:
    path = SMALI_DIR / "BaseActivity.smali"
    _replace(
        path,
        "\n\n    invoke-static {p0}, Lcom/isaigu/gymapp/utils/DemoUtils;"
        "->applyStoredDemoMode(Landroid/content/Context;)V\n\n",
        "\n\n",
        "BaseActivity.applyStoredDemoMode",
    )


def strip_setting_fragment() -> None:
    path = SMALI_DIR / "fragment" / "SettingFragment.smali"
    _replace(
        path,
        "\n\n    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;"
        "->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;\n\n"
        "    move-result-object v1\n\n"
        "    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/DemoUtils;"
        "->bindDemoSwitch(Landroid/app/Activity;Landroid/view/View;)V\n\n",
        "\n\n",
        "SettingFragment.bindDemoSwitch",
    )


def strip_connect_fragment() -> None:
    path = SMALI_DIR / "dialog" / "NewUserProgramDeviceConnectDialogFragment.smali"
    _replace(
        path,
        "\n\n    invoke-static {v1}, Lcom/isaigu/gymapp/utils/DemoUtils;"
        "->ensureDemoDeviceInList(Ljava/util/List;)V\n\n",
        "\n\n",
        "connect dialog ensureDemoDeviceInList",
    )


def strip_connect_ok_loading() -> None:
    path = SMALI_DIR / "dialog" / "NewUserProgramDeviceConnectDialogFragment$4.smali"
    old = """    .line 391
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
    new = """    .line 391
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x67

    invoke-direct {v0, v2, v1}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V"""
    _replace(path, old, new, "connect dialog OK loading")


def strip_ble_manager() -> None:
    path = SMALI_DIR / "train" / "ble" / "BleDeviceManager.smali"
    text = path.read_text(encoding="utf-8")

    demo_prefix = (
        "    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z\n\n"
        "    move-result v0\n\n"
    )

    blocks = (
        (
            demo_prefix + "    if-nez v0, :cond_demo_connect_dev\n\n",
            "",
            "BleDeviceManager.connect(BleDevice) guard",
        ),
        (
            "\n\n    :cond_demo_connect_dev\n"
            "    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;\n\n"
            "    move-result-object v0\n\n"
            "    invoke-static {v0}, Lcom/isaigu/gymapp/utils/DemoUtils;"
            "->simulateConnectByMac(Ljava/lang/String;)V\n\n"
            "    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->decreaseConnect()V\n\n"
            "    return-void",
            "",
            "BleDeviceManager.connect(BleDevice) demo body",
        ),
        (
            demo_prefix + "    if-nez v0, :cond_demo_connect_str\n\n",
            "",
            "BleDeviceManager.connect(String) guard",
        ),
        (
            "\n\n    :cond_demo_connect_str\n"
            "    invoke-static {p0}, Lcom/isaigu/gymapp/utils/DemoUtils;"
            "->simulateConnectByMac(Ljava/lang/String;)V\n\n"
            "    return-void",
            "",
            "BleDeviceManager.connect(String) demo body",
        ),
        (
            demo_prefix + "    if-nez v0, :cond_demo_write_end\n\n",
            "",
            "BleDeviceManager.write guard",
        ),
        (
            "\n\n    :cond_demo_write_end\n"
            "    if-eqz p2, :cond_demo_write_done\n\n"
            "    invoke-static {p2, p1}, Lcom/isaigu/gymapp/utils/DemoUtils;"
            "->simulateWriteSuccess(Lcom/clj/fastble/callback/BleWriteCallback;[B)V\n\n"
            "    :cond_demo_write_done\n"
            "    return-void",
            "",
            "BleDeviceManager.write demo body",
        ),
        (
            demo_prefix + "    if-nez v0, :cond_demo_notify_end\n\n",
            "",
            "BleDeviceManager.notify guard",
        ),
        (
            "\n\n    :cond_demo_notify_end\n"
            "    if-eqz p1, :cond_demo_notify_done\n\n"
            "    invoke-static {p1}, Lcom/isaigu/gymapp/utils/DemoUtils;"
            "->simulateNotifySuccess(Lcom/clj/fastble/callback/BleNotifyCallback;)V\n\n"
            "    :cond_demo_notify_done\n"
            "    return-void",
            "",
            "BleDeviceManager.notify demo body",
        ),
    )

    changed = False
    for old, new, label in blocks:
        if old in text:
            text = text.replace(old, new, 1)
            print(f"{label}: removed")
            changed = True
        elif label.endswith("guard") or label.endswith("demo body"):
            print(f"{label}: already clean")

    if "DemoUtils" in text:
        raise RuntimeError("BleDeviceManager still references DemoUtils after strip")

    if changed:
        path.write_text(text, encoding="utf-8")


def strip_android_ble_controller() -> None:
    path = SMALI_DIR / "ble" / "AndroidBleController.smali"
    text = path.read_text(encoding="utf-8")

    is_connected_old = """    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z

    move-result v0

    if-eqz v0, :cond_real_is_connected

    invoke-static {p1}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoMac(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_real_is_connected
    """
    connect_old = """    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z

    move-result v0

    if-eqz v0, :cond_real_connect_by_address

    invoke-static {p1}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_real_connect_by_address

    const/4 v0, 0x1

    return v0

    :cond_real_connect_by_address
    """

    if is_connected_old in text:
        text = text.replace(is_connected_old, "", 1)
        print("AndroidBleController.isConnected: removed")
    if connect_old in text:
        text = text.replace(connect_old, "", 1)
        print("AndroidBleController.connectByAddress: removed")

    if "DemoUtils" in text:
        raise RuntimeError("AndroidBleController still references DemoUtils after strip")

    path.write_text(text, encoding="utf-8")


def delete_demo_smali() -> None:
    for name in (
        "DemoUtils.smali",
        "DemoUtils$DemoSwitchListener.smali",
        "DemoBleDevice.smali",
    ):
        path = UTILS_DIR / name
        if path.exists():
            path.unlink()
            print(f"deleted {name}")


def main() -> None:
    strip_base_activity()
    strip_setting_fragment()
    strip_connect_fragment()
    strip_connect_ok_loading()
    strip_ble_manager()
    strip_android_ble_controller()
    delete_demo_smali()
    print("Demo mode fully removed.")


if __name__ == "__main__":
    main()
