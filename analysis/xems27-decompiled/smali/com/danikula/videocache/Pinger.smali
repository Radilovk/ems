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

    .line 33
    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->pingServer()Z

    move-result v0

    return v0
.end method

.method private getDefaultProxies()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 80
    .local v0, "defaultProxySelector":Ljava/net/ProxySelector;
    new-instance v1, Ljava/net/URI;

    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->getPingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 81
    .end local v0    # "defaultProxySelector":Ljava/net/ProxySelector;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getPingUrl()Ljava/lang/String;
    .locals 4

    .line 116
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/danikula/videocache/Pinger;->host:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/danikula/videocache/Pinger;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "ping"

    aput-object v3, v1, v2

    const-string v2, "http://%s:%d/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pingServer()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->getPingUrl()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "pingUrl":Ljava/lang/String;
    new-instance v1, Lcom/danikula/videocache/HttpUrlSource;

    invoke-direct {v1, v0}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "source":Lcom/danikula/videocache/HttpUrlSource;
    :try_start_0
    const-string v2, "ping ok"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 101
    .local v2, "expectedResponse":[B
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/danikula/videocache/HttpUrlSource;->open(J)V

    .line 102
    array-length v3, v2

    new-array v3, v3, [B

    .line 103
    .local v3, "response":[B
    invoke-virtual {v1, v3}, Lcom/danikula/videocache/HttpUrlSource;->read([B)I

    .line 104
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .line 105
    .local v4, "pingOk":Z
    sget-object v5, Lcom/danikula/videocache/Pinger;->LOG:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ping response: `"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "`, pinged? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    nop

    .line 111
    invoke-virtual {v1}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    return v4

    .end local v2    # "expectedResponse":[B
    .end local v3    # "response":[B
    .end local v4    # "pingOk":Z
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Lcom/danikula/videocache/ProxyCacheException;
    :try_start_1
    sget-object v3, Lcom/danikula/videocache/Pinger;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Error reading ping response"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    const/4 v3, 0x0

    .line 111
    invoke-virtual {v1}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    return v3

    .end local v2    # "e":Lcom/danikula/videocache/ProxyCacheException;
    :goto_0
    invoke-virtual {v1}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    throw v2
.end method


# virtual methods
.method isPingRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "request"    # Ljava/lang/String;

    .line 87
    const-string v0, "ping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method ping(II)Z
    .locals 8
    .param p1, "maxAttempts"    # I
    .param p2, "startTimeout"    # I

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/danikula/videocache/Preconditions;->checkArgument(Z)V

    .line 50
    if-lez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/danikula/videocache/Preconditions;->checkArgument(Z)V

    .line 52
    move v2, p2

    .line 53
    .local v2, "timeout":I
    const/4 v3, 0x0

    .line 54
    .local v3, "attempts":I
    :goto_2
    if-ge v3, p1, :cond_3

    .line 56
    :try_start_0
    iget-object v4, p0, Lcom/danikula/videocache/Pinger;->pingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/danikula/videocache/Pinger$PingCallable;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/danikula/videocache/Pinger$PingCallable;-><init>(Lcom/danikula/videocache/Pinger;Lcom/danikula/videocache/Pinger$1;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 57
    .local v4, "pingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    int-to-long v5, v2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v5, "pinged":Z
    if-eqz v5, :cond_2

    .line 59
    return v1

    .line 58
    .end local v4    # "pingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v5    # "pinged":Z
    :cond_2
    goto :goto_4

    .line 63
    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    .line 64
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v5, Lcom/danikula/videocache/Pinger;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Error pinging server due to unexpected error"

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 61
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 62
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v5, Lcom/danikula/videocache/Pinger;->LOG:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error pinging server (attempt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", timeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "). "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 65
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_4
    nop

    .line 66
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 67
    mul-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 69
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    div-int/lit8 v6, v2, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->getDefaultProxies()Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v5, v6

    .line 69
    const-string v1, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s"

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "error":Ljava/lang/String;
    sget-object v4, Lcom/danikula/videocache/Pinger;->LOG:Lorg/slf4j/Logger;

    new-instance v5, Lcom/danikula/videocache/ProxyCacheException;

    invoke-direct {v5, v1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v1, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    return v0
.end method

.method responseToPing(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
