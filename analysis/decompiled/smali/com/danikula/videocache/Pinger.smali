.class Lcom/danikula/videocache/Pinger;
.super Ljava/lang/Object;
.source "Pinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/Pinger$PingCallable;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final PING_REQUEST:Ljava/lang/String; = "ping"

.field private static final PING_RESPONSE:Ljava/lang/String; = "ping ok"


# instance fields
.field private final host:Ljava/lang/String;

.field private final pingExecutor:Ljava/util/concurrent/ExecutorService;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "Pinger"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/danikula/videocache/Pinger;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/danikula/videocache/Pinger;->pingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 44
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/danikula/videocache/Pinger;->host:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/danikula/videocache/Pinger;->port:I

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/danikula/videocache/Pinger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/danikula/videocache/Pinger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->pingServer()Z

    move-result v0

    return v0
.end method

.method private getDefaultProxies()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 80
    .local v0, "defaultProxySelector":Ljava/net/ProxySelector;
    new-instance v2, Ljava/net/URI;

    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->getPingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 81
    .end local v0    # "defaultProxySelector":Ljava/net/ProxySelector;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getPingUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 116
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s:%d/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/danikula/videocache/Pinger;->host:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/danikula/videocache/Pinger;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ping"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pingServer()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->getPingUrl()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "pingUrl":Ljava/lang/String;
    new-instance v5, Lcom/danikula/videocache/HttpUrlSource;

    invoke-direct {v5, v3}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Ljava/lang/String;)V

    .line 100
    .local v5, "source":Lcom/danikula/videocache/HttpUrlSource;
    :try_start_0
    const-string v6, "ping ok"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 101
    .local v1, "expectedResponse":[B
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/danikula/videocache/HttpUrlSource;->open(J)V

    .line 102
    array-length v6, v1

    new-array v4, v6, [B

    .line 103
    .local v4, "response":[B
    invoke-virtual {v5, v4}, Lcom/danikula/videocache/HttpUrlSource;->read([B)I

    .line 104
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 105
    .local v2, "pingOk":Z
    sget-object v6, Lcom/danikula/videocache/Pinger;->LOG:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ping response: `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "`, pinged? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v5}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    .end local v1    # "expectedResponse":[B
    .end local v2    # "pingOk":Z
    .end local v4    # "response":[B
    :goto_0
    return v2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lcom/danikula/videocache/ProxyCacheException;
    :try_start_1
    sget-object v6, Lcom/danikula/videocache/Pinger;->LOG:Lorg/slf4j/Logger;

    const-string v7, "Error reading ping response"

    invoke-interface {v6, v7, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    const/4 v2, 0x0

    .line 111
    invoke-virtual {v5}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    goto :goto_0

    .end local v0    # "e":Lcom/danikula/videocache/ProxyCacheException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    throw v6
.end method


# virtual methods
.method isPingRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "request"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "ping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method ping(II)Z
    .locals 12
    .param p1, "maxAttempts"    # I
    .param p2, "startTimeout"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 49
    if-lt p1, v7, :cond_0

    move v6, v7

    :goto_0
    invoke-static {v6}, Lcom/danikula/videocache/Preconditions;->checkArgument(Z)V

    .line 50
    if-lez p2, :cond_1

    move v6, v7

    :goto_1
    invoke-static {v6}, Lcom/danikula/videocache/Preconditions;->checkArgument(Z)V

    .line 52
    move v5, p2

    .line 53
    .local v5, "timeout":I
    const/4 v0, 0x0

    .line 54
    .local v0, "attempts":I
    :goto_2
    if-ge v0, p1, :cond_3

    .line 56
    :try_start_0
    iget-object v6, p0, Lcom/danikula/videocache/Pinger;->pingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/danikula/videocache/Pinger$PingCallable;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/danikula/videocache/Pinger$PingCallable;-><init>(Lcom/danikula/videocache/Pinger;Lcom/danikula/videocache/Pinger$1;)V

    invoke-interface {v6, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 57
    .local v3, "pingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    int-to-long v10, v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v10, v11, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 58
    .local v4, "pinged":Z
    if-eqz v4, :cond_2

    .line 74
    .end local v3    # "pingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v4    # "pinged":Z
    :goto_3
    return v7

    .end local v0    # "attempts":I
    .end local v5    # "timeout":I
    :cond_0
    move v6, v8

    .line 49
    goto :goto_0

    :cond_1
    move v6, v8

    .line 50
    goto :goto_1

    .line 61
    .restart local v0    # "attempts":I
    .restart local v5    # "timeout":I
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v6, Lcom/danikula/videocache/Pinger;->LOG:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error pinging server (attempt: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "). "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 66
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 67
    mul-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 63
    :catch_1
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    :goto_5
    sget-object v6, Lcom/danikula/videocache/Pinger;->LOG:Lorg/slf4j/Logger;

    const-string v9, "Error pinging server due to unexpected error"

    invoke-interface {v6, v9, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    div-int/lit8 v11, v5, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x2

    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->getDefaultProxies()Ljava/util/List;

    move-result-object v11

    aput-object v11, v10, v7

    .line 69
    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "error":Ljava/lang/String;
    sget-object v6, Lcom/danikula/videocache/Pinger;->LOG:Lorg/slf4j/Logger;

    new-instance v7, Lcom/danikula/videocache/ProxyCacheException;

    invoke-direct {v7, v2}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v2, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v8

    .line 74
    goto :goto_3

    .line 63
    .end local v2    # "error":Ljava/lang/String;
    :catch_2
    move-exception v1

    goto :goto_5
.end method

.method responseToPing(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 92
    .local v0, "out":Ljava/io/OutputStream;
    const-string v1, "HTTP/1.1 200 OK\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 93
    const-string v1, "ping ok"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 94
    return-void
.end method
