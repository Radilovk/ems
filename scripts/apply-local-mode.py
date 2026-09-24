#!/usr/bin/env python3
"""Local-only mode: users, programs, history and suits without xemsplus cloud sync.

- MainFragment.initData: XemsLocalStore.bootstrapOnline, with or without network
- MainFragment.initUsers / initTrainPrograms: load local lists only
- ApiMgr: customers, programs and training history answered by XemsLocalApi (the tablet),
  so no screen can pull the cloud list over the local one
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
# ApiMgr method (name, smali params) -> XemsLocalApi method of the same name and signature.
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
LOAD_USERS = "Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadUsers()V"
LOAD_PROGRAMS = "Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadPrograms()V"
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


def patch_init_users() -> None:
    text = MAIN.read_text(encoding="utf-8")
    old = f""".method private initUsers()V
    .locals 3

    .line 286
    invoke-static {{}}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$5;

    invoke-direct {{v2, p0}}, Lcom/isaigu/gymapp/fragment/MainFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {{v0, v1, v2}}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserCustomers(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 298
    return-void
.end method"""
    new = f""".method private initUsers()V
    .locals 0

    .line 286
    invoke-static {{}}, {LOAD_USERS}

    .line 298
    const/16 v0, 0x69

    invoke-static {{v0}}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    return-void
.end method"""
    users_body = text.split(".method private initUsers()V", 1)[-1].split(".end method")[0]
    if LOAD_USERS in users_body:
        print("MainFragment.initUsers: already local")
        return
    if old not in text:
        raise SystemExit("MainFragment.initUsers block not found")
    MAIN.write_text(text.replace(old, new, 1), encoding="utf-8")
    print("MainFragment.initUsers: local only")


def patch_init_programs() -> None:
    text = MAIN.read_text(encoding="utf-8")
    old = f""".method private initTrainPrograms()V
    .locals 3

    .line 361
    invoke-static {{}}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$9;

    invoke-direct {{v2, p0}}, Lcom/isaigu/gymapp/fragment/MainFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {{v0, v1, v2}}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserProgramTrainDataList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 373
    return-void
.end method"""
    new = f""".method private initTrainPrograms()V
    .locals 1

    .line 361
    invoke-static {{}}, {LOAD_PROGRAMS}

    .line 373
    const/16 v0, 0x6a

    invoke-static {{v0}}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    return-void
.end method"""
    prog_body = text.split(".method private initTrainPrograms()V", 1)[-1].split(".end method")[0]
    if LOAD_PROGRAMS in prog_body:
        print("MainFragment.initTrainPrograms: already local")
        return
    if old not in text:
        raise SystemExit("MainFragment.initTrainPrograms block not found")
    MAIN.write_text(text.replace(old, new, 1), encoding="utf-8")
    print("MainFragment.initTrainPrograms: local only")


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
    if "addDiscoveredDevice" in text:
        print(f"{path.stem}: already patched")
        return
    cls = "Lcom/isaigu/gymapp/dialog/" + path.stem + ";"
    anchor = """    .end local v0    # "i":I
    :cond_3
    :goto_1
    monitor-exit p0

    return-void"""
    replacement = f"""    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, {cls}->list:Ljava/util/List;

    invoke-static {{v0, p1, p2}}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->addDiscoveredDevice(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :goto_1

    invoke-direct {{p0, p1}}, {cls}->start_mac_address_timer(Ljava/lang/String;)V

    invoke-virtual {{p0}}, {cls}->notifyDataSetChanged()V

    :goto_1
    monitor-exit p0

    return-void"""
    if anchor not in text:
        raise SystemExit(f"{path.stem}: cond_3 anchor not found")
    path.write_text(text.replace(anchor, replacement, 1), encoding="utf-8")
    print(f"{path.stem}: BLE discovery (any suit in setup, allowed ones after)")


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
        if target in body:
            print(f"ApiMgr.{name}: already local")
            continue
        # p-registers of a static method: J takes two.
        n = 0
        for t in re.findall(r"J|D|L[^;]+;|\[?[ZBSCIF]", params):
            n += 2 if t in ("J", "D") else 1
        regs = ", ".join(f"p{i}" for i in range(n))
        first_line = body.index("    .line ")
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
    patch_init_users()
    patch_init_programs()
    patch_user_save()
    patch_program_save()
    patch_connect_dialog(NEW_CONNECT, "NewUserProgramDeviceConnectDialogFragment")
    patch_connect_dialog(OLD_CONNECT, "UserProgramDeviceConnectDialogFragment")
    for adapter in DEVICE_ADAPTERS:
        patch_device_adapter(adapter)
    patch_api_mgr()
    patch_settings()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
