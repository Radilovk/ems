#!/usr/bin/env python3
"""Replace the Video tab with a styled EMS training and app usage guide."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
VALUES_DEFAULT = RES / "values/strings.xml"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
VIDEO_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/VideoListFragment.smali"
GUIDE_LAYOUT = RES / "layout/video_list_fragment.xml"

BG_STRINGS = """    <string name="video">Ръководство</string>
    <string name="guide_page_title">Ръководство за EMS тренировка</string>
    <string name="guide_page_subtitle">Научете основите на EMS и как да работите с приложението</string>
    <string name="guide_section_ems">Какво е EMS тренировка?</string>
    <string name="guide_section_ems_body">Електромиостимулацията (EMS) е метод, при който контролирани електрически импулси активират мускулните влакна през кожата. Устройството работи с електродни костюми и позволява едновременна работа на множество мускулни групи.\n\nEMS не замества движение, но го допълва: при правилна настройка тренировката може да бъде интензивна, кратка и ефективна за поддръжка на сила, тонус и възстановяване.</string>
    <string name="guide_section_action">Действие и механизъм</string>
    <string name="guide_section_action_body">Импулсите предизвикват мускулни съкращения, подобни на тези при доброволно усилие. Чрез настройка на честота (Hz), продължителност на импулса и пауза, както и интензивност (%), се контролира характерът на стимула.\n\nПо време на тренировка устройството циклично изпраща импулси и паузи. При активна пауза в паузата се изпраща втори, по-слаб импулс за поддържане на мускулната активност.</string>
    <string name="guide_section_physiology">Физиология</string>
    <string name="guide_section_physiology_body">EMS активира както повърхностни, така и по-дълбоки мускулни влакна, когато параметрите са подходящи. Редовните сесии могат да подпомогнат мускулния тонус, локалното кръвообращение и координацията между мускулни групи.\n\nЕфектът зависи от индивидуалното състояние, хидратация, качеството на електродния контакт и последователността на тренировките.</string>
    <string name="guide_section_contra">Противопоказания и предпазни мерки</string>
    <string name="guide_section_contra_body">Не използвайте EMS при: сърдечни стимулатори или имплантирани електронни устройства, бременност, епилепсия, остри възпаления, инфекции, тромбози, тежки сърдечно-съдови заболявания, открити рани в зоната на електродите.\n\nПреди първа тренировка се консултирайте с лекар при хронични заболявания. Започнете с ниска интензивност и увеличавайте постепенно. Прекъснете при болка, замайване или необичайни усещания.</string>
    <string name="guide_section_app">Приложението X-EMS PRO</string>
    <string name="guide_section_app_body">Приложението управлява EMS устройството през Bluetooth. Основните раздели са: Тренировка, Потребители, Календар, Устройства и Ръководство.\n\nВ екрана за тренировка избирате потребител, свързвате костюм и настройвате програмата. Кръговият слайдер променя интензивност или честота според избрания режим. Вертикалните ленти управляват отделните мускулни групи.</string>
    <string name="guide_section_ui">Използване на интерфейса</string>
    <string name="guide_section_ui_body">• Импулс / Пауза – време на работния и паузния интервал в секунди.\n• Старт / Стоп – започване и спиране на сесията.\n• Hz и % около аватара – честота и сила; долният и горният бутон при активна пауза задават параметрите на втория импулс.\n• Активна пауза – при включване полетата се означават като „Импулс 1“ и „Импулс 2“.\n• Запази – запис на текущите настройки за потребителя.\n• Настройки – допълнителни параметри на програмата.</string>"""

EN_STRINGS = """    <string name="video">Guide</string>
    <string name="guide_page_title">EMS Training Guide</string>
    <string name="guide_page_subtitle">Learn EMS basics and how to use the app</string>
    <string name="guide_section_ems">What is EMS training?</string>
    <string name="guide_section_ems_body">Electrical muscle stimulation (EMS) uses controlled impulses to activate muscle fibers through the skin. The device works with electrode suits and can train multiple muscle groups at once.</string>
    <string name="guide_section_action">Action and mechanism</string>
    <string name="guide_section_action_body">Impulses trigger muscle contractions similar to voluntary effort. Frequency (Hz), impulse duration, pause duration, and intensity (%) shape the stimulus profile.</string>
    <string name="guide_section_physiology">Physiology</string>
    <string name="guide_section_physiology_body">EMS can recruit superficial and deeper fibers when parameters are appropriate. Regular sessions may support tone, circulation, and coordination.</string>
    <string name="guide_section_contra">Contraindications and safety</string>
    <string name="guide_section_contra_body">Do not use EMS with pacemakers, during pregnancy, epilepsy, acute inflammation, infections, thrombosis, severe cardiovascular disease, or open wounds under electrodes. Consult a physician when needed.</string>
    <string name="guide_section_app">X-EMS PRO app</string>
    <string name="guide_section_app_body">The app controls the EMS device over Bluetooth. Main sections: Train, Users, Calendar, Devices, and Guide.</string>
    <string name="guide_section_ui">Using the interface</string>
    <string name="guide_section_ui_body">Impulse / Pause set work and rest intervals. Start / Stop control the session. Hz and % around the avatar adjust frequency and strength.</string>"""

GUIDE_LAYOUT_XML = """<?xml version="1.0" encoding="utf-8"?>
<LinearLayout android:orientation="vertical" android:background="@color/bg_screen" android:layout_width="fill_parent" android:layout_height="fill_parent"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <RelativeLayout android:layout_width="fill_parent" android:layout_height="90.0dip">
        <ImageView android:background="@mipmap/titlebar2" android:layout_width="fill_parent" android:layout_height="90.0dip" />
        <ImageView android:id="@id/logoImage" android:layout_width="184.0dip" android:layout_height="70.0dip" android:layout_marginLeft="60.0dip" android:layout_marginTop="10.0dip" android:src="@mipmap/logo2" />
    </RelativeLayout>
    <ScrollView android:scrollbars="none" android:layout_width="fill_parent" android:layout_height="fill_parent" android:fillViewport="true">
        <LinearLayout android:orientation="vertical" android:paddingLeft="20.0dip" android:paddingTop="16.0dip" android:paddingRight="20.0dip" android:paddingBottom="24.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content">
            <TextView android:textSize="24.0sp" android:textStyle="bold" android:textColor="@color/accent_primary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/guide_page_title" />
            <TextView android:textSize="13.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="6.0dip" android:text="@string/guide_page_subtitle" />
            <TextView android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:background="@color/section_header_bg" android:paddingLeft="12.0dip" android:paddingTop="10.0dip" android:paddingRight="12.0dip" android:paddingBottom="10.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="18.0dip" android:text="@string/guide_section_ems" />
            <TextView android:textSize="15.0sp" android:textColor="@color/text_primary" android:lineSpacingExtra="4.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip" android:text="@string/guide_section_ems_body" />
            <TextView android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:background="@color/section_header_bg" android:paddingLeft="12.0dip" android:paddingTop="10.0dip" android:paddingRight="12.0dip" android:paddingBottom="10.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="18.0dip" android:text="@string/guide_section_action" />
            <TextView android:textSize="15.0sp" android:textColor="@color/text_primary" android:lineSpacingExtra="4.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip" android:text="@string/guide_section_action_body" />
            <TextView android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:background="@color/section_header_bg" android:paddingLeft="12.0dip" android:paddingTop="10.0dip" android:paddingRight="12.0dip" android:paddingBottom="10.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="18.0dip" android:text="@string/guide_section_physiology" />
            <TextView android:textSize="15.0sp" android:textColor="@color/text_primary" android:lineSpacingExtra="4.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip" android:text="@string/guide_section_physiology_body" />
            <TextView android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:background="@color/section_header_bg" android:paddingLeft="12.0dip" android:paddingTop="10.0dip" android:paddingRight="12.0dip" android:paddingBottom="10.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="18.0dip" android:text="@string/guide_section_contra" />
            <TextView android:textSize="15.0sp" android:textColor="@color/text_primary" android:lineSpacingExtra="4.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip" android:text="@string/guide_section_contra_body" />
            <TextView android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:background="@color/section_header_bg" android:paddingLeft="12.0dip" android:paddingTop="10.0dip" android:paddingRight="12.0dip" android:paddingBottom="10.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="18.0dip" android:text="@string/guide_section_app" />
            <TextView android:textSize="15.0sp" android:textColor="@color/text_primary" android:lineSpacingExtra="4.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip" android:text="@string/guide_section_app_body" />
            <TextView android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:background="@color/section_header_bg" android:paddingLeft="12.0dip" android:paddingTop="10.0dip" android:paddingRight="12.0dip" android:paddingBottom="10.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="18.0dip" android:text="@string/guide_section_ui" />
            <TextView android:textSize="15.0sp" android:textColor="@color/text_primary" android:lineSpacingExtra="4.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip" android:layout_marginBottom="8.0dip" android:text="@string/guide_section_ui_body" />
        </LinearLayout>
    </ScrollView>
</LinearLayout>
"""

INIT_VIEW_OLD_START = ".method private initView(Landroid/view/View;)V"
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


def merge_strings(path: Path, block: str, names: list[str]) -> None:
    if not path.exists():
        return
    text = path.read_text(encoding="utf-8")
    for name in names:
        if f'name="{name}"' in text:
            text = re.sub(
                rf'    <string name="{name}">.*?</string>\n?',
                "",
                text,
            )
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


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1

    string_names = [
        "video",
        "guide_page_title",
        "guide_page_subtitle",
        "guide_section_ems",
        "guide_section_ems_body",
        "guide_section_action",
        "guide_section_action_body",
        "guide_section_physiology",
        "guide_section_physiology_body",
        "guide_section_contra",
        "guide_section_contra_body",
        "guide_section_app",
        "guide_section_app_body",
        "guide_section_ui",
        "guide_section_ui_body",
    ]
    merge_strings(VALUES_DEFAULT, EN_STRINGS, string_names)

    GUIDE_LAYOUT.write_text(GUIDE_LAYOUT_XML, encoding="utf-8")
    print("wrote guide layout -> video_list_fragment.xml")

    patch_video_fragment()
    print("Guide tab patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
