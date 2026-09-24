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

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->c:Landroid/content/Context;

    .line 293
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->f:Ljava/io/File;

    .line 294
    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    .line 295
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->c:Landroid/content/Context;

    .line 301
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".updateFileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->f:Ljava/io/File;

    .line 300
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const v0, 0x10000001

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    if-eqz v0, :cond_44

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    const/4 v1, 0x1

    const-string v2, "installing"

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;->done(ZLjava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_44} :catch_45

    .line 314
    :cond_44
    :goto_44
    return-void

    .line 309
    :catch_45
    move-exception v0

    .line 310
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    if-eqz v0, :cond_44

    .line 311
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;->cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    const/4 v1, 0x0

    const-string v2, "install_failed"

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;->done(ZLjava/lang/String;)V

    goto :goto_44
.end method
