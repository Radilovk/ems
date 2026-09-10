.class Lcom/maning/updatelibrary/http/DownloadFileUtils$4;
.super Ljava/lang/Object;
.source "DownloadFileUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maning/updatelibrary/http/DownloadFileUtils;->startDonwload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maning/updatelibrary/http/DownloadFileUtils;

.field final synthetic val$downloadPath:Ljava/lang/String;

.field final synthetic val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;


# direct methods
.method constructor <init>(Lcom/maning/updatelibrary/http/DownloadFileUtils;Lcom/maning/updatelibrary/http/AbsFileProgressCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maning/updatelibrary/http/DownloadFileUtils;

    .line 222
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->this$0:Lcom/maning/updatelibrary/http/DownloadFileUtils;

    iput-object p2, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    iput-object p3, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->val$downloadPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 225
    invoke-static {}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$1;-><init>(Lcom/maning/updatelibrary/http/DownloadFileUtils$4;Lokhttp3/Call;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 11
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "is":Ljava/io/InputStream;
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 245
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 246
    .local v2, "len":I
    const/4 v3, 0x0

    .line 248
    .local v3, "fos":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->val$downloadPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->access$200(Ljava/lang/String;)V

    .line 250
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    .line 251
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 252
    .local v4, "total":J
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->val$downloadPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v6, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v7

    .line 254
    const-wide/16 v7, 0x0

    .line 255
    .local v7, "sum":J
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 256
    const/4 v9, 0x0

    invoke-virtual {v3, v1, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 257
    int-to-long v9, v2

    add-long/2addr v7, v9

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    invoke-static {}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->access$100()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$2;

    invoke-direct {v10, p0}, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$2;-><init>(Lcom/maning/updatelibrary/http/DownloadFileUtils$4;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v4    # "total":J
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "sum":J
    if-eqz v0, :cond_1

    .line 284
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v4

    goto :goto_2

    .line 287
    :cond_1
    :goto_1
    nop

    .line 289
    :goto_2
    nop

    .line 290
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 293
    :cond_2
    :goto_3
    goto :goto_6

    .line 292
    :catch_1
    move-exception v4

    .line 294
    goto :goto_6

    .line 282
    :catchall_0
    move-exception v4

    goto :goto_7

    .line 267
    :catch_2
    move-exception v4

    .line 268
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->access$100()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;

    invoke-direct {v6, p0, v4}, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;-><init>(Lcom/maning/updatelibrary/http/DownloadFileUtils$4;Ljava/lang/Exception;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 284
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 286
    :catch_3
    move-exception v4

    goto :goto_5

    .line 287
    :cond_3
    :goto_4
    nop

    .line 289
    :goto_5
    if-eqz v3, :cond_2

    .line 290
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 296
    :goto_6
    return-void

    .line 283
    :goto_7
    if-eqz v0, :cond_4

    .line 284
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 286
    :catch_4
    move-exception v5

    goto :goto_9

    .line 287
    :cond_4
    :goto_8
    nop

    .line 289
    :goto_9
    if-eqz v3, :cond_5

    .line 290
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_a

    .line 292
    :catch_5
    move-exception v5

    goto :goto_b

    .line 293
    :cond_5
    :goto_a
    nop

    .line 294
    :goto_b
    throw v4
.end method
