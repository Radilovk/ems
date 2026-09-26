.class final Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Install"
.end annotation


# instance fields
.field private final c:Landroid/content/Context;

.field private final cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

.field private final f:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V
    .registers 4

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->c:Landroid/content/Context;

    .line 299
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->f:Ljava/io/File;

    .line 300
    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    .line 301
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->c:Landroid/content/Context;

    .line 307
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".updateFileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->f:Ljava/io/File;

    .line 306
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 308
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const v0, 0x10000001

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    if-eqz v0, :cond_42

    .line 313
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    const/4 v1, 0x1

    const-string v2, "installing"

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;->done(ZLjava/lang/String;)V
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    .line 319
    :cond_42
    goto :goto_4e

    .line 315
    :catchall_43
    move-exception v0

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    if-eqz v0, :cond_4e

    .line 317
    const/4 v1, 0x0

    const-string v2, "install_failed"

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;->done(ZLjava/lang/String;)V

    .line 320
    :cond_4e
    :goto_4e
    return-void
.end method
