.class public final Lcom/isaigu/gymapp/wearable/XemsAutoStart;
.super Landroid/content/BroadcastReceiver;
.source "XemsAutoStart.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 18
    if-eqz p2, :cond_e

    :try_start_2
    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 29
    :cond_e
    :goto_e
    return-void

    .line 21
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_e

    .line 23
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_25} :catch_26

    goto :goto_e

    .line 26
    :catch_26
    move-exception v0

    .line 27
    const-string v1, "xems"

    const-string v2, "XemsAutoStart"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method
