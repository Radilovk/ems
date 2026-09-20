#!/usr/bin/env python3
"""Multi-block segment program: storage, training runner, gear-dialog UI."""

from __future__ import annotations

import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
TRAIN_ITEM_2 = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem$2.smali"
EDIT_DIALOG = DIALOG_DIR / "EditUserProgramDataDialog.smali"
MAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/MainFragment.smali"
MAIN_FRAGMENT_9 = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/MainFragment$9.smali"
LAYOUT = RES / "layout/edit_parameter_dialog.xml"
PUBLIC_XML = RES / "values/public.xml"
IDS_XML = RES / "values/ids.xml"
VALUES_DEFAULT = RES / "values/strings.xml"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
BRANDING_SMALI = ROOT / "branding/smali"

IDS = {
    "segmentProgramSwitch": 0x7F090250,
    "segmentProgramEditBtn": 0x7F090251,
    "segmentProgramSummary": 0x7F090252,
}

STRING_IDS = {
    "segment_program_title": 0x7F0D0140,
    "segment_program_hint": 0x7F0D0141,
    "segment_program_edit": 0x7F0D0142,
    "segment_program_summary": 0x7F0D0143,
    "segment_program_block": 0x7F0D0144,
    "segment_program_cycles": 0x7F0D0145,
    "segment_program_ma": 0x7F0D0146,
    "segment_program_hz": 0x7F0D0147,
    "segment_program_width": 0x7F0D0148,
    "segment_program_on": 0x7F0D0149,
    "segment_program_off": 0x7F0D014A,
    "segment_program_add": 0x7F0D014B,
    "segment_program_remove": 0x7F0D014C,
    "segment_program_done": 0x7F0D014D,
}

SEGMENT_UI = """
                <LinearLayout android:gravity="center_vertical" android:orientation="vertical" android:paddingLeft="5.0dip" android:paddingRight="5.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip">
                    <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content">
                        <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" android:text="@string/segment_program_title" />
                        <Switch android:id="@id/segmentProgramSwitch" android:layout_width="wrap_content" android:layout_height="wrap_content" />
                    </LinearLayout>
                    <TextView android:textSize="12.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="2.0dip" android:text="@string/segment_program_hint" />
                    <TextView android:textSize="13.0sp" android:textColor="@color/text_secondary" android:id="@id/segmentProgramSummary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip" android:text="@string/segment_program_summary" />
                    <Button android:textSize="14.0sp" android:id="@id/segmentProgramEditBtn" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="6.0dip" android:text="@string/segment_program_edit" android:textAllCaps="false" />
                </LinearLayout>
"""

EN_STRINGS = """
    <string name="segment_program_title">Segment program</string>
    <string name="segment_program_hint">Run blocks of cycles with different MA, Hz and pulse timing</string>
    <string name="segment_program_edit">Edit blocks</string>
    <string name="segment_program_summary">%1$d blocks configured</string>
    <string name="segment_program_block">Block %1$d</string>
    <string name="segment_program_cycles">Cycles</string>
    <string name="segment_program_ma">MA</string>
    <string name="segment_program_hz">Hz</string>
    <string name="segment_program_width">Width (ms)</string>
    <string name="segment_program_on">ON (sec)</string>
    <string name="segment_program_off">OFF (sec)</string>
    <string name="segment_program_add">+ Add block</string>
    <string name="segment_program_remove">Remove block</string>
    <string name="segment_program_done">Done</string>
"""

BG_STRINGS = """
    <string name="segment_program_title">Сегментна програма</string>
    <string name="segment_program_hint">Блокове с цикли и различни MA, Hz и импулс</string>
    <string name="segment_program_edit">Редактирай блокове</string>
    <string name="segment_program_summary">%1$d блока</string>
    <string name="segment_program_block">Блок %1$d</string>
    <string name="segment_program_cycles">Цикли</string>
    <string name="segment_program_ma">MA</string>
    <string name="segment_program_hz">Hz</string>
    <string name="segment_program_width">Ширина (ms)</string>
    <string name="segment_program_on">ON (сек)</string>
    <string name="segment_program_off">OFF (сек)</string>
    <string name="segment_program_add">+ Добави блок</string>
    <string name="segment_program_remove">Премахни блок</string>
    <string name="segment_program_done">Готово</string>
"""


def install_smali() -> None:
    DIALOG_DIR.mkdir(parents=True, exist_ok=True)
    for old in DIALOG_DIR.glob("ProgramSegment.smali"):
        old.unlink()
    for old in DIALOG_DIR.glob("SegmentProgram*.smali"):
        old.unlink()
    for old in DIALOG_DIR.glob("-$$Lambda$SegmentProgramUiHelper*.smali"):
        old.unlink()
    copied = 0
    for pattern in ("ProgramSegment.smali", "SegmentProgram*.smali", "-$$Lambda$SegmentProgramUiHelper*.smali"):
        for src in sorted(BRANDING_SMALI.glob(pattern)):
            shutil.copy2(src, DIALOG_DIR / src.name)
            print(f"installed dialog/{src.name}")
            copied += 1
    if copied == 0:
        raise SystemExit("Missing segment program smali — run compile-segment-program-java.sh")


def patch_layout(text: str) -> str:
    if "segmentProgramSwitch" in text:
        print("edit_parameter_dialog: segment program UI already present")
        return text
    marker = (
        '                <View android:background="@color/gray_color" android:layout_width="fill_parent" '
        'android:layout_height="0.5dip" android:layout_marginLeft="20.0dip" android:layout_marginTop="5.0dip" '
        'android:layout_marginRight="20.0dip" />\n                <TextView android:textSize="22.0sp" '
        'android:textColor="@color/text_secondary" android:layout_gravity="center_horizontal" '
        'android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="5.0dip" '
        'android:layout_marginBottom="10.0dip" android:text="@string/editmode" />'
    )
    if marker not in text:
        raise RuntimeError("edit_parameter_dialog: editmode divider marker not found")
    print("edit_parameter_dialog: segment program section added")
    return text.replace(marker, SEGMENT_UI + "\n" + marker, 1)


def patch_public(text: str) -> str:
    for name, id_val in IDS.items():
        if name not in text:
            text = text.replace(
                "</resources>",
                f'    <public type="id" name="{name}" id="{id_val:#x}" />\n</resources>',
                1,
            )
    for name, id_val in STRING_IDS.items():
        if name not in text:
            text = text.replace(
                "</resources>",
                f'    <public type="string" name="{name}" id="{id_val:#x}" />\n</resources>',
                1,
            )
    return text


def patch_ids(text: str) -> str:
    missing = [n for n in IDS if n not in text]
    if not missing:
        return text
    block = "\n".join(f'    <item type="id" name="{n}" />' for n in missing)
    return text.replace("</resources>", block + "\n</resources>", 1)


def merge_strings(path: Path, block: str) -> None:
    text = path.read_text(encoding="utf-8")
    for line in block.strip().splitlines():
        name = re.search(r'name="([^"]+)"', line)
        if name and name.group(1) in text:
            continue
        text = text.replace("</resources>", line + "\n</resources>", 1)
    path.write_text(text, encoding="utf-8")


def patch_train_item_pulse(text: str) -> str:
    hook = (
        "    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;"
        "->onPulsePhaseFinished(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n\n"
    )
    if "SegmentProgramRunner;->onPulsePhaseFinished" in text:
        print("TrainItem$2.onFinish: segment hook already applied")
        return text
    old = """    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->access$100(Lcom/isaigu/gymapp/train/model/TrainItem;)V"""
    new = """    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

""" + hook + """    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->access$100(Lcom/isaigu/gymapp/train/model/TrainItem;)V"""
    if old not in text:
        raise RuntimeError("TrainItem$2.onFinish hook marker not found")
    print("TrainItem$2.onFinish: segment cycle hook")
    return text.replace(old, new, 1)


def patch_train_item_start(text: str) -> str:
    hook = (
        "    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;"
        "->onTrainingStart(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n\n"
    )
    if "SegmentProgramRunner;->onTrainingStart" in text:
        print("TrainItem.start: segment hook already applied")
        return text
    old = """    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 78
    new-instance v0, Lcom/isaigu/gymapp/train/model/TrainItem$1;"""
    new = """    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

""" + hook + """    .line 78
    new-instance v0, Lcom/isaigu/gymapp/train/model/TrainItem$1;"""
    if old not in text:
        raise RuntimeError("TrainItem.start hook marker not found")
    print("TrainItem.start: segment program hook")
    return text.replace(old, new, 1)


def patch_train_item_stop(text: str) -> str:
    hook = (
        "    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;"
        "->onTrainingStop(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n\n"
    )
    if "SegmentProgramRunner;->onTrainingStop" in text:
        print("TrainItem.stop: segment hook already applied")
        return text
    old = """.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;"""
    new = """.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

""" + hook + """    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;"""
    if old not in text:
        raise RuntimeError("TrainItem.stop hook marker not found")
    print("TrainItem.stop: segment program hook")
    return text.replace(old, new, 1)


def patch_train_item_set_program(text: str) -> str:
    if "SegmentProgramStorage;->apply" in text.split("setTrainProgram")[1].split(".method")[0]:
        print("TrainItem.setTrainProgram: segment apply already present")
        return text
    if "ActivePauseStorage;->apply" in text:
        old = "invoke-static {p1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V"
        new = old + "\n\n    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V"
        print("TrainItem.setTrainProgram: segment apply hook")
        return text.replace(old, new, 1)
    old = """    iput-object p1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 248
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V"""
    new = """    iput-object p1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 248
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V"""
    if old not in text:
        raise RuntimeError("TrainItem.setTrainProgram hook marker not found")
    print("TrainItem.setTrainProgram: segment apply hook (no active pause)")
    return text.replace(old, new, 1)


def patch_edit_dialog_get_program(text: str) -> str:
    if ".method public getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;" in text:
        print("EditUserProgramDataDialog.getTrainProgram already present")
        return text
    method = """
.method public getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;
    .locals 1

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    return-object v0
.end method

"""
    anchor = ".method public onCreateView"
    if anchor not in text:
        raise RuntimeError("EditUserProgramDataDialog.onCreateView not found")
    print("EditUserProgramDataDialog: added getTrainProgram()")
    return text.replace(anchor, method + anchor, 1)


def patch_edit_dialog_bind(text: str) -> str:
    hook = (
        "    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;"
        "->bind(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V\n\n"
    )
    if "SegmentProgramUiHelper;->bind" in text:
        print("EditUserProgramDataDialog.onCreateView: segment bind already applied")
        return text
    old = (
        "    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initListener()V\n\n"
        "    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200"
    )
    new = (
        "    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initListener()V\n\n"
        + hook
        + "    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200"
    )
    if old not in text:
        raise RuntimeError("EditUserProgramDataDialog.onCreateView initListener marker not found")
    print("EditUserProgramDataDialog.onCreateView: segment UI bind hook")
    return text.replace(old, new, 1)


def patch_edit_dialog_apply(text: str) -> str:
    block = (
        "    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;"
        "->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V\n"
    )
    if "SegmentProgramStorage;->apply" in text.split(".method public onCreateView", 1)[1].split(".method ", 2)[0]:
        print("EditUserProgramDataDialog.onCreateView: segment apply already present")
        return text
    ap_block = (
        "    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;"
        "->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V\n\n"
    )
    if ap_block in text:
        text = text.replace(ap_block, ap_block + block, 1)
        print("EditUserProgramDataDialog.onCreateView: segment apply hook")
        return text
    raise RuntimeError("EditUserProgramDataDialog ActivePauseStorage.apply marker not found")


def patch_merge_list(path: Path, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    if "SegmentProgramStorage;->mergeList" in text:
        print(f"{label}: segment mergeList already applied")
        return
    hook = "invoke-static {v2}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->mergeList(Ljava/util/List;)V"
    if "ActivePauseStorage;->mergeList" in text:
        text = text.replace(
            "invoke-static {v2}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V",
            "invoke-static {v2}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V\n\n    "
            + hook,
            1,
        )
        path.write_text(text, encoding="utf-8")
        print(f"{label}: segment mergeList after active pause")
        return
    hook_v0 = hook.replace("{v2}", "{v0}")
    hook_v1 = hook.replace("{v2}", "{v1}")
    for old, new, name in (
        (
            "    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;\n\n    .line ",
            "    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;\n\n    "
            + hook + "\n\n    .line ",
            "v2",
        ),
        (
            "    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;\n\n    .line 370",
            "    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;\n\n    "
            + hook_v0 + "\n\n    .line 370",
            "v0",
        ),
        (
            "    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;\n\n    .line ",
            "    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;\n\n    "
            + hook_v1 + "\n\n    .line ",
            "v1",
        ),
    ):
        if old in text:
            path.write_text(text.replace(old, new, 1), encoding="utf-8")
            print(f"{label}: segment mergeList ({name})")
            return
    print(f"{label}: mergeList marker not found — skipped")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("ERROR: build/decompiled missing — run build-apk.sh decompile first", file=sys.stderr)
        return 1

    install_smali()

    layout = patch_layout(LAYOUT.read_text(encoding="utf-8"))
    LAYOUT.write_text(layout, encoding="utf-8")

    PUBLIC_XML.write_text(patch_public(PUBLIC_XML.read_text(encoding="utf-8")), encoding="utf-8")
    IDS_XML.write_text(patch_ids(IDS_XML.read_text(encoding="utf-8")), encoding="utf-8")
    merge_strings(VALUES_DEFAULT, EN_STRINGS)
    merge_strings(VALUES_BG, BG_STRINGS)

    TRAIN_ITEM_2.write_text(patch_train_item_pulse(TRAIN_ITEM_2.read_text(encoding="utf-8")), encoding="utf-8")
    train = TRAIN_ITEM.read_text(encoding="utf-8")
    train = patch_train_item_start(train)
    train = patch_train_item_stop(train)
    train = patch_train_item_set_program(train)
    TRAIN_ITEM.write_text(train, encoding="utf-8")

    edit = EDIT_DIALOG.read_text(encoding="utf-8")
    edit = patch_edit_dialog_get_program(edit)
    edit = patch_edit_dialog_bind(edit)
    edit = patch_edit_dialog_apply(edit)
    EDIT_DIALOG.write_text(edit, encoding="utf-8")

    patch_merge_list(MAIN_FRAGMENT, "MainFragment")
    patch_merge_list(MAIN_FRAGMENT_9, "MainFragment$9")

    print("apply-segment-program: done")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
