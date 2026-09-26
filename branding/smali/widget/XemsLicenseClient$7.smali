.class Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;->downloadAndInstall(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

.field final synthetic val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V
    .registers 4

    .line 258
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 261
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;->val$c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "xems-update.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    const/4 v1, 0x0

    :try_start_e
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 264
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 265
    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 266
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 267
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 268
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 269
    const/high16 v5, 0x10000

    new-array v5, v5, [B

    .line 271
    :goto_3b
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_48

    .line 272
    invoke-virtual {v4, v5, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 273
    invoke-virtual {v3, v5, v1, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_3b

    .line 275
    :cond_48
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 276
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 277
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->hex([B)Ljava/lang/String;

    move-result-object v2

    .line 278
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->sha256:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_75

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->sha256:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 280
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    const-string v3, "bad_checksum"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    .line 281
    return-void

    .line 283
    :cond_75
    # getter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;->val$c:Landroid/content/Context;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    invoke-direct {v3, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_85
    .catchall {:try_start_e .. :try_end_85} :catchall_86

    .line 287
    goto :goto_91

    .line 284
    :catchall_86
    move-exception v2

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 286
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$7;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    const-string v2, "download_failed"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    .line 288
    :goto_91
    return-void
.end method
