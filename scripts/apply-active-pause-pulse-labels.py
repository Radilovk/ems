#!/usr/bin/env python3
"""Switch impulse/pause time labels when active pause mode is enabled."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
PUBLIC_XML = RES / "values" / "public.xml"
IDS_XML = RES / "values" / "ids.xml"
R_ID = DECOMPILED / "smali_classes2/com/isaigu/gymapp/R$id.smali"
R_STRING = DECOMPILED / "smali_classes2/com/isaigu/gymapp/R$string.smali"
VALUES_DEFAULT = RES / "values/strings.xml"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
TRAIN_VIEW_HOLDER = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainViewHolder.smali"
)

ROW_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

PUBLIC_ID_INSERT_AFTER = '<public type="id" name="pauseSegmentRemove3" id="0x7f090217" />'

BG_STRINGS = """    <string name="paulsecontinue_ap">Импулс 1</string>
    <string name="paulsestop_ap">Импулс 2</string>"""

EN_STRINGS = """    <string name="paulsecontinue_ap">Impulse 1</string>
    <string name="paulsestop_ap">Impulse 2</string>"""

UPDATE_UI_MARKER = """    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountColor(I)V

    .line 266
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->MyBatterView:Lcom/isaigu/gymapp/widget/BatterView;"""


def next_id_value() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_ID):
        if path.exists():
            ids.extend(int(value, 16) for value in re.findall(r"0x7f09[0-9a-f]+", path.read_text(encoding="utf-8")))
    if not ids:
        raise RuntimeError("could not determine next view id")
    return max(ids) + 1


def next_string_id() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_STRING):
        if path.exists():
            ids.extend(int(value, 16) for value in re.findall(r"0x7f0d[0-9a-f]+", path.read_text(encoding="utf-8")))
    if not ids:
        raise RuntimeError("could not determine next string id")
    return max(ids) + 1


def register_id(name: str, resource_id: int) -> int:
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    match = re.search(rf'type="id" name="{name}" id="(0x[0-9a-f]+)"', public_text)
    if match:
        return int(match.group(1), 16)

    resource_hex = f"0x{resource_id:08x}"
    if PUBLIC_ID_INSERT_AFTER in public_text:
        public_text = public_text.replace(
            PUBLIC_ID_INSERT_AFTER,
            f'{PUBLIC_ID_INSERT_AFTER}\n    <public type="id" name="{name}" id="{resource_hex}" />',
            1,
        )
    else:
        public_text = public_text.replace(
            "</resources>",
            f'    <public type="id" name="{name}" id="{resource_hex}" />\n</resources>',
            1,
        )
    PUBLIC_XML.write_text(public_text, encoding="utf-8")

    ids_text = IDS_XML.read_text(encoding="utf-8")
    if f'name="{name}"' not in ids_text:
        IDS_XML.write_text(
            ids_text.replace("</resources>", f'    <item type="id" name="{name}" />\n</resources>', 1),
            encoding="utf-8",
        )

    r_text = R_ID.read_text(encoding="utf-8")
    if f".field public static final {name}:I" not in r_text:
        R_ID.write_text(
            r_text.replace(
                "\n\n# direct methods",
                f"\n.field public static final {name}:I = {resource_hex}\n\n\n# direct methods",
                1,
            ),
            encoding="utf-8",
        )
    print(f"registered id {name} -> {resource_hex}")
    return resource_id


def register_string(name: str, resource_id: int) -> int:
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    match = re.search(rf'type="string" name="{name}" id="(0x[0-9a-f]+)"', public_text)
    if match:
        return int(match.group(1), 16)

    resource_hex = f"0x{resource_id:08x}"
    PUBLIC_XML.write_text(
        public_text.replace(
            "</resources>",
            f'    <public type="string" name="{name}" id="{resource_hex}" />\n</resources>',
            1,
        ),
        encoding="utf-8",
    )

    r_text = R_STRING.read_text(encoding="utf-8")
    if f".field public static final {name}:I" not in r_text:
        R_STRING.write_text(
            r_text.replace(
                "\n\n# direct methods",
                f"\n.field public static final {name}:I = {resource_hex}\n\n\n# direct methods",
                1,
            ),
            encoding="utf-8",
        )
    print(f"registered string {name} -> {resource_hex}")
    return resource_id


def merge_strings(path: Path, block: str, names: list[str]) -> None:
    if not path.exists():
        return
    text = path.read_text(encoding="utf-8")
    if all(f'name="{name}"' in text for name in names):
        return
    path.write_text(text.replace("</resources>", block + "\n</resources>", 1), encoding="utf-8")


def patch_layout_label_ids() -> None:
    continue_pattern = re.compile(
        r'(@id/paulsecontinue"[^/]*/>\s*<TextView)( android:)',
    )
    pause_pattern = re.compile(
        r'(@id/paulsestop"[^/]*/>\s*<TextView)( android:)',
    )
    for layout_dir in ("layout", "layout-night"):
        for name in ROW_LAYOUTS:
            path = RES / layout_dir / name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")
            if 'android:id="@id/pulseContinueLabel"' in text and 'android:id="@id/pulsePauseLabel"' in text:
                continue
            new_text = continue_pattern.sub(
                r'\1 android:id="@id/pulseContinueLabel"\2',
                text,
            )
            new_text = pause_pattern.sub(
                r'\1 android:id="@id/pulsePauseLabel"\2',
                new_text,
            )
            if new_text != text:
                path.write_text(new_text, encoding="utf-8")
                print(f"patched label ids in {layout_dir}/{name}")


def update_pulse_labels_method(
    continue_label_id: int,
    pause_label_id: int,
    continue_str: int,
    pause_str: int,
    continue_ap_str: int,
    pause_ap_str: int,
) -> str:
    return f"""
.method private updatePulseTimeLabels()V
    .locals 5

    invoke-virtual {{p0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, {continue_label_id:#x}

    invoke-virtual {{v1, v2}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_end

    check-cast v2, Landroid/widget/TextView;

    const v3, {pause_label_id:#x}

    invoke-virtual {{v1, v3}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_end

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v3, :cond_normal

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    const v3, {continue_ap_str:#x}

    invoke-virtual {{v0, v3}}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {{v2, v0}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    const v2, {pause_ap_str:#x}

    invoke-virtual {{v0, v2}}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {{v1, v0}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :cond_end

    :cond_normal
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    const v3, {continue_str:#x}

    invoke-virtual {{v0, v3}}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {{v2, v0}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    const v2, {pause_str:#x}

    invoke-virtual {{v0, v2}}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {{v1, v0}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_end
    return-void
.end method""".strip()


def patch_train_view_holder(
    continue_label_id: int,
    pause_label_id: int,
    continue_str: int,
    pause_str: int,
    continue_ap_str: int,
    pause_ap_str: int,
) -> None:
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    method = update_pulse_labels_method(
        continue_label_id,
        pause_label_id,
        continue_str,
        pause_str,
        continue_ap_str,
        pause_ap_str,
    )
    if "updatePulseTimeLabels()V" in text:
        text = re.sub(
            r"\.method private updatePulseTimeLabels\(\)V.*?\.end method",
            method,
            text,
            count=1,
            flags=re.DOTALL,
        )
        print("TrainViewHolder: replaced updatePulseTimeLabels()")
    else:
        text = text.replace(
            ".method private updateUI()V",
            method + "\n\n.method private updateUI()V",
            1,
        )
        print("TrainViewHolder: added updatePulseTimeLabels()")

    if "updatePulseTimeLabels()V" in text.split("updateUI()V", 1)[1].split(".method")[0]:
        print("TrainViewHolder.updateUI: pulse label call already patched")
    elif UPDATE_UI_MARKER in text:
        replacement = UPDATE_UI_MARKER.replace(
            "\n    .line 266",
            "\n\n    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updatePulseTimeLabels()V\n\n    .line 266",
            1,
        )
        text = text.replace(UPDATE_UI_MARKER, replacement, 1)
        print("TrainViewHolder.updateUI: calls updatePulseTimeLabels()")
    else:
        raise RuntimeError("TrainViewHolder updateUI pulse label patch marker not found")

    TRAIN_VIEW_HOLDER.write_text(text, encoding="utf-8")


def lookup_string_id(name: str) -> int:
    match = re.search(rf'type="string" name="{name}" id="(0x[0-9a-f]+)"', PUBLIC_XML.read_text(encoding="utf-8"))
    if not match:
        raise RuntimeError(f"string id not found for {name}")
    return int(match.group(1), 16)


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1

    merge_strings(VALUES_BG, BG_STRINGS, ["paulsecontinue_ap", "paulsestop_ap"])
    merge_strings(VALUES_DEFAULT, EN_STRINGS, ["paulsecontinue_ap", "paulsestop_ap"])

    next_view_id = next_id_value()
    continue_label_id = register_id("pulseContinueLabel", next_view_id)
    pause_label_id = register_id("pulsePauseLabel", next_view_id + 1)
    next_str_id = next_string_id()
    register_string("paulsecontinue_ap", next_str_id)
    register_string("paulsestop_ap", next_str_id + 1)

    patch_layout_label_ids()
    patch_train_view_holder(
        continue_label_id,
        pause_label_id,
        lookup_string_id("paulsecontinue"),
        lookup_string_id("paulsestop"),
        lookup_string_id("paulsecontinue_ap"),
        lookup_string_id("paulsestop_ap"),
    )
    print("Active pause pulse label patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
