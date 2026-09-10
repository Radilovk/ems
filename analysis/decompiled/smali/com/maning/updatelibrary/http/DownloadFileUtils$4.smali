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

    .prologue
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

    .prologue
    .line 225
    invoke-static {}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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
    .locals 14
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v5, 0x0

    .line 244
    .local v5, "is":Ljava/io/InputStream;
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 245
    .local v0, "buf":[B
    const/4 v6, 0x0

    .line 246
    .local v6, "len":I
    const/4 v3, 0x0

    .line 248
    .local v3, "fos":Ljava/io/FileOutputStream;
    iget-object v7, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->val$downloadPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->access$200(Ljava/lang/String;)V

    .line 250
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    .line 251
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    .line 252
    .local v10, "total":J
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->val$downloadPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    const-wide/16 v8, 0x0

    .line 255
    .local v8, "sum":J
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 256
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 257
    int-to-long v12, v6

    add-long/2addr v8, v12

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    invoke-static {}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->access$100()Landroid/os/Handler;

    move-result-object v7

    new-instance v12, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$2;

    invoke-direct {v12, p0}, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$2;-><init>(Lcom/maning/updatelibrary/http/DownloadFileUtils$4;)V

    invoke-virtual {v7, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 283
    if-eqz v5, :cond_1

    .line 284
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 289
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 290
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v3, v4

    .line 296
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "sum":J
    .end local v10    # "total":J
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return-void

    .line 292
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "sum":J
    .restart local v10    # "total":J
    :catch_0
    move-exception v7

    move-object v3, v4

    .line 294
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 267
    .end local v2    # "file":Ljava/io/File;
    .end local v8    # "sum":J
    .end local v10    # "total":J
    :catch_1
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->access$100()Landroid/os/Handler;

    move-result-object v7

    new-instance v12, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;

    invoke-direct {v12, p0, v1}, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;-><init>(Lcom/maning/updatelibrary/http/DownloadFileUtils$4;Ljava/lang/Exception;)V

    invoke-virtual {v7, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 283
    if-eqz v5, :cond_4

    .line 284
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 289
    :cond_4
    :goto_4
    if-eqz v3, :cond_3

    .line 290
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 292
    :catch_2
    move-exception v7

    goto :goto_2

    .line 282
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 283
    :goto_5
    if-eqz v5, :cond_5

    .line 284
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 289
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 290
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 293
    :cond_6
    :goto_7
    throw v7

    .line 286
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "sum":J
    .restart local v10    # "total":J
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "sum":J
    .end local v10    # "total":J
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v7

    goto :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v12

    goto :goto_6

    .line 292
    :catch_6
    move-exception v12

    goto :goto_7

    .line 282
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "sum":J
    .restart local v10    # "total":J
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 267
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method
