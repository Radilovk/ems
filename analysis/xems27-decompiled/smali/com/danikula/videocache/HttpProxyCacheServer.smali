.class public Lcom/danikula/videocache/HttpProxyCacheServer;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/HttpProxyCacheServer$Builder;,
        Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;,
        Lcom/danikula/videocache/HttpProxyCacheServer$WaitRequestsRunnable;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final PROXY_HOST:Ljava/lang/String; = "127.0.0.1"


# instance fields
.field private final clientsLock:Ljava/lang/Object;

.field private final clientsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/danikula/videocache/HttpProxyCacheServerClients;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcom/danikula/videocache/Config;

.field private final pinger:Lcom/danikula/videocache/Pinger;

.field private final port:I

.field private final serverSocket:Ljava/net/ServerSocket;

.field private final socketProcessor:Ljava/util/concurrent/ExecutorService;

.field private final waitConnectionThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "HttpProxyCacheServer"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    invoke-direct {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->access$000(Lcom/danikula/videocache/HttpProxyCacheServer$Builder;)Lcom/danikula/videocache/Config;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/danikula/videocache/HttpProxyCacheServer;-><init>(Lcom/danikula/videocache/Config;)V

    .line 68
    return-void
.end method

.method private constructor <init>(Lcom/danikula/videocache/Config;)V
    .locals 5
    .param p1, "config"    # Lcom/danikula/videocache/Config;

    .line 70
    const-string v0, "127.0.0.1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    .line 58
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->socketProcessor:Ljava/util/concurrent/ExecutorService;

    .line 59
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    .line 71
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danikula/videocache/Config;

    iput-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->config:Lcom/danikula/videocache/Config;

    .line 73
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 74
    .local v2, "inetAddress":Ljava/net/InetAddress;
    new-instance v3, Ljava/net/ServerSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    .line 75
    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    iput v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->port:I

    .line 76
    invoke-static {v0, v1}, Lcom/danikula/videocache/IgnoreHostProxySelector;->install(Ljava/lang/String;I)V

    .line 77
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 78
    .local v1, "startSignal":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/danikula/videocache/HttpProxyCacheServer$WaitRequestsRunnable;

    invoke-direct {v4, p0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer$WaitRequestsRunnable;-><init>(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->waitConnectionThread:Ljava/lang/Thread;

    .line 79
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 80
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 81
    new-instance v3, Lcom/danikula/videocache/Pinger;

    iget v4, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->port:I

    invoke-direct {v3, v0, v4}, Lcom/danikula/videocache/Pinger;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->pinger:Lcom/danikula/videocache/Pinger;

    .line 82
    sget-object v0, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy cache server started. Is it alive? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "startSignal":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    nop

    .line 87
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->socketProcessor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error starting local proxy server"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/danikula/videocache/Config;Lcom/danikula/videocache/HttpProxyCacheServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/danikula/videocache/Config;
    .param p2, "x1"    # Lcom/danikula/videocache/HttpProxyCacheServer$1;

    .line 52
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;-><init>(Lcom/danikula/videocache/Config;)V

    return-void
.end method

.method static synthetic access$100(Lcom/danikula/videocache/HttpProxyCacheServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 52
    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->waitForRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V
    .locals 0
    .param p0, "x0"    # Lcom/danikula/videocache/HttpProxyCacheServer;
    .param p1, "x1"    # Ljava/net/Socket;

    .line 52
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->processSocket(Ljava/net/Socket;)V

    return-void
.end method

.method private appendToProxyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 187
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "127.0.0.1"

    aput-object v3, v1, v2

    iget v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/danikula/videocache/ProxyCacheUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "http://%s:%d/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private closeSocket(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;

    .line 301
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_0
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    const-string v2, "Error closing socket"

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private closeSocketInput(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;

    .line 277
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    const-string v2, "Error closing socket input stream"

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 280
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 283
    .local v0, "e":Ljava/net/SocketException;
    sget-object v1, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Releasing input stream\u2026 Socket is closed by client."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 286
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    :goto_0
    nop

    .line 287
    :goto_1
    return-void
.end method

.method private closeSocketOutput(Ljava/net/Socket;)V
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;

    .line 291
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to close socket on proxy side: {}. It seems client have already closed connection."

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->config:Lcom/danikula/videocache/Config;

    iget-object v0, v0, Lcom/danikula/videocache/Config;->cacheRoot:Ljava/io/File;

    .line 192
    .local v0, "cacheDir":Ljava/io/File;
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->config:Lcom/danikula/videocache/Config;

    iget-object v1, v1, Lcom/danikula/videocache/Config;->fileNameGenerator:Lcom/danikula/videocache/file/FileNameGenerator;

    invoke-interface {v1, p1}, Lcom/danikula/videocache/file/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private getClients(Ljava/lang/String;)Lcom/danikula/videocache/HttpProxyCacheServerClients;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danikula/videocache/HttpProxyCacheServerClients;

    .line 251
    .local v1, "clients":Lcom/danikula/videocache/HttpProxyCacheServerClients;
    if-nez v1, :cond_0

    .line 252
    new-instance v2, Lcom/danikula/videocache/HttpProxyCacheServerClients;

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->config:Lcom/danikula/videocache/Config;

    invoke-direct {v2, p1, v3}, Lcom/danikula/videocache/HttpProxyCacheServerClients;-><init>(Ljava/lang/String;Lcom/danikula/videocache/Config;)V

    move-object v1, v2

    .line 253
    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    monitor-exit v0

    return-object v1

    .line 256
    .end local v1    # "clients":Lcom/danikula/videocache/HttpProxyCacheServerClients;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getClientsCount()I
    .locals 5

    .line 260
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "count":I
    :try_start_0
    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danikula/videocache/HttpProxyCacheServerClients;

    .line 263
    .local v3, "clients":Lcom/danikula/videocache/HttpProxyCacheServerClients;
    invoke-virtual {v3}, Lcom/danikula/videocache/HttpProxyCacheServerClients;->getClientsCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 264
    .end local v3    # "clients":Lcom/danikula/videocache/HttpProxyCacheServerClients;
    goto :goto_0

    .line 265
    :cond_0
    monitor-exit v0

    return v1

    .line 266
    .end local v1    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isAlive()Z
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->pinger:Lcom/danikula/videocache/Pinger;

    const/4 v1, 0x3

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/danikula/videocache/Pinger;->ping(II)Z

    move-result v0

    return v0
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 310
    sget-object v0, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "HttpProxyCacheServer error"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    return-void
.end method

.method private processSocket(Ljava/net/Socket;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;

    .line 227
    const-string v0, "Opened connections: "

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/danikula/videocache/GetRequest;->read(Ljava/io/InputStream;)Lcom/danikula/videocache/GetRequest;

    move-result-object v1

    .line 228
    .local v1, "request":Lcom/danikula/videocache/GetRequest;
    sget-object v2, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to cache proxy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 229
    iget-object v2, v1, Lcom/danikula/videocache/GetRequest;->uri:Ljava/lang/String;

    invoke-static {v2}, Lcom/danikula/videocache/ProxyCacheUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->pinger:Lcom/danikula/videocache/Pinger;

    invoke-virtual {v3, v2}, Lcom/danikula/videocache/Pinger;->isPingRequest(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->pinger:Lcom/danikula/videocache/Pinger;

    invoke-virtual {v3, p1}, Lcom/danikula/videocache/Pinger;->responseToPing(Ljava/net/Socket;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-direct {p0, v2}, Lcom/danikula/videocache/HttpProxyCacheServer;->getClients(Ljava/lang/String;)Lcom/danikula/videocache/HttpProxyCacheServerClients;

    move-result-object v3

    .line 234
    .local v3, "clients":Lcom/danikula/videocache/HttpProxyCacheServerClients;
    invoke-virtual {v3, v1, p1}, Lcom/danikula/videocache/HttpProxyCacheServerClients;->processRequest(Lcom/danikula/videocache/GetRequest;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .end local v1    # "request":Lcom/danikula/videocache/GetRequest;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "clients":Lcom/danikula/videocache/HttpProxyCacheServerClients;
    :goto_0
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 244
    sget-object v1, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 243
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 240
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    new-instance v2, Lcom/danikula/videocache/ProxyCacheException;

    const-string v3, "Error processing request"

    invoke-direct {v2, v3, v1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/danikula/videocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 244
    sget-object v1, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 236
    :catch_2
    move-exception v1

    .line 239
    .local v1, "e":Ljava/net/SocketException;
    :try_start_2
    sget-object v2, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Closing socket\u2026 Socket is closed by client."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .end local v1    # "e":Ljava/net/SocketException;
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 244
    sget-object v1, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->getClientsCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 245
    nop

    .line 246
    return-void

    .line 243
    :goto_3
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 244
    sget-object v2, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->getClientsCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    throw v1
.end method

.method private releaseSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;

    .line 270
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->closeSocketInput(Ljava/net/Socket;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->closeSocketOutput(Ljava/net/Socket;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->closeSocket(Ljava/net/Socket;)V

    .line 273
    return-void
.end method

.method private shutdownClients()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danikula/videocache/HttpProxyCacheServerClients;

    .line 207
    .local v2, "clients":Lcom/danikula/videocache/HttpProxyCacheServerClients;
    invoke-virtual {v2}, Lcom/danikula/videocache/HttpProxyCacheServerClients;->shutdown()V

    .line 208
    .end local v2    # "clients":Lcom/danikula/videocache/HttpProxyCacheServerClients;
    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 210
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private touchFileSafely(Ljava/io/File;)V
    .locals 4
    .param p1, "cacheFile"    # Ljava/io/File;

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->config:Lcom/danikula/videocache/Config;

    iget-object v0, v0, Lcom/danikula/videocache/Config;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    invoke-interface {v0, p1}, Lcom/danikula/videocache/file/DiskUsage;->touch(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error touching file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private waitForRequest()V
    .locals 4

    .line 215
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 217
    .local v0, "socket":Ljava/net/Socket;
    sget-object v1, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accept new socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->socketProcessor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;

    invoke-direct {v2, p0, v0}, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;-><init>(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    nop

    .end local v0    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 222
    :cond_0
    goto :goto_1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method


# virtual methods
.method public getProxyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/danikula/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "allowCachedFileUri"    # Z

    .line 115
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->isCached(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 117
    .local v0, "cacheFile":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/danikula/videocache/HttpProxyCacheServer;->touchFileSafely(Ljava/io/File;)V

    .line 118
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 120
    .end local v0    # "cacheFile":Ljava/io/File;
    :cond_0
    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->appendToProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 161
    const-string v0, "Url can\'t be null!"

    invoke-static {p1, v0}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public registerCacheListener(Lcom/danikula/videocache/CacheListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "cacheListener"    # Lcom/danikula/videocache/CacheListener;
    .param p2, "url"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/danikula/videocache/Preconditions;->checkAllNotNull([Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    invoke-direct {p0, p2}, Lcom/danikula/videocache/HttpProxyCacheServer;->getClients(Ljava/lang/String;)Lcom/danikula/videocache/HttpProxyCacheServerClients;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/danikula/videocache/HttpProxyCacheServerClients;->registerCacheListener(Lcom/danikula/videocache/CacheListener;)V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Lcom/danikula/videocache/ProxyCacheException;
    :try_start_1
    sget-object v2, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Error registering cache listener"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v1    # "e":Lcom/danikula/videocache/ProxyCacheException;
    :goto_0
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public shutdown()V
    .locals 3

    .line 166
    sget-object v0, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Shutdown proxy server"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->shutdownClients()V

    .line 170
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->config:Lcom/danikula/videocache/Config;

    iget-object v0, v0, Lcom/danikula/videocache/Config;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    invoke-interface {v0}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;->release()V

    .line 172
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->waitConnectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    const-string v2, "Error shutting down proxy server"

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public unregisterCacheListener(Lcom/danikula/videocache/CacheListener;)V
    .locals 3
    .param p1, "cacheListener"    # Lcom/danikula/videocache/CacheListener;

    .line 146
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danikula/videocache/HttpProxyCacheServerClients;

    .line 149
    .local v2, "clients":Lcom/danikula/videocache/HttpProxyCacheServerClients;
    invoke-virtual {v2, p1}, Lcom/danikula/videocache/HttpProxyCacheServerClients;->unregisterCacheListener(Lcom/danikula/videocache/CacheListener;)V

    .line 150
    .end local v2    # "clients":Lcom/danikula/videocache/HttpProxyCacheServerClients;
    goto :goto_0

    .line 151
    :cond_0
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterCacheListener(Lcom/danikula/videocache/CacheListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "cacheListener"    # Lcom/danikula/videocache/CacheListener;
    .param p2, "url"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/danikula/videocache/Preconditions;->checkAllNotNull([Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    invoke-direct {p0, p2}, Lcom/danikula/videocache/HttpProxyCacheServer;->getClients(Ljava/lang/String;)Lcom/danikula/videocache/HttpProxyCacheServerClients;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/danikula/videocache/HttpProxyCacheServerClients;->unregisterCacheListener(Lcom/danikula/videocache/CacheListener;)V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    goto :goto_0

    .line 142
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Lcom/danikula/videocache/ProxyCacheException;
    :try_start_1
    sget-object v2, Lcom/danikula/videocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Error registering cache listener"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v1    # "e":Lcom/danikula/videocache/ProxyCacheException;
    :goto_0
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
