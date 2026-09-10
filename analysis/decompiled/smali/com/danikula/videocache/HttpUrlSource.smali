.class public Lcom/danikula/videocache/HttpUrlSource;
.super Ljava/lang/Object;
.source "HttpUrlSource.java"

# interfaces
.implements Lcom/danikula/videocache/Source;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final MAX_REDIRECTS:I = 0x5


# instance fields
.field private connection:Ljava/net/HttpURLConnection;

.field private inputStream:Ljava/io/InputStream;

.field private sourceInfo:Lcom/danikula/videocache/SourceInfo;

.field private final sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "HttpUrlSource"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/danikula/videocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/danikula/videocache/HttpUrlSource;)V
    .locals 1
    .param p1, "source"    # Lcom/danikula/videocache/HttpUrlSource;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p1, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iput-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    .line 54
    iget-object v0, p1, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iput-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorageFactory;->newEmptySourceInfoStorage()Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sourceInfoStorage"    # Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p2}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iput-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    .line 47
    invoke-interface {p2, p1}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;->get(Ljava/lang/String;)Lcom/danikula/videocache/SourceInfo;

    move-result-object v0

    .line 48
    .local v0, "sourceInfo":Lcom/danikula/videocache/SourceInfo;
    if-eqz v0, :cond_0

    .line 49
    .end local v0    # "sourceInfo":Lcom/danikula/videocache/SourceInfo;
    :goto_0
    iput-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    .line 50
    return-void

    .line 48
    .restart local v0    # "sourceInfo":Lcom/danikula/videocache/SourceInfo;
    :cond_0
    new-instance v0, Lcom/danikula/videocache/SourceInfo;

    .end local v0    # "sourceInfo":Lcom/danikula/videocache/SourceInfo;
    const-wide/32 v2, -0x80000000

    .line 49
    invoke-static {p1}, Lcom/danikula/videocache/ProxyCacheUtils;->getSupposablyMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/danikula/videocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method private fetchContentInfo()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 124
    sget-object v6, Lcom/danikula/videocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read content info from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v8, v8, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 125
    const/4 v5, 0x0

    .line 126
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 128
    .local v1, "inputStream":Ljava/io/InputStream;
    const-wide/16 v6, 0x0

    const/16 v8, 0x2710

    :try_start_0
    invoke-direct {p0, v6, v7, v8}, Lcom/danikula/videocache/HttpUrlSource;->openConnection(JI)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 129
    invoke-direct {p0, v5}, Lcom/danikula/videocache/HttpUrlSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v2

    .line 130
    .local v2, "length":J
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "mime":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 132
    new-instance v6, Lcom/danikula/videocache/SourceInfo;

    iget-object v7, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v7, v7, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/danikula/videocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v6, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    .line 133
    iget-object v6, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iget-object v7, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v7, v7, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    iget-object v8, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    invoke-interface {v6, v7, v8}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;->put(Ljava/lang/String;Lcom/danikula/videocache/SourceInfo;)V

    .line 134
    sget-object v6, Lcom/danikula/videocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Source info fetched: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {v1}, Lcom/danikula/videocache/ProxyCacheUtils;->close(Ljava/io/Closeable;)V

    .line 139
    if-eqz v5, :cond_0

    .line 140
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    .end local v2    # "length":J
    .end local v4    # "mime":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v6, Lcom/danikula/videocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error fetching info from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v8, v8, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-static {v1}, Lcom/danikula/videocache/ProxyCacheUtils;->close(Ljava/io/Closeable;)V

    .line 139
    if-eqz v5, :cond_0

    .line 140
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v1}, Lcom/danikula/videocache/ProxyCacheUtils;->close(Ljava/io/Closeable;)V

    .line 139
    if-eqz v5, :cond_1

    .line 140
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v6
.end method

.method private getContentLength(Ljava/net/HttpURLConnection;)J
    .locals 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 86
    const-string v1, "Content-Length"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "contentLengthValue":Ljava/lang/String;
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private openConnection(JI)Ljava/net/HttpURLConnection;
    .locals 15
    .param p1, "offset"    # J
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 148
    const/4 v4, 0x0

    .line 149
    .local v4, "redirectCount":I
    iget-object v7, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v6, v7, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    .line 151
    .local v6, "url":Ljava/lang/String;
    :cond_0
    sget-object v8, Lcom/danikula/videocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Open connection "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    cmp-long v7, p1, v12

    if-lez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " with offset "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 152
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 153
    .local v3, "connection":Ljava/net/HttpURLConnection;
    cmp-long v7, p1, v12

    if-lez v7, :cond_1

    .line 154
    const-string v7, "Range"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    if-lez p3, :cond_2

    .line 157
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 158
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 160
    :cond_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 161
    .local v2, "code":I
    const/16 v7, 0x12d

    if-eq v2, v7, :cond_3

    const/16 v7, 0x12e

    if-eq v2, v7, :cond_3

    const/16 v7, 0x12f

    if-ne v2, v7, :cond_6

    :cond_3
    const/4 v5, 0x1

    .line 162
    .local v5, "redirected":Z
    :goto_1
    if-eqz v5, :cond_4

    .line 163
    const-string v7, "Location"

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 165
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 167
    :cond_4
    const/4 v7, 0x5

    if-le v4, v7, :cond_7

    .line 168
    new-instance v7, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Too many redirects: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 151
    .end local v2    # "code":I
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "redirected":Z
    :cond_5
    const-string v7, ""

    goto/16 :goto_0

    .line 161
    .restart local v2    # "code":I
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 170
    .restart local v5    # "redirected":Z
    :cond_7
    if-nez v5, :cond_0

    .line 171
    return-object v3
.end method

.method private readSourceAvailableBytes(Ljava/net/HttpURLConnection;JI)J
    .locals 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "offset"    # J
    .param p4, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpUrlSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    .line 81
    .local v0, "contentLength":J
    const/16 v2, 0xc8

    if-ne p4, v2, :cond_0

    .end local v0    # "contentLength":J
    :goto_0
    return-wide v0

    .restart local v0    # "contentLength":J
    :cond_0
    const/16 v2, 0xce

    if-ne p4, v2, :cond_1

    add-long/2addr v0, p2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-wide v0, v2, Lcom/danikula/videocache/SourceInfo;->length:J

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v1, "Wait... but why? WTF!? Really shouldn\'t happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues."

    .line 100
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 101
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "message":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v2, Lcom/danikula/videocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :("

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized getMime()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v0, v0, Lcom/danikula/videocache/SourceInfo;->mime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/danikula/videocache/HttpUrlSource;->fetchContentInfo()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v0, v0, Lcom/danikula/videocache/SourceInfo;->mime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v0, v0, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized length()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-wide v0, v0, Lcom/danikula/videocache/SourceInfo;->length:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/danikula/videocache/HttpUrlSource;->fetchContentInfo()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-wide v0, v0, Lcom/danikula/videocache/SourceInfo;->length:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open(J)V
    .locals 7
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v4, -0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v4}, Lcom/danikula/videocache/HttpUrlSource;->openConnection(JI)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    .line 69
    iget-object v4, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "mime":Ljava/lang/String;
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v4, p0, Lcom/danikula/videocache/HttpUrlSource;->inputStream:Ljava/io/InputStream;

    .line 71
    iget-object v4, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-direct {p0, v4, p1, p2, v5}, Lcom/danikula/videocache/HttpUrlSource;->readSourceAvailableBytes(Ljava/net/HttpURLConnection;JI)J

    move-result-wide v2

    .line 72
    .local v2, "length":J
    new-instance v4, Lcom/danikula/videocache/SourceInfo;

    iget-object v5, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v5, v5, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v3, v1}, Lcom/danikula/videocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v4, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    .line 73
    iget-object v4, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iget-object v5, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v5, v5, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    iget-object v6, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    invoke-interface {v4, v5, v6}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;->put(Ljava/lang/String;Lcom/danikula/videocache/SourceInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 74
    .end local v1    # "mime":Ljava/lang/String;
    .end local v2    # "length":J
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error opening connection for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v6, v6, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public read([B)I
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading data from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v3, v3, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": connection is absent!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->inputStream:Ljava/io/InputStream;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/InterruptedIOException;
    new-instance v1, Lcom/danikula/videocache/InterruptedProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v3, v3, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is interrupted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/InterruptedProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 118
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading data from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v3, v3, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpUrlSource{sourceInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
