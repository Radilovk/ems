.class public Landroid/support/v4/content/pm/ShortcutManagerCompat;
.super Ljava/lang/Object;
.source "ShortcutManagerCompat.java"


# static fields
.field static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field static final INSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.permission.INSTALL_SHORTCUT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShortcutResultIntent(Landroid/content/Context;Landroid/support/v4/content/pm/ShortcutInfoCompat;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcut"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "result":Landroid/content/Intent;
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {p0, p1}, Landroid/support/v4/content/pm/ShortcutManagerCompatApi26;->createShortcutResultIntent(Landroid/content/Context;Landroid/support/v4/content/pm/ShortcutInfoCompat;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    :cond_0
    if-nez v0, :cond_1

    .line 133
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 135
    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static isRequestPinShortcutSupported(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p0}, Landroid/support/v4/content/pm/ShortcutManagerCompatApi26;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 53
    :cond_0
    const-string v0, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 55
    return v2

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 59
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 60
    .local v4, "permission":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 63
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "permission":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 61
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "permission":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 64
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "permission":Ljava/lang/String;
    :cond_4
    return v2
.end method

.method public static requestPinShortcut(Landroid/content/Context;Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcut"    # Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .param p2, "callback"    # Landroid/content/IntentSender;

    .line 86
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/pm/ShortcutManagerCompatApi26;->requestPinShortcut(Landroid/content/Context;Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z

    move-result v0

    return v0

    .line 90
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    return v1

    .line 102
    :cond_2
    const/4 v4, 0x0

    new-instance v5, Landroid/support/v4/content/pm/ShortcutManagerCompat$1;

    invoke-direct {v5, p2}, Landroid/support/v4/content/pm/ShortcutManagerCompat$1;-><init>(Landroid/content/IntentSender;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 112
    return v1
.end method
