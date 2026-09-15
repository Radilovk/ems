#!/usr/bin/env python3
"""Replace the Video tab with a comprehensive styled EMS training and app guide."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
VALUES_DEFAULT = RES / "values/strings.xml"
VIDEO_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/VideoListFragment.smali"
GUIDE_LAYOUT = RES / "layout/video_list_fragment.xml"

GUIDE_PARTS: tuple[tuple[str, tuple[tuple[str, str, str], ...]], ...] = (
    (
        "guide_part_ems",
        (
            ("01", "guide_s01_title", "guide_s01_body"),
            ("02", "guide_s02_title", "guide_s02_body"),
            ("03", "guide_s03_title", "guide_s03_body"),
            ("04", "guide_s04_title", "guide_s04_body"),
            ("05", "guide_s05_title", "guide_s05_body"),
            ("06", "guide_s06_title", "guide_s06_body"),
        ),
    ),
    (
        "guide_part_app",
        (
            ("07", "guide_s07_title", "guide_s07_body"),
            ("08", "guide_s08_title", "guide_s08_body"),
            ("09", "guide_s09_title", "guide_s09_body"),
            ("10", "guide_s10_title", "guide_s10_body"),
            ("11", "guide_s11_title", "guide_s11_body"),
            ("12", "guide_s12_title", "guide_s12_body"),
            ("13", "guide_s13_title", "guide_s13_body"),
            ("14", "guide_s14_title", "guide_s14_body"),
            ("15", "guide_s15_title", "guide_s15_body"),
            ("16", "guide_s16_title", "guide_s16_body"),
        ),
    ),
)

EN_STRINGS = """    <string name="video">Guide</string>
    <string name="guide_page_title">EMS Training Guide</string>
    <string name="guide_page_subtitle">Complete reference for EMS training and X-EMS PRO</string>
    <string name="guide_intro">This guide explains EMS training principles, safety, and how to use the application interface.</string>
    <string name="guide_part_ems">Part I — EMS Training</string>
    <string name="guide_part_app">Part II — Application</string>
    <string name="guide_s01_title">What is EMS training?</string>
    <string name="guide_s01_body">Electrical muscle stimulation (EMS) activates muscle fibers using controlled impulses delivered through electrode garments.</string>
    <string name="guide_s02_title">How stimulation works</string>
    <string name="guide_s02_body">Impulses trigger contractions similar to voluntary effort. Frequency, duration, pause, and intensity shape the training stimulus.</string>
    <string name="guide_s03_title">Physiology</string>
    <string name="guide_s03_body">EMS can recruit multiple muscle groups simultaneously when contact and parameters are appropriate.</string>
    <string name="guide_s04_title">Indications and benefits</string>
    <string name="guide_s04_body">EMS may support muscle tone, strength maintenance, and recovery when used consistently and safely.</string>
    <string name="guide_s05_title">Contraindications</string>
    <string name="guide_s05_body">Do not use with pacemakers, during pregnancy, epilepsy, acute inflammation, thrombosis, or open wounds under electrodes.</string>
    <string name="guide_s06_title">Preparation</string>
    <string name="guide_s06_body">Hydrate, check electrode contact, start with low intensity, and consult a physician when needed.</string>
    <string name="guide_s07_title">App structure</string>
    <string name="guide_s07_body">Main tabs: Train, Users, Calendar, Devices, and Guide.</string>
    <string name="guide_s08_title">Device connection</string>
    <string name="guide_s08_body">Enable Bluetooth, select the suit in Devices, and confirm battery and signal indicators.</string>
    <string name="guide_s09_title">Training screen</string>
    <string name="guide_s09_body">Select a user, adjust muscle bars, set impulse/pause times, and use Start/Stop to control the session.</string>
    <string name="guide_s10_title">Impulse and pause times</string>
    <string name="guide_s10_body">Impulse sets work interval; Pause sets rest interval. With active pause ON, labels show Impulse 1 and Impulse 2.</string>
    <string name="guide_s11_title">Intensity and frequency</string>
    <string name="guide_s11_body">The circular slider adjusts % strength or Hz depending on selected mode around the avatar.</string>
    <string name="guide_s12_title">Active pause</string>
    <string name="guide_s12_body">Active pause sends a second weaker impulse during the pause interval. Toggle via the Hz button below the avatar.</string>
    <string name="guide_s13_title">Muscle groups</string>
    <string name="guide_s13_body">Vertical bars control individual channels. Balance intensity across groups for even stimulation.</string>
    <string name="guide_s14_title">Programs and modes</string>
    <string name="guide_s14_body">Programs store default parameters per user. Use Settings for advanced program editing.</string>
    <string name="guide_s15_title">Save and settings</string>
    <string name="guide_s15_body">Save stores current parameters for the user. Settings opens detailed program configuration.</string>
    <string name="guide_s16_title">Safety tips</string>
    <string name="guide_s16_body">Stop immediately if you feel pain, dizziness, or unusual sensations. Increase intensity gradually.</string>"""

ON_CREATE_OLD = """    .local v0, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getNextData()V

    .line 72
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->initView(Landroid/view/View;)V"""

ON_CREATE_NEW = """    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->initView(Landroid/view/View;)V"""

INIT_VIEW_NEW = """.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    const v0, 0x7f0900f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->logoImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_0
    return-void
.end method"""

STOP_ALL_PLAY_NEW = """.method private stopAllPlay()V
    .locals 0

    return-void
.end method"""

ON_PAUSE_NEW = """.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onPause()V

    return-void
.end method"""

ON_RESUME_NEW = """.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onResume()V

    return-void
.end method"""


def part_header(title_ref: str) -> str:
    return f"""            <LinearLayout android:orientation="vertical" android:background="@color/section_header_bg" android:paddingLeft="14.0dip" android:paddingTop="12.0dip" android:paddingRight="14.0dip" android:paddingBottom="12.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="20.0dip">
                <TextView android:textSize="19.0sp" android:textStyle="bold" android:textColor="@color/accent_primary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/{title_ref}" />
            </LinearLayout>
"""


def section_card(number: str, title_ref: str, body_ref: str) -> str:
    return f"""            <LinearLayout android:orientation="vertical" android:background="@drawable/ui_card_background" android:paddingLeft="14.0dip" android:paddingTop="12.0dip" android:paddingRight="14.0dip" android:paddingBottom="14.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="12.0dip">
                <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content">
                    <TextView android:textSize="12.0sp" android:textStyle="bold" android:textColor="@color/text_on_accent" android:gravity="center" android:background="@color/accent_primary" android:layout_width="30.0dip" android:layout_height="30.0dip" android:text="{number}" />
                    <TextView android:textSize="17.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_marginLeft="12.0dip" android:layout_weight="1.0" android:text="@string/{title_ref}" />
                </LinearLayout>
                <View android:background="@color/divider" android:layout_width="fill_parent" android:layout_height="1.0dip" android:layout_marginTop="10.0dip" android:layout_marginBottom="10.0dip" />
                <TextView android:textSize="14.5sp" android:textColor="@color/text_primary" android:lineSpacingExtra="5.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/{body_ref}" />
            </LinearLayout>
"""


def build_guide_layout() -> str:
    sections_xml = []
    for part_title, cards in GUIDE_PARTS:
        sections_xml.append(part_header(part_title))
        for number, title_ref, body_ref in cards:
            sections_xml.append(section_card(number, title_ref, body_ref))

    body = "\n".join(sections_xml)
    return f"""<?xml version="1.0" encoding="utf-8"?>
<LinearLayout android:orientation="vertical" android:background="@color/bg_screen" android:layout_width="fill_parent" android:layout_height="fill_parent"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <RelativeLayout android:layout_width="fill_parent" android:layout_height="90.0dip">
        <ImageView android:background="@mipmap/titlebar2" android:layout_width="fill_parent" android:layout_height="90.0dip" />
        <ImageView android:id="@id/logoImage" android:layout_width="184.0dip" android:layout_height="70.0dip" android:layout_marginLeft="60.0dip" android:layout_marginTop="10.0dip" android:src="@mipmap/logo2" />
    </RelativeLayout>
    <ScrollView android:scrollbars="none" android:layout_width="fill_parent" android:layout_height="fill_parent" android:fillViewport="true">
        <LinearLayout android:orientation="vertical" android:paddingLeft="18.0dip" android:paddingTop="16.0dip" android:paddingRight="18.0dip" android:paddingBottom="28.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content">
            <LinearLayout android:orientation="vertical" android:background="@drawable/ui_card_background" android:paddingLeft="16.0dip" android:paddingTop="16.0dip" android:paddingRight="16.0dip" android:paddingBottom="16.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content">
                <TextView android:textSize="26.0sp" android:textStyle="bold" android:textColor="@color/accent_primary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/guide_page_title" />
                <TextView android:textSize="14.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="6.0dip" android:text="@string/guide_page_subtitle" />
                <View android:background="@color/divider" android:layout_width="fill_parent" android:layout_height="1.0dip" android:layout_marginTop="12.0dip" android:layout_marginBottom="12.0dip" />
                <TextView android:textSize="14.5sp" android:textColor="@color/text_primary" android:lineSpacingExtra="4.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/guide_intro" />
            </LinearLayout>
{body}
        </LinearLayout>
    </ScrollView>
</LinearLayout>
"""


def merge_strings(path: Path, block: str, names: list[str]) -> None:
    if not path.exists():
        return
    text = path.read_text(encoding="utf-8")
    for name in names:
        text = re.sub(rf'    <string name="{name}">.*?</string>\n?', "", text, flags=re.DOTALL)
    if not all(f'name="{name}"' in text for name in names):
        path.write_text(text.replace("</resources>", block + "\n</resources>", 1), encoding="utf-8")


def replace_method(text: str, signature: str, replacement: str) -> str:
    pattern = rf"{signature}.*?\.end method"
    match = re.search(pattern, text, flags=re.DOTALL)
    if not match:
        raise RuntimeError(f"method not found: {signature}")
    return text[: match.start()] + replacement + text[match.end() :]


def patch_video_fragment() -> None:
    text = VIDEO_FRAGMENT.read_text(encoding="utf-8")
    if ON_CREATE_OLD in text:
        text = text.replace(ON_CREATE_OLD, ON_CREATE_NEW, 1)
        print("VideoListFragment: removed video list loading")
    elif "getNextData()V" not in text.split("onCreateView", 1)[1].split(".method")[0]:
        print("VideoListFragment: onCreateView already patched")
    else:
        raise RuntimeError("VideoListFragment onCreateView patch marker not found")

    init_view_body = text.split("initView(Landroid/view/View;)V", 1)[1].split(".end method")[0]
    if "VideoListFragment$VideoListAdapter" in init_view_body:
        text = replace_method(text, r"\.method private initView\(Landroid/view/View;\)V", INIT_VIEW_NEW)
        print("VideoListFragment.initView: simplified for guide layout")
    else:
        print("VideoListFragment.initView: already simplified")

    text = replace_method(text, r"\.method private stopAllPlay\(\)V", STOP_ALL_PLAY_NEW)
    text = replace_method(text, r"\.method public onPause\(\)V", ON_PAUSE_NEW)
    text = replace_method(text, r"\.method public onResume\(\)V", ON_RESUME_NEW)
    VIDEO_FRAGMENT.write_text(text, encoding="utf-8")
    print("VideoListFragment: disabled video player lifecycle")


def all_string_names() -> list[str]:
    names = ["video", "guide_page_title", "guide_page_subtitle", "guide_intro", "guide_part_ems", "guide_part_app"]
    for _, cards in GUIDE_PARTS:
        for _, title_ref, body_ref in cards:
            names.extend([title_ref, body_ref])
    return names


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1

    merge_strings(VALUES_DEFAULT, EN_STRINGS, all_string_names())
    GUIDE_LAYOUT.write_text(build_guide_layout(), encoding="utf-8")
    print("wrote comprehensive guide layout -> video_list_fragment.xml")
    patch_video_fragment()
    print("Guide tab patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
