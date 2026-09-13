#!/usr/bin/env python3
"""Settings screen: language + dark/light theme only."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SMALI = ROOT / "build/decompiled/smali_classes2/com/isaigu/gymapp"
SETTING_FRAGMENT = SMALI / "fragment/SettingFragment.smali"

INIT_SET = """.method private initSet()V
    .locals 2

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->getLang(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchToLanguage(Ljava/lang/String;Z)V

    return-void
.end method"""

ON_CREATE_VIEW = """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;->bindThemeSwitch(Landroid/app/Activity;Landroid/view/View;)V

    return-object v0
.end method"""

SWITCH_TO_LANGUAGE = """.method private switchToLanguage(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "restart"    # Z

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string v0, "bg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_en

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_apply

    :cond_en
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :goto_apply

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_apply
    if-eqz p2, :cond_done

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/LanguageUtils;->setLang(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChange(Landroid/app/Activity;)V

    :cond_done
    return-void
.end method"""


def _method_body(text: str, signature: str) -> str | None:
    match = re.search(rf"\.method {signature}\n.*?\.end method", text, flags=re.DOTALL)
    return match.group(0) if match else None


def replace_method(path: Path, signature: str, replacement: str) -> None:
    text = path.read_text(encoding="utf-8")
    body = _method_body(text, signature)
    if body is None:
        raise SystemExit(f"method {signature} not found in {path}")
    if body == replacement or body.strip() == replacement.strip():
        print(f"skip {path.name}::{signature} (already patched)")
        return
    if signature.startswith("public onCreateView") and "lightSeekBar" not in body:
        print(f"skip {path.name}::{signature} (already minimal)")
        return
    if signature.startswith("private switchToLanguage") and "if-eqz p2, :cond_done" in body:
        print(f"skip {path.name}::{signature} (already patched)")
        return
    match = re.search(rf"\.method {signature}\n.*?\.end method", text, flags=re.DOTALL)
    path.write_text(text[: match.start()] + replacement + text[match.end() :], encoding="utf-8")
    print(f"patched {path.name}::{signature}")


def main() -> int:
    if not SETTING_FRAGMENT.exists():
        print("SettingFragment.smali missing; run build-apk.sh first", file=sys.stderr)
        return 1
    replace_method(SETTING_FRAGMENT, r"private initSet\(\)V", INIT_SET)
    replace_method(
        SETTING_FRAGMENT,
        r"public onCreateView\(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;\)Landroid/view/View;",
        ON_CREATE_VIEW,
    )
    replace_method(
        SETTING_FRAGMENT,
        r"private switchToLanguage\(Ljava/lang/String;Z\)V",
        SWITCH_TO_LANGUAGE,
    )
    print("Settings UI simplified (language + theme)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
