.class Lcom/danikula/videocache/HttpProxyCache;
.super Lcom/danikula/videocache/ProxyCache;
.source "HttpProxyCache.java"


# static fields
.field private static final NO_CACHE_BARRIER:F = 0.2f


# instance fields
.field private final cache:Lcom/danikula/videocache/file/FileCache;

.field private listener:Lcom/danikula/videocache/CacheListener;

.field private final source:Lcom/danikula/videocache/HttpUrlSource;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/HttpUrlSource;Lcom/danikula/videocache/file/FileCache;)V
    .locals 0
    .param p1, "source"    # Lcom/danikula/videocache/HttpUrlSource;
    .param p2, "cache"    # Lcom/danikula/videocache/file/FileCache;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/danikula/videocache/ProxyCache;-><init>(Lcom/danikula/videocache/Source;Lcom/danikula/videocache/Cache;)V

    .line 30
    iput-object p2, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    .line 31
    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    .line 32
    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 103
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isUseCache(Lcom/danikula/videocache/GetRequest;)Z
    .locals 11
    .param p1, "request"    # Lcom/danikula/videocache/GetRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 52
    iget-object v7, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v7}, Lcom/danikula/videocache/HttpUrlSource;->length()J

    move-result-wide v2

    .line 53
    .local v2, "sourceLength":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_2

    move v4, v5

    .line 54
    .local v4, "sourceLengthKnown":Z
    :goto_0
    iget-object v7, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v7}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide v0

    .line 56
    .local v0, "cacheAvailable":J
    if-eqz v4, :cond_0

    iget-boolean v7, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v7, :cond_0

    iget-wide v8, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    long-to-float v7, v8

    long-to-float v8, v0

    long-to-float v9, v2

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    :cond_0
    move v6, v5

    :cond_1
    return v6

    .end local v0    # "cacheAvailable":J
    .end local v4    # "sourceLengthKnown":Z
    :cond_2
    move v4, v6

    .line 53
    goto :goto_0
.end method

.method private newResponseHeaders(Lcom/danikula/videocache/GetRequest;)Ljava/lang/String;
    .locals 14
    .param p1, "request"    # Lcom/danikula/videocache/GetRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v8, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v8}, Lcom/danikula/videocache/HttpUrlSource;->getMime()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "mime":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v7, 0x1

    .line 62
    .local v7, "mimeKnown":Z
    :goto_0
    iget-object v8, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v8}, Lcom/danikula/videocache/file/FileCache;->isCompleted()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v8}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide v4

    .line 63
    .local v4, "length":J
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_2

    const/4 v1, 0x1

    .line 64
    .local v1, "lengthKnown":Z
    :goto_2
    iget-boolean v8, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v8, :cond_3

    iget-wide v8, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    sub-long v2, v4, v8

    .line 65
    .local v2, "contentLength":J
    :goto_3
    if-eqz v1, :cond_4

    iget-boolean v8, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v8, :cond_4

    const/4 v0, 0x1

    .line 66
    .local v0, "addRange":Z
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v8, :cond_5

    const-string v8, "HTTP/1.1 206 PARTIAL CONTENT\n"

    .line 67
    :goto_5
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Accept-Ranges: bytes\n"

    .line 68
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v1, :cond_6

    const-string v8, "Content-Length: %d\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {p0, v8, v10}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_6
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v0, :cond_7

    const-string v8, "Content-Range: bytes %d-%d/%d\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-wide v12, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    .line 70
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-wide/16 v12, 0x1

    sub-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {p0, v8, v10}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_7
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v7, :cond_8

    const-string v8, "Content-Type: %s\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    .line 71
    invoke-direct {p0, v8, v10}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_8
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    .line 72
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 61
    .end local v0    # "addRange":Z
    .end local v1    # "lengthKnown":Z
    .end local v2    # "contentLength":J
    .end local v4    # "length":J
    .end local v7    # "mimeKnown":Z
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 62
    .restart local v7    # "mimeKnown":Z
    :cond_1
    iget-object v8, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v8}, Lcom/danikula/videocache/HttpUrlSource;->length()J

    move-result-wide v4

    goto/16 :goto_1

    .line 63
    .restart local v4    # "length":J
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_2

    .restart local v1    # "lengthKnown":Z
    :cond_3
    move-wide v2, v4

    .line 64
    goto/16 :goto_3

    .line 65
    .restart local v2    # "contentLength":J
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 66
    .restart local v0    # "addRange":Z
    :cond_5
    const-string v8, "HTTP/1.1 200 OK\n"

    goto :goto_5

    .line 69
    :cond_6
    const-string v8, ""

    goto :goto_6

    .line 70
    :cond_7
    const-string v8, ""

    goto :goto_7

    .line 71
    :cond_8
    const-string v8, ""

    goto :goto_8
.end method

.method private responseWithCache(Ljava/io/OutputStream;J)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 79
    .local v0, "buffer":[B
    :goto_0
    array-length v2, v0

    invoke-virtual {p0, v0, p2, p3, v2}, Lcom/danikula/videocache/HttpProxyCache;->read([BJI)I

    move-result v1

    .local v1, "readBytes":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    int-to-long v2, v1

    add-long/2addr p2, v2

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 84
    return-void
.end method

.method private responseWithoutCache(Ljava/io/OutputStream;J)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Lcom/danikula/videocache/HttpUrlSource;

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-direct {v1, v3}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Lcom/danikula/videocache/HttpUrlSource;)V

    .line 89
    .local v1, "newSourceNoCache":Lcom/danikula/videocache/HttpUrlSource;
    long-to-int v3, p2

    int-to-long v4, v3

    :try_start_0
    invoke-virtual {v1, v4, v5}, Lcom/danikula/videocache/HttpUrlSource;->open(J)V

    .line 90
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 92
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Lcom/danikula/videocache/HttpUrlSource;->read([B)I

    move-result v2

    .local v2, "readBytes":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 93
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 94
    int-to-long v4, v2

    add-long/2addr p2, v4

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {v1}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    .line 100
    return-void

    .line 98
    .end local v0    # "buffer":[B
    .end local v2    # "readBytes":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    throw v3
.end method


# virtual methods
.method protected onCachePercentsAvailableChanged(I)V
    .locals 3
    .param p1, "percents"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCache;->listener:Lcom/danikula/videocache/CacheListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCache;->listener:Lcom/danikula/videocache/CacheListener;

    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    iget-object v1, v1, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v2}, Lcom/danikula/videocache/HttpUrlSource;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/danikula/videocache/CacheListener;->onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V

    .line 111
    :cond_0
    return-void
.end method

.method public processRequest(Lcom/danikula/videocache/GetRequest;Ljava/net/Socket;)V
    .locals 5
    .param p1, "request"    # Lcom/danikula/videocache/GetRequest;
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    .local v2, "out":Ljava/io/OutputStream;
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCache;->newResponseHeaders(Lcom/danikula/videocache/GetRequest;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "responseHeaders":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 43
    iget-wide v0, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    .line 44
    .local v0, "offset":J
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCache;->isUseCache(Lcom/danikula/videocache/GetRequest;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-direct {p0, v2, v0, v1}, Lcom/danikula/videocache/HttpProxyCache;->responseWithCache(Ljava/io/OutputStream;J)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-direct {p0, v2, v0, v1}, Lcom/danikula/videocache/HttpProxyCache;->responseWithoutCache(Ljava/io/OutputStream;J)V

    goto :goto_0
.end method

.method public registerCacheListener(Lcom/danikula/videocache/CacheListener;)V
    .locals 0
    .param p1, "cacheListener"    # Lcom/danikula/videocache/CacheListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCache;->listener:Lcom/danikula/videocache/CacheListener;

    .line 36
    return-void
.end method
