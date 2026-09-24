#!/usr/bin/env python3
"""Local-only mode: users, programs, history and suits without xemsplus cloud sync.

- MainFragment.initData: XemsLocalStore.bootstrapOnline, with or without network
- MainFragment.initUsers / initTrainPrograms: unchanged; they go through ApiMgr (below)
- ApiMgr: customers, programs and training history answered by XemsLocalApi (the tablet),
  so no screen can pull the cloud list over the local one. In the admin setup (0123) the
  customer and program lists ask the cloud once after start and merge into the tablet's
- EditUserPersonalDataDialog$6: local user save at :cond_a
- EditUserProgramDataDialog$10$1: local program save (skip network branch)
- Connect dialogs (both): allowed suits only after the admin setup, pair on BLE connect,
  auto-select first program
- DeviceAdapter.discoverDevice (both): show suits found over BLE (any in setup, allowed after)
- SettingFragment: XemsLocalSection + activity result forwarding
"""

from __future__ import annotations

import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
SMALI = DECOMPILED / "smali_classes2/com/isaigu/gymapp"
MAIN = SMALI / "fragment/MainFragment.smali"
EDIT_USER = SMALI / "dialog/EditUserPersonalDataDialog$6.smali"
EDIT_PROG = SMALI / "dialog/EditUserProgramDataDialog$10$1.smali"
NEW_CONNECT = SMALI / "dialog/NewUserProgramDeviceConnectDialogFragment.smali"
OLD_CONNECT = SMALI / "dialog/UserProgramDeviceConnectDialogFragment.smali"
DEVICE_ADAPTERS = (
    SMALI / "dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter.smali",
    SMALI / "dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter.smali",
)
API_MGR = SMALI / "mgr/ApiMgr.smali"
LOCAL_API = "Lcom/isaigu/gymapp/widget/XemsLocalApi;"
CB = "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;"
# ApiMgr method (name, smali params) -> XemsLocalApi method of the same name and parameters.
# Methods in API_MAYBE_CLOUD return a callback: null = answered by the tablet, else the cloud
# request goes on with that callback (admin setup sync).
API_MAYBE_CLOUD = ("getUserCustomers", "getUserProgramTrainDataList")
API_REDIRECTS = (
    ("getUserCustomers", "J" + CB),
    ("getUserBindMachine", "J" + CB),
    ("getUserProgramTrainDataList", "J" + CB),
    ("addProgramTrainData", "Lcom/isaigu/gymapp/bean/TrainProgram;" + CB),
    ("updateProgramTrainData", "Lcom/isaigu/gymapp/bean/TrainProgram;" + CB),
    ("deleteProgramTrainData", "JJ" + CB),
    ("addTrainRecord", "Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;" + CB),
    ("addTrainRecordList", "Ljava/util/List;" + CB),
    ("getTrainRecordList", "J" + CB),
)
SETTING = SMALI / "fragment/SettingFragment.smali"
SRC = ROOT / "branding" / "smali" / "widget"
DEST = SMALI / "widget"

BOOTSTRAP = "Lcom/isaigu/gymapp/widget/XemsLocalStore;->bootstrapOnline(Lcom/isaigu/gymapp/fragment/MainFragment;)V"
LOCAL_SECTION_ATTACH = (
    "\n    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;"
    "->attach(Landroid/app/Activity;Landroid/view/View;)V\n"
)
LOCAL_SECTION_RESULT = (
    "    invoke-static {v1, p1, p2, p3}, Lcom/isaigu/gymapp/widget/XemsLocalSection;"
    "->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z\n\n"
)
THEME_HOOK = (
    "    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;"
    "->bindThemeSwitch(Landroid/app/Activity;Landroid/view/View;)V\n"
)
LICENSE_HOOK = (
    "\n    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;"
    "->attach(Landroid/app/Activity;Landroid/view/View;)V\n"
)


def install_smali() -> None:
    files = sorted(SRC.glob("XemsLocal*.smali"))
    if not files:
        raise SystemExit("Missing branding/smali/widget/XemsLocal*.smali — run compile-xems-local-java.sh")
    DEST.mkdir(parents=True, exist_ok=True)
    for f in files:
        shutil.copy2(f, DEST / f.name)
    print(f"installed XemsLocal ({len(files)} files)")


def patch_main_always_local() -> None:
    """initData takes the local path with or without network (the old offline branch is dead)."""
    text = MAIN.read_text(encoding="utf-8")
    body_start = text.index(".method private initData()V")
    body_end = text.index(".end method", body_start)
    body = text[body_start:body_end]
    old = """    invoke-static {v0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4"""
    new = """    invoke-static {v0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    goto :cond_4"""
    if new in body:
        print("MainFragment.initData: already local without network")
        return
    if old not in body:
        raise SystemExit("MainFragment.initData: network check not found")
    body = body.replace(old, new, 1)
    MAIN.write_text(text[:body_start] + body + text[body_end:], encoding="utf-8")
    print("MainFragment.initData: local with or without network")


def patch_main_init_data() -> None:
    text = MAIN.read_text(encoding="utf-8")
    anchor = "    :cond_4\n    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;"
    if "XemsLocalStore;->bootstrapOnline" in text:
        print("MainFragment.initData: bootstrap already patched")
        return
    if anchor not in text:
        raise SystemExit("MainFragment.initData: :cond_4 anchor not found")
    replacement = f"""    :cond_4
    invoke-static {{p0}}, {BOOTSTRAP}

    return-void

    .line 204
    invoke-static {{}}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;"""
    MAIN.write_text(text.replace(anchor, replacement, 1), encoding="utf-8")
    print("MainFragment.initData: cloud bootstrap replaced with local")


def patch_user_save() -> None:
    text = EDIT_USER.read_text(encoding="utf-8")
    hook = "Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUser"
    if hook in text:
        print("EditUserPersonalDataDialog$6: already local save")
        return
    anchor = """    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$1000(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Z

    move-result v0

    const-string v1, "file_name_user_data"

    const/16 v2, 0x67

    if-eqz v0, :cond_d"""
    replacement = """    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$1000(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Z

    move-result v1

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUser(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->finishUserDialog(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    return-void

    const-string v1, "file_name_user_data"

    const/16 v2, 0x67

    if-eqz v1, :cond_d"""
    if anchor not in text:
        raise SystemExit("EditUserPersonalDataDialog$6: :cond_a anchor not found")
    EDIT_USER.write_text(text.replace(anchor, replacement, 1), encoding="utf-8")
    print("EditUserPersonalDataDialog$6: local user save")


def patch_program_save() -> None:
    text = EDIT_PROG.read_text(encoding="utf-8")
    if "XemsLocalStore;->saveProgram" in text:
        print("EditUserProgramDataDialog$10$1: already local save")
        return
    anchor = """    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 514
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5"""
    replacement = """    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 514
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveProgram(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/lang/String;)V

    return-void

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5"""
    if anchor not in text:
        raise SystemExit("EditUserProgramDataDialog$10$1: network check not found")
    EDIT_PROG.write_text(text.replace(anchor, replacement, 1), encoding="utf-8")
    print("EditUserProgramDataDialog$10$1: local program save")


def patch_connect_dialog(path: Path, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    changed = False

    device_anchor = """    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/"""
    # filter after deviceBeans clone
    old = path.name.replace(".smali", "")
    pkg = old
    clone_anchor = f"""    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/{pkg};->deviceBeans:Ljava/util/List;

    .line """
    if "XemsLocalStore;->filterDevices" not in text:
        idx = text.find(clone_anchor)
        if idx < 0:
            raise SystemExit(f"{label}: deviceBeans clone anchor not found")
        line_end = text.find("invoke-direct {p0}", idx)
        if line_end < 0:
            raise SystemExit(f"{label}: initData call after deviceBeans not found")
        init_end = text.find("\n", text.find("initData()V", line_end))
        old_block = text[idx:init_end]
        filter_block = f"""    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/{pkg};->deviceBeans:Ljava/util/List;

    invoke-virtual {{p0}}, Lcom/isaigu/gymapp/dialog/{pkg};->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/{pkg};->deviceBeans:Ljava/util/List;

    invoke-static {{v2, v1}}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->filterDevices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/{pkg};->deviceBeans:Ljava/util/List;

""" + text[line_end:init_end]
        text = text.replace(old_block, filter_block, 1)
        changed = True

    prog_hook = f"""    invoke-direct {{p0}}, Lcom/isaigu/gymapp/dialog/{pkg};->initListener()V"""
    if "autoSelectFirstProgram" not in text and prog_hook in text:
        auto = f"""    invoke-static {{p0}}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->autoSelectFirstProgram(Ljava/lang/Object;)V

    invoke-direct {{p0}}, Lcom/isaigu/gymapp/dialog/{pkg};->initListener()V"""
        text = text.replace(prog_hook, auto, 1)
        changed = True

    # Every place the dialog hands a connected suit to the training screen: remember it.
    if "onDeviceConnected(Ljava/lang/String;)V" not in text:
        wrap = re.compile(
            r"^(    iput-object (v\d+), v\d+, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;"
            r"->macAddress:Ljava/lang/String;\n)",
            re.M,
        )
        text, n = wrap.subn(
            lambda m: m.group(1) + "\n    invoke-static {" + m.group(2) + "}, "
            "Lcom/isaigu/gymapp/widget/XemsLocalStore;->onDeviceConnected(Ljava/lang/String;)V\n",
            text,
        )
        if n == 0:
            raise SystemExit(f"{label}: connected-suit hand-over not found")
        changed = True

    if changed:
        path.write_text(text, encoding="utf-8")
        print(f"{label}: device filter + pairing hooks")
    else:
        print(f"{label}: already patched")


def patch_device_adapter(path: Path) -> None:
    text = path.read_text(encoding="utf-8")
    if "XemsLocalStore;->onDiscovered" in text:
        print(f"{path.stem}: already patched")
        return
    anchor = """    .end local v0    # "i":I
    :cond_3
    :goto_1
    monitor-exit p0

    return-void"""
    # discoverDevice runs on the BLE thread holding the adapter's monitor: only hand the find
    # over (the list changes on the main thread), inside a catch-all so the monitor is released.
    replacement = """    .end local v0    # "i":I
    :cond_3
    :try_start_xems
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->onDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_xems
    .catchall {:try_start_xems .. :try_end_xems} :catchall_0

    :goto_1
    monitor-exit p0

    return-void"""
    if anchor not in text:
        raise SystemExit(f"{path.stem}: cond_3 anchor not found")
    path.write_text(text.replace(anchor, replacement, 1), encoding="utf-8")
    print(f"{path.stem}: BLE discovery (any suit in setup, allowed ones after)")


def patch_device_scan_timeout(path: Path) -> None:
    """When BLE freshness expires, remove the suit from the list (not just gray it out)."""
    text = path.read_text(encoding="utf-8")
    if "XemsLocalStore;->onScanLost" in text:
        print(f"{path.stem}: scan timeout already patched")
        return
    sign_clear = "    iput-object v3, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;"
    sign_idx = text.find(sign_clear)
    if sign_idx < 0:
        raise SystemExit(f"{path.stem}: connectedSign clear not found")
    start = text.rfind("    if-eqz v2, :cond_0\n", max(0, sign_idx - 1200), sign_idx)
    if start < 0:
        raise SystemExit(f"{path.stem}: scan-timeout if-eqz not found")
    goto = text.find("\n    goto :goto_1\n", sign_idx)
    if goto < 0:
        raise SystemExit(f"{path.stem}: goto_1 after scan timeout not found")
    chunk = text[start:sign_idx]
    m = re.search(
        r"iget-object v2, p0, (Lcom/isaigu/gymapp/dialog/[^;]+;\->this\$1:[^;]+;)",
        chunk,
    )
    if not m:
        raise SystemExit(f"{path.stem}: DeviceAdapter$1 field ref not found")
    owner = m.group(1).split("->this$1:")[0]
    adapter_type = m.group(1).split("->this$1:")[1]
    replacement = f"""    if-eqz v2, :cond_0

    iget-object v2, p0, {owner}->this$1:{adapter_type}

    iget-object v3, p0, {owner}->val$address:Ljava/lang/String;

    invoke-static {{v2, v3}}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->onScanLost(Ljava/lang/Object;Ljava/lang/String;)V
"""
    text = text[:start] + replacement + text[goto:]
    path.write_text(text, encoding="utf-8")
    print(f"{path.stem}: remove suit when out of BT range")


def patch_api_mgr() -> None:
    """Jump at the top of each cloud call to the same call in XemsLocalApi."""
    text = API_MGR.read_text(encoding="utf-8")
    for name, params in API_REDIRECTS:
        head = f".method public static {name}({params})V"
        start = text.find(head)
        if start < 0:
            raise SystemExit(f"ApiMgr.{name}: method not found")
        end = text.index(".end method", start)
        body = text[start:end]
        target = f"{LOCAL_API}->{name}({params})V"
        if f"{LOCAL_API}->{name}(" in body:
            print(f"ApiMgr.{name}: already local")
            continue
        # p-registers of a static method: J takes two.
        n = 0
        for t in re.findall(r"J|D|L[^;]+;|\[?[ZBSCIF]", params):
            n += 2 if t in ("J", "D") else 1
        regs = ", ".join(f"p{i}" for i in range(n))
        first_line = body.index("    .line ")
        if name in API_MAYBE_CLOUD:
            cb_reg = f"p{n - 1}"
            target = f"{LOCAL_API}->{name}({params}){CB}"
            jump = (
                f"    invoke-static {{{regs}}}, {target}\n\n"
                f"    move-result-object {cb_reg}\n\n"
                f"    if-nez {cb_reg}, :xems_cloud\n\n"
                f"    return-void\n\n"
                f"    :xems_cloud\n"
            )
        else:
            jump = f"    invoke-static {{{regs}}}, {target}\n\n    return-void\n\n"
        body = body[:first_line] + jump + body[first_line:]
        text = text[:start] + body + text[end:]
        print(f"ApiMgr.{name}: answered by the tablet")
    API_MGR.write_text(text, encoding="utf-8")


def patch_settings() -> None:
    text = SETTING.read_text(encoding="utf-8")
    if "XemsLocalSection;->attach" in text:
        print("SettingFragment: local section already hooked")
    else:
        hook_point = LICENSE_HOOK if LICENSE_HOOK.strip() in text else THEME_HOOK
        if hook_point not in text:
            raise SystemExit("SettingFragment: settings hook not found")
        text = text.replace(hook_point, hook_point + LOCAL_SECTION_ATTACH, 1)
        SETTING.write_text(text, encoding="utf-8")
        print("SettingFragment: XemsLocalSection attached")

    text = SETTING.read_text(encoding="utf-8")
    if "XemsLocalSection;->onActivityResult" in text:
        print("SettingFragment: activity result already hooked")
        return
    anchor = """.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 580
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6"""
    replacement = """.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 580
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6"""
    if anchor not in text:
        raise SystemExit("SettingFragment.onActivityResult anchor not found")
    SETTING.write_text(text.replace(anchor, replacement, 1), encoding="utf-8")
    print("SettingFragment: activity result forwarding")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh", file=sys.stderr)
        return 1
    install_smali()
    patch_main_always_local()
    patch_main_init_data()
    patch_user_save()
    patch_program_save()
    patch_connect_dialog(NEW_CONNECT, "NewUserProgramDeviceConnectDialogFragment")
    patch_connect_dialog(OLD_CONNECT, "UserProgramDeviceConnectDialogFragment")
    for adapter in DEVICE_ADAPTERS:
        patch_device_adapter(adapter)
    for adapter in DEVICE_ADAPTERS:
        timeout = adapter.parent / (adapter.stem + "$1.smali")
        patch_device_scan_timeout(timeout)
    patch_api_mgr()
    patch_settings()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
