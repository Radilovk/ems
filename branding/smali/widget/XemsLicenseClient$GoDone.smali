.class final Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GoDone"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final prog:Landroid/app/AlertDialog;

.field private final u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Landroid/app/AlertDialog;)V
    .registers 4

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->a:Landroid/app/Activity;

    .line 557
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    .line 558
    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->prog:Landroid/app/AlertDialog;

    .line 559
    return-void
.end method


# virtual methods
.method public done(ZLjava/lang/String;)V
    .registers 7

    .prologue
    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->prog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_65

    .line 567
    :goto_5
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 582
    :cond_d
    :goto_d
    return-void

    .line 570
    :cond_e
    if-eqz p1, :cond_20

    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-eqz v0, :cond_d

    .line 573
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    const-string v2, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435\u0442\u043e \u0435 \u0432 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d. \u0410\u043a\u043e \u0441\u0438 \u0433\u043e \u043e\u0442\u043a\u0430\u0437\u0430\u043b, \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u041e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a\u201c."

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->offerRetry(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    goto :goto_d

    .line 577
    :cond_20
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-eqz v0, :cond_47

    .line 578
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041d\u0435 \u0441\u0442\u0430\u043d\u0430 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). \u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0430 \u0438 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->offerRetry(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    goto :goto_d

    .line 580
    :cond_47
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0435\u0443\u0441\u043f\u0435\u0448\u043d\u043e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 565
    :catch_65
    move-exception v0

    goto :goto_5
.end method
