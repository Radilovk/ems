.class final Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoDone;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutoDone"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoDone;->a:Landroid/app/Activity;

    .line 355
    return-void
.end method


# virtual methods
.method public done(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 359
    if-eqz p2, :cond_4

    .line 381
    :cond_3
    :goto_3
    return-void

    .line 362
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "update_checked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "update_checked_code"

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoDone;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appCode(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "app_latest"

    .line 364
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 365
    if-nez p1, :cond_31

    .line 366
    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->clearMandatory(Landroid/content/SharedPreferences;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$600(Landroid/content/SharedPreferences;)V

    goto :goto_3

    .line 369
    :cond_31
    iget-boolean v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-eqz v1, :cond_54

    .line 370
    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->rememberMandatory(Landroid/content/SharedPreferences;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$700(Landroid/content/SharedPreferences;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    .line 374
    :goto_38
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoDone;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 377
    iget-boolean v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez v1, :cond_4e

    const-string v1, "update_skipped"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionCode:I

    if-eq v0, v1, :cond_3

    .line 380
    :cond_4e
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoDone;->a:Landroid/app/Activity;

    invoke-static {v0, p1, v6}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->offer(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Z)V

    goto :goto_3

    .line 372
    :cond_54
    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->clearMandatory(Landroid/content/SharedPreferences;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$600(Landroid/content/SharedPreferences;)V

    goto :goto_38
.end method
