#!/usr/bin/env python3
"""Add swipe-to-delete for customers on the Users screen."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
FRAGMENT_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment"
USER_FRAGMENT = FRAGMENT_DIR / "UserFragment.smali"
LAYOUT = DECOMPILED / "res/layout/user_fragment_layout.xml"
LAYOUT_NIGHT = DECOMPILED / "res/layout-night/user_fragment_layout.xml"
STRINGS_BG = DECOMPILED / "res/values-bg/strings.xml"
STRINGS_EN = DECOMPILED / "res/values-en/strings.xml"
STRINGS = DECOMPILED / "res/values/strings.xml"

SWIPE_CREATOR = """.class Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuCreator;
.super Ljava/lang/Object;
.source "UserFragment.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/UserFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuCreator;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;I)V
    .locals 3

    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuCreator;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuCreator;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/UserFragment;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setBackgroundColor(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuCreator;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    const v2, 0x7f0d0043

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setText(Ljava/lang/String;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setTextColor(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setTextSize(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setWidth(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->addMenuItem(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;

    return-void
.end method
"""

SWIPE_CLICK = """.class Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;
.super Ljava/lang/Object;
.source "UserFragment.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/UserFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V
    .locals 3

    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->closeMenu()V

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    const v2, 0x7f0d01a8

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener$1;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener$1;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showMessageDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
"""

SWIPE_RUN = """.class Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener$1;
.super Ljava/lang/Object;
.source "UserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;

.field final synthetic val$menuBridge:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener$1;->this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener$1;->val$menuBridge:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener$1;->val$menuBridge:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->getAdapterPosition()I

    move-result v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v4, "file_name_user_data"

    invoke-static {v4, v3, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    iget-wide v1, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v3, "file_name_offline_user_data"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v3, v2, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener$1;->this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/UserFragment;->access$000(Lcom/isaigu/gymapp/fragment/UserFragment;)Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->notifyItemRemoved(I)V

    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    return-void
.end method
"""

FIELD_INIT = """.field private userDeleteMenuClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

.field private userDeleteMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;
"""

CONSTRUCTOR_INIT = """    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    new-instance v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuCreator;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuCreator;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userDeleteMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    new-instance v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/UserFragment$UserDeleteMenuClickListener;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userDeleteMenuClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    return-void"""

ONCREATE_SWIPE = """    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userDeleteMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userDeleteMenuClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userlistview:Landroid/support/v7/widget/RecyclerView;

    .line 66"""


def patch_layout(path: Path) -> None:
    text = path.read_text(encoding="utf-8")
    old = '<android.support.v7.widget.RecyclerView android:id="@id/userlistview"'
    new = '<com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView android:id="@id/userlistview"'
    if new in text:
        print(f"{path.name}: already SwipeMenuRecyclerView")
        return
    if old not in text:
        raise RuntimeError(f"userlistview marker not found in {path}")
    path.write_text(text.replace(old, new, 1), encoding="utf-8")
    print(f"{path.name}: switched to SwipeMenuRecyclerView")


def patch_strings() -> None:
    entries = {
        STRINGS: '    <string name="suredeleteuser">确定删除该用户？</string>\n',
        STRINGS_EN: '    <string name="suredeleteuser">Delete this user?</string>\n',
        STRINGS_BG: '    <string name="suredeleteuser">Изтриване на потребителя?</string>\n',
    }
    public = DECOMPILED / "res/values/public.xml"
    public_text = public.read_text(encoding="utf-8")
    if 'name="suredeleteuser"' not in public_text:
        public_text = public_text.replace(
            "</resources>",
            '    <public type="string" name="suredeleteuser" id="0x7f0d01a8" />\n</resources>',
            1,
        )
        public.write_text(public_text, encoding="utf-8")
        print("public.xml: registered suredeleteuser")
    for path, line in entries.items():
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if 'name="suredeleteuser"' in text:
            print(f"{path.name}: suredeleteuser already present")
            continue
        text = text.replace("</resources>", line + "</resources>", 1)
        path.write_text(text, encoding="utf-8")
        print(f"{path.name}: added suredeleteuser")


def patch_user_fragment(text: str) -> str:
    if "UserDeleteMenuCreator" in text:
        print("UserFragment: delete swipe already patched")
        return text
    if ".field private userlistview" in text and "userDeleteMenuCreator" not in text:
        text = text.replace(
            ".field private userlistview:Landroid/support/v7/widget/RecyclerView;\n",
            ".field private userlistview:Landroid/support/v7/widget/RecyclerView;\n\n" + FIELD_INIT,
            1,
        )
    text = text.replace(
        "    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V\n\n    return-void",
        CONSTRUCTOR_INIT,
        1,
    )
    old_oncreate = """    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userlistview:Landroid/support/v7/widget/RecyclerView;

    .line 66"""
    if old_oncreate not in text:
        raise RuntimeError("UserFragment onCreateView marker not found")
    text = text.replace(old_oncreate, ONCREATE_SWIPE, 1)
    print("UserFragment: swipe delete hooks added")
    return text


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    patch_layout(LAYOUT)
    if LAYOUT_NIGHT.exists():
        patch_layout(LAYOUT_NIGHT)
    patch_strings()
    (FRAGMENT_DIR / "UserFragment$UserDeleteMenuCreator.smali").write_text(SWIPE_CREATOR.strip() + "\n", encoding="utf-8")
    (FRAGMENT_DIR / "UserFragment$UserDeleteMenuClickListener.smali").write_text(SWIPE_CLICK.strip() + "\n", encoding="utf-8")
    (FRAGMENT_DIR / "UserFragment$UserDeleteMenuClickListener$1.smali").write_text(SWIPE_RUN.strip() + "\n", encoding="utf-8")
    USER_FRAGMENT.write_text(patch_user_fragment(USER_FRAGMENT.read_text(encoding="utf-8")), encoding="utf-8")
    print("User delete swipe patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
