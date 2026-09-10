.class final Lcom/isaigu/gymapp/utils/OKHttpUtils$2;
.super Ljava/lang/Object;
.source "OKHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/utils/OKHttpUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

.field final synthetic val$saveDir:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

    iput-object p2, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$saveDir:Ljava/lang/String;

    iput-object p3, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

    invoke-interface {v0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;->onDownloadFailed()V

    .line 295
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 18
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v7, 0x0

    .line 299
    .local v7, "is":Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v2, v11, [B

    .line 300
    .local v2, "buf":[B
    const/4 v8, 0x0

    .line 301
    .local v8, "len":I
    const/4 v5, 0x0

    .line 303
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$saveDir:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v10, "saveFileDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 305
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 308
    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v7

    .line 309
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v14

    .line 310
    .local v14, "total":J
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$url:Ljava/lang/String;

    invoke-static {v11}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 312
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/io/File;->setWritable(Z)Z

    .line 313
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/io/File;->setExecutable(Z)Z

    .line 314
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/io/File;->setReadable(Z)Z

    .line 316
    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const-wide/16 v12, 0x0

    .line 318
    .local v12, "sum":J
    :goto_0
    :try_start_1
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_4

    .line 319
    const/4 v11, 0x0

    invoke-virtual {v6, v2, v11, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 320
    int-to-long v0, v8

    move-wide/from16 v16, v0

    add-long v12, v12, v16

    .line 321
    long-to-float v11, v12

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v11, v11, v16

    long-to-float v0, v14

    move/from16 v16, v0

    div-float v11, v11, v16

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v11, v11, v16

    float-to-int v9, v11

    .line 323
    .local v9, "progress":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

    invoke-interface {v11, v9}, Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;->onDownloading(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 328
    .end local v9    # "progress":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 329
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

    invoke-interface {v11}, Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;->onDownloadFailed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    if-eqz v7, :cond_2

    .line 334
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 338
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 339
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 343
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void

    .line 325
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 327
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;->onDownloadSuccess(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 333
    if-eqz v7, :cond_5

    .line 334
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 338
    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    .line 339
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    move-object v5, v6

    .line 341
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 340
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    move-object v5, v6

    .line 342
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 332
    .end local v4    # "file":Ljava/io/File;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    :catchall_0
    move-exception v11

    .line 333
    :goto_5
    if-eqz v7, :cond_7

    .line 334
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 338
    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 339
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 341
    :cond_8
    :goto_7
    throw v11

    .line 335
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :catch_2
    move-exception v11

    goto :goto_4

    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v11

    goto :goto_2

    .line 340
    :catch_4
    move-exception v11

    goto :goto_3

    .line 335
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v16

    goto :goto_6

    .line 340
    :catch_6
    move-exception v16

    goto :goto_7

    .line 332
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 328
    .end local v4    # "file":Ljava/io/File;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    :catch_7
    move-exception v3

    goto :goto_1
.end method
