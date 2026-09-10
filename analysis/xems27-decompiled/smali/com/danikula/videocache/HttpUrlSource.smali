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

    .line 42
    invoke-static {}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorageFactory;->newEmptySourceInfoStorage()Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sourceInfoStorage"    # Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p2}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iput-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    .line 47
    invoke-interface {p2, p1}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;->get(Ljava/lang/String;)Lcom/danikula/videocache/SourceInfo;

    move-result-object v0

    .line 48
    .local v0, "sourceInfo":Lcom/danikula/videocache/SourceInfo;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/danikula/videocache/SourceInfo;

    const-wide/32 v2, -0x80000000

    .line 49
    invoke-static {p1}, Lcom/danikula/videocache/ProxyCacheUtils;->getSupposablyMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/danikula/videocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    .line 50
    return-void
.end method

.method private fetchContentInfo()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/danikula/videocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read content info from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v2, v2, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 128
    .local v1, "inputStream":Ljava/io/InputStream;
    const-wide/16 v2, 0x0

    const/16 v4, 0x2710

    :try_start_0
    invoke-direct {p0, v2, v3, v4}, Lcom/danikula/videocache/HttpUrlSource;->openConnection(JI)Ljava/net/HttpURLConnection;

    move-result-object v2

    move-object v0, v2

    .line 129
    invoke-direct {p0, v0}, Lcom/danikula/videocache/HttpUrlSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v2

    .line 130
    .local v2, "length":J
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "mime":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 132
    new-instance v5, Lcom/danikula/videocache/SourceInfo;

    iget-object v6, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v6, v6, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-direct {v5, v6, v2, v3, v4}, Lcom/danikula/videocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v5, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    .line 133
    iget-object v6, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iget-object v5, v5, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    iget-object v7, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    invoke-interface {v6, v5, v7}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;->put(Ljava/lang/String;Lcom/danikula/videocache/SourceInfo;)V

    .line 134
    sget-object v5, Lcom/danikula/videocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Source info fetched: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v2    # "length":J
    .end local v4    # "mime":Ljava/lang/String;
    invoke-static {v1}, Lcom/danikula/videocache/ProxyCacheUtils;->close(Ljava/io/Closeable;)V

    .line 139
    if-eqz v0, :cond_0

    .line 140
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lcom/danikula/videocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error fetching info from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v5, v5, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/danikula/videocache/ProxyCacheUtils;->close(Ljava/io/Closeable;)V

    .line 139
    if-eqz v0, :cond_0

    .line 140
    goto :goto_0

    .line 143
    :cond_0
    :goto_1
    return-void

    .line 138
    :goto_2
    invoke-static {v1}, Lcom/danikula/videocache/ProxyCacheUtils;->close(Ljava/io/Closeable;)V

    .line 139
    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v2
.end method

.method private getContentLength(Ljava/net/HttpURLConnection;)J
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 86
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "contentLengthValue":Ljava/lang/String;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method private openConnection(JI)Ljava/net/HttpURLConnection;
    .locals 8
    .param p1, "offset"    # J
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "redirectCount":I
    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v1, v1, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    .line 151
    .local v1, "url":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/danikula/videocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-lez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " with offset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v6, ""

    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 152
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 153
    .local v2, "connection":Ljava/net/HttpURLConnection;
    cmp-long v3, p1, v4

    if-lez v3, :cond_2

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Range"

    invoke-virtual {v2, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_2
    if-lez p3, :cond_3

    .line 157
    invoke-virtual {v2, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 158
    invoke-virtual {v2, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 160
    :cond_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 161
    .local v3, "code":I
    const/16 v4, 0x12d

    if-eq v3, v4, :cond_5

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x12f

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    .line 162
    .local v4, "redirected":Z
    :goto_2
    if-eqz v4, :cond_6

    .line 163
    const-string v5, "Location"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    add-int/lit8 v0, v0, 0x1

    .line 165
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 167
    :cond_6
    const/4 v5, 0x5

    if-gt v0, v5, :cond_7

    .line 170
    .end local v3    # "code":I
    if-nez v4, :cond_0

    .line 171
    return-object v2

    .line 168
    .restart local v3    # "code":I
    :cond_7
    new-instance v5, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many redirects: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v5
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

    .line 80
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpUrlSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    .line 81
    .local v0, "contentLength":J
    const/16 v2, 0xc8

    if-ne p4, v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0xce

    if-ne p4, v2, :cond_1

    add-long v2, v0, p2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-wide v2, v2, Lcom/danikula/videocache/SourceInfo;->length:J

    :goto_0
    return-wide v2
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/danikula/videocache/HttpUrlSource;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :("

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 95
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    const-string v1, "Wait... but why? WTF!? Really shouldn\'t happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues."

    .line 100
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 107
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void
.end method

.method public declared-synchronized getMime()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v0, v0, Lcom/danikula/videocache/SourceInfo;->mime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/danikula/videocache/HttpUrlSource;->fetchContentInfo()V

    .line 178
    .end local p0    # "this":Lcom/danikula/videocache/HttpUrlSource;
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v0, v0, Lcom/danikula/videocache/SourceInfo;->mime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v0, v0, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-wide v0, v0, Lcom/danikula/videocache/SourceInfo;->length:J

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/danikula/videocache/HttpUrlSource;->fetchContentInfo()V

    .line 62
    .end local p0    # "this":Lcom/danikula/videocache/HttpUrlSource;
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-wide v0, v0, Lcom/danikula/videocache/SourceInfo;->length:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open(J)V
    .locals 6
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 68
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/danikula/videocache/HttpUrlSource;->openConnection(JI)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    .line 69
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "mime":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->inputStream:Ljava/io/InputStream;

    .line 71
    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/danikula/videocache/HttpUrlSource;->readSourceAvailableBytes(Ljava/net/HttpURLConnection;JI)J

    move-result-wide v1

    .line 72
    .local v1, "length":J
    new-instance v3, Lcom/danikula/videocache/SourceInfo;

    iget-object v4, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v4, v4, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/danikula/videocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    .line 73
    iget-object v4, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iget-object v3, v3, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    invoke-interface {v4, v3, v5}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;->put(Ljava/lang/String;Lcom/danikula/videocache/SourceInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "mime":Ljava/lang/String;
    .end local v1    # "length":J
    nop

    .line 77
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v3, v3, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read([B)I
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->inputStream:Ljava/io/InputStream;

    const-string v1, "Error reading data from "

    if-eqz v0, :cond_0

    .line 115
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v1, v1, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/InterruptedIOException;
    new-instance v1, Lcom/danikula/videocache/InterruptedProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v3, v3, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is interrupted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/InterruptedProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_0
    new-instance v0, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v1, v1, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": connection is absent!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpUrlSource{sourceInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
