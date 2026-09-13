#!/usr/bin/env python3
"""Harden cold start: safe data load, theme init, offline login fallback."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
SMALI = DECOMPILED / "smali_classes2/com/isaigu/gymapp"

FILE_UTILS = SMALI / "utils/FileUtils.smali"
CRASH_APP = SMALI / "CrashApplication.smali"
BASE_ACTIVITY = SMALI / "BaseActivity.smali"
SPLASH_RUN = SMALI / "fragment/SplashFragment$1$1.smali"

GET_DATA_METHOD = """.method public static getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 64
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/isaigu/gymapp/utils/FileUtils;->context:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/4 v2, 0x0

    return-object v2

    .line 70
    :cond_0
    :try_start_0
    sget-object v2, Lcom/isaigu/gymapp/utils/FileUtils;->encryptKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/XXTEATool;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    sget-object v2, Lcom/isaigu/gymapp/utils/FileUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    .local v2, "object":Ljava/lang/Object;
    return-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x0

    return-object v2
.end method"""


def replace_method(path: Path, signature: str, replacement: str) -> None:
    text = path.read_text(encoding="utf-8")
    pattern = rf"\.method {signature}\n.*?\.end method"
    match = re.search(pattern, text, flags=re.DOTALL)
    if not match:
        raise SystemExit(f"method {signature} not found in {path}")
    if replacement in text:
        print(f"skip {path.name}::{signature} (already patched)")
        return
    path.write_text(text[: match.start()] + replacement + text[match.end() :], encoding="utf-8")
    print(f"patched {path.name}::{signature}")


def patch_file_utils() -> None:
    replace_method(
        FILE_UTILS,
        r"public static getData\(Ljava/lang/String;Ljava/lang/Class;\)Ljava/lang/Object;",
        GET_DATA_METHOD,
    )


def patch_crash_application() -> None:
    text = CRASH_APP.read_text(encoding="utf-8")
    marker = (
        "    invoke-super {p0}, Landroid/app/Application;->onCreate()V\n\n"
        "    .line 39\n"
        "    invoke-static {p0}, Lme/jessyan/autosize/AutoSize;->initCompatMultiProcess(Landroid/content/Context;)V"
    )
    inject = (
        "    invoke-super {p0}, Landroid/app/Application;->onCreate()V\n\n"
        "    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ThemeUtils;->applyStoredNightMode(Landroid/content/Context;)V\n\n"
        "    .line 39\n"
        "    invoke-static {p0}, Lme/jessyan/autosize/AutoSize;->initCompatMultiProcess(Landroid/content/Context;)V"
    )
    if "ThemeUtils;->applyStoredNightMode" in text:
        print("skip CrashApplication.onCreate (theme already in Application)")
        return
    if marker not in text:
        raise SystemExit("CrashApplication.onCreate marker not found")
    CRASH_APP.write_text(text.replace(marker, inject, 1), encoding="utf-8")
    print("patched CrashApplication.onCreate theme init")


def patch_base_activity() -> None:
    text = BASE_ACTIVITY.read_text(encoding="utf-8")
    old = (
        "    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ThemeUtils;->applyStoredNightMode(Landroid/content/Context;)V\n\n"
        "    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V"
    )
    new = "    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V"
    if old not in text:
        if "ThemeUtils;->applyStoredNightMode" not in text:
            print("skip BaseActivity.onCreate (theme call already removed)")
            return
        raise SystemExit("BaseActivity.onCreate theme marker not found")
    BASE_ACTIVITY.write_text(text.replace(old, new, 1), encoding="utf-8")
    print("removed theme init from BaseActivity.onCreate")


def patch_splash_offline_login() -> None:
    text = SPLASH_RUN.read_text(encoding="utf-8")
    marker = (
        "    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;\n\n"
        "    .line 82\n"
        "    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;"
    )
    inject = (
        "    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;\n\n"
        "    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;\n\n"
        "    move-result-object v1\n\n"
        "    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;\n\n"
        "    if-eqz v1, :cond_1\n\n"
        "    .line 82\n"
        "    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;"
    )
    if "if-eqz v1, :cond_1" in text and "loginUser:Lcom/isaigu/gymapp/bean/TrainUser;" in text.split("if-eqz v1, :cond_1")[0]:
        print("skip SplashFragment$1$1 offline login guard (already patched)")
        return
    if marker not in text:
        raise SystemExit("SplashFragment$1$1 loginUser marker not found")
    SPLASH_RUN.write_text(text.replace(marker, inject, 1), encoding="utf-8")
    print("patched SplashFragment$1$1 null loginUser fallback")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1
    patch_file_utils()
    patch_crash_application()
    patch_base_activity()
    patch_splash_offline_login()
    print("Startup hardening applied")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
