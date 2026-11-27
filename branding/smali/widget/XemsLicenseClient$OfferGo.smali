.class final Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfferGo"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V
    .registers 3

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;->a:Landroid/app/Activity;

    .line 535
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    .line 536
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .prologue
    .line 540
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0418\u0437\u0442\u0435\u0433\u043b\u044f\u043d\u0435\u2026"

    .line 541
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0412\u0435\u0440\u0441\u0438\u044f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0441\u0435 \u0438\u0437\u0442\u0435\u0433\u043b\u044f. \u041d\u0435 \u0437\u0430\u0442\u0432\u0430\u0440\u044f\u0439 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez v0, :cond_55

    const/4 v0, 0x1

    .line 543
    :goto_35
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 546
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferGo;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    invoke-direct {v3, v4, v5, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$GoDone;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Landroid/app/AlertDialog;)V

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->downloadAndInstall(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    .line 547
    return-void

    .line 542
    :cond_55
    const/4 v0, 0x0

    goto :goto_35
.end method
