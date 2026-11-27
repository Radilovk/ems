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
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoDone;->a:Landroid/app/Activity;

    .line 351
    return-void
.end method


# virtual methods
.method public done(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 355
    if-eqz p2, :cond_4

    .line 376
    :cond_3
    :goto_3
    return-void

    .line 358
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "update_checked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    if-nez p1, :cond_1f

    .line 361
    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->clearMandatory(Landroid/content/SharedPreferences;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$600(Landroid/content/SharedPreferences;)V

    goto :goto_3

    .line 364
    :cond_1f
    iget-boolean v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-eqz v1, :cond_42

    .line 365
    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->rememberMandatory(Landroid/content/SharedPreferences;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$700(Landroid/content/SharedPreferences;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    .line 369
    :goto_26
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoDone;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 372
    iget-boolean v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez v1, :cond_3c

    const-string v1, "update_skipped"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionCode:I

    if-eq v0, v1, :cond_3

    .line 375
    :cond_3c
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoDone;->a:Landroid/app/Activity;

    invoke-static {v0, p1, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->offer(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Z)V

    goto :goto_3

    .line 367
    :cond_42
    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->clearMandatory(Landroid/content/SharedPreferences;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$600(Landroid/content/SharedPreferences;)V

    goto :goto_26
.end method
