.class final Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;
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
    name = "ManualDone"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final status:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;->a:Landroid/app/Activity;

    .line 437
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;->status:Landroid/widget/TextView;

    .line 438
    return-void
.end method


# virtual methods
.method public done(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 442
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 443
    if-eqz p2, :cond_e

    .line 444
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;->status:Landroid/widget/TextView;

    const-string v1, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441\u044a\u0441 \u0441\u044a\u0440\u0432\u044a\u0440\u0430 \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u0438 \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0430 \u0438 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_d
    :goto_d
    return-void

    .line 447
    :cond_e
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "update_checked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 448
    if-nez p1, :cond_49

    .line 449
    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->clearMandatory(Landroid/content/SharedPreferences;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$600(Landroid/content/SharedPreferences;)V

    .line 450
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;->status:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0418\u043c\u0430\u0448 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0432\u0435\u0440\u0441\u0438\u044f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 453
    :cond_49
    iget-boolean v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-eqz v1, :cond_50

    .line 454
    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->rememberMandatory(Landroid/content/SharedPreferences;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$700(Landroid/content/SharedPreferences;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    .line 456
    :cond_50
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;->status:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0430\u043b\u0438\u0447\u043d\u0430 \u0435 \u0432\u0435\u0440\u0441\u0438\u044f "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-eqz v0, :cond_89

    const-string v0, " (\u0437\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u0430)"

    :goto_69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 458
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$ManualDone;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->offer(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Z)V

    goto :goto_d

    .line 456
    :cond_89
    const-string v0, ""

    goto :goto_69
.end method
