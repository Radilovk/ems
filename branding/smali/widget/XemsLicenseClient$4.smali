.class Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 174
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 177
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "xems-update.apk"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    :try_start_e
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->url:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 180
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 181
    const v2, 0xea60

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 182
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 183
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 184
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 185
    const/high16 v4, 0x10000

    new-array v4, v4, [B

    .line 187
    :goto_3b
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_56

    .line 188
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 189
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_49} :catch_4a

    goto :goto_3b

    .line 200
    :catch_4a
    move-exception v0

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    const-string v1, "download_failed"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    invoke-static {v0, v7, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    .line 204
    :goto_55
    return-void

    .line 191
    :cond_56
    :try_start_56
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 192
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 193
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->hex([B)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->sha256:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_84

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->sha256:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    const/4 v2, 0x0

    const-string v3, "bad_checksum"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    goto :goto_55

    .line 199
    :cond_84
    # getter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$400()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$c:Landroid/content/Context;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    invoke-direct {v2, v3, v1, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Install;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_94} :catch_4a

    goto :goto_55
.end method
