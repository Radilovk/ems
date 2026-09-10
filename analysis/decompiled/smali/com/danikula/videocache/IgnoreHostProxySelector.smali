.class Lcom/danikula/videocache/IgnoreHostProxySelector;
.super Ljava/net/ProxySelector;
.source "IgnoreHostProxySelector.java"


# static fields
.field private static final NO_PROXY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultProxySelector:Ljava/net/ProxySelector;

.field private final hostToIgnore:Ljava/lang/String;

.field private final portToIgnore:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/Proxy;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/danikula/videocache/IgnoreHostProxySelector;->NO_PROXY_LIST:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V
    .locals 1
    .param p1, "defaultProxySelector"    # Ljava/net/ProxySelector;
    .param p2, "hostToIgnore"    # Ljava/lang/String;
    .param p3, "portToIgnore"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->defaultProxySelector:Ljava/net/ProxySelector;

    .line 30
    invoke-static {p2}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->hostToIgnore:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->portToIgnore:I

    .line 32
    return-void
.end method

.method static install(Ljava/lang/String;I)V
    .locals 2
    .param p0, "hostToIgnore"    # Ljava/lang/String;
    .param p1, "portToIgnore"    # I

    .prologue
    .line 35
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 36
    .local v0, "defaultProxySelector":Ljava/net/ProxySelector;
    new-instance v1, Lcom/danikula/videocache/IgnoreHostProxySelector;

    invoke-direct {v1, v0, p0, p1}, Lcom/danikula/videocache/IgnoreHostProxySelector;-><init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V

    .line 37
    .local v1, "ignoreHostProxySelector":Ljava/net/ProxySelector;
    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 38
    return-void
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .param p3, "failure"    # Ljava/io/IOException;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->defaultProxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 49
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v1, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->hostToIgnore:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->portToIgnore:I

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 43
    .local v0, "ignored":Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/danikula/videocache/IgnoreHostProxySelector;->NO_PROXY_LIST:Ljava/util/List;

    :goto_1
    return-object v1

    .line 42
    .end local v0    # "ignored":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    .restart local v0    # "ignored":Z
    :cond_1
    iget-object v1, p0, Lcom/danikula/videocache/IgnoreHostProxySelector;->defaultProxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v1, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method
