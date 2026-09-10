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

    .line 52
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpUrlSource;->length()J

    move-result-wide v0

    .line 53
    .local v0, "sourceLength":J
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 54
    .local v4, "sourceLengthKnown":Z
    :goto_0
    iget-object v5, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v5}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide v5

    .line 56
    .local v5, "cacheAvailable":J
    if-eqz v4, :cond_2

    iget-boolean v7, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v7, :cond_2

    iget-wide v7, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    long-to-float v7, v7

    long-to-float v8, v5

    long-to-float v9, v0

    const v10, 0x3e4ccccd    # 0.2f

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    return v2
.end method

.method private newResponseHeaders(Lcom/danikula/videocache/GetRequest;)Ljava/lang/String;
    .locals 18
    .param p1, "request"    # Lcom/danikula/videocache/GetRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v2}, Lcom/danikula/videocache/HttpUrlSource;->getMime()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "mime":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 62
    .local v3, "mimeKnown":Z
    iget-object v5, v0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v5}, Lcom/danikula/videocache/file/FileCache;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v5}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v5}, Lcom/danikula/videocache/HttpUrlSource;->length()J

    move-result-wide v5

    .line 63
    .local v5, "length":J
    :goto_0
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    if-ltz v10, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 64
    .local v7, "lengthKnown":Z
    :goto_1
    iget-boolean v8, v1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v8, :cond_2

    iget-wide v10, v1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    sub-long v10, v5, v10

    goto :goto_2

    :cond_2
    move-wide v10, v5

    .line 65
    .local v10, "contentLength":J
    :goto_2
    if-eqz v7, :cond_3

    iget-boolean v8, v1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 66
    .local v8, "addRange":Z
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v13, v1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v13, :cond_4

    const-string v13, "HTTP/1.1 206 PARTIAL CONTENT\n"

    goto :goto_4

    :cond_4
    const-string v13, "HTTP/1.1 200 OK\n"

    .line 67
    :goto_4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v13, "Accept-Ranges: bytes\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ""

    if-eqz v7, :cond_5

    new-array v14, v4, [Ljava/lang/Object;

    .line 69
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v9

    const-string v15, "Content-Length: %d\n"

    invoke-direct {v0, v15, v14}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_5

    :cond_5
    move-object v14, v13

    :goto_5
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_6

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    move-wide/from16 v16, v5

    .end local v5    # "length":J
    .local v16, "length":J
    iget-wide v4, v1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v14, v9

    const-wide/16 v4, 0x1

    sub-long v5, v16, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v14, v5

    const/4 v4, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v4

    const-string v4, "Content-Range: bytes %d-%d/%d\n"

    invoke-direct {v0, v4, v14}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .end local v16    # "length":J
    .restart local v5    # "length":J
    :cond_6
    move-wide/from16 v16, v5

    .end local v5    # "length":J
    .restart local v16    # "length":J
    move-object v4, v13

    :goto_6
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v9

    .line 71
    const-string v5, "Content-Type: %s\n"

    invoke-direct {v0, v5, v4}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_7
    nop

    :goto_7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v4, "\n"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private responseWithCache(Ljava/io/OutputStream;J)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 79
    .local v0, "buffer":[B
    :goto_0
    array-length v1, v0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/danikula/videocache/HttpProxyCache;->read([BJI)I

    move-result v1

    move v2, v1

    .local v2, "readBytes":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    int-to-long v3, v2

    add-long/2addr p2, v3

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

    .line 87
    new-instance v0, Lcom/danikula/videocache/HttpUrlSource;

    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-direct {v0, v1}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Lcom/danikula/videocache/HttpUrlSource;)V

    .line 89
    .local v0, "newSourceNoCache":Lcom/danikula/videocache/HttpUrlSource;
    long-to-int v1, p2

    int-to-long v1, v1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/danikula/videocache/HttpUrlSource;->open(J)V

    .line 90
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 92
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v0, v1}, Lcom/danikula/videocache/HttpUrlSource;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "readBytes":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 93
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 94
    int-to-long v4, v3

    add-long/2addr p2, v4

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v1    # "buffer":[B
    .end local v3    # "readBytes":I
    invoke-virtual {v0}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    .line 99
    nop

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    throw v1
.end method


# virtual methods
.method protected onCachePercentsAvailableChanged(I)V
    .locals 3
    .param p1, "percents"    # I

    .line 108
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCache;->listener:Lcom/danikula/videocache/CacheListener;

    if-eqz v0, :cond_0

    .line 109
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

    .line 39
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    .local v0, "out":Ljava/io/OutputStream;
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCache;->newResponseHeaders(Lcom/danikula/videocache/GetRequest;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "responseHeaders":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 43
    iget-wide v2, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    .line 44
    .local v2, "offset":J
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCache;->isUseCache(Lcom/danikula/videocache/GetRequest;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-direct {p0, v0, v2, v3}, Lcom/danikula/videocache/HttpProxyCache;->responseWithCache(Ljava/io/OutputStream;J)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0, v0, v2, v3}, Lcom/danikula/videocache/HttpProxyCache;->responseWithoutCache(Ljava/io/OutputStream;J)V

    .line 49
    :goto_0
    return-void
.end method

.method public registerCacheListener(Lcom/danikula/videocache/CacheListener;)V
    .locals 0
    .param p1, "cacheListener"    # Lcom/danikula/videocache/CacheListener;

    .line 35
    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCache;->listener:Lcom/danikula/videocache/CacheListener;

    .line 36
    return-void
.end method
