.class public Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "OKHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/utils/OKHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSLSocketFactoryCompat"
.end annotation


# static fields
.field static cipherSuites:[Ljava/lang/String;

.field static protocols:[Ljava/lang/String;


# instance fields
.field private defaultFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 471
    sput-object v9, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->protocols:[Ljava/lang/String;

    sput-object v9, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    .line 474
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocket;

    .line 475
    .local v7, "socket":Ljavax/net/ssl/SSLSocket;
    if-eqz v7, :cond_2

    .line 479
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 480
    .local v6, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v5, v9, v8

    .line 481
    .local v5, "protocol":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SSL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 482
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 483
    .end local v5    # "protocol":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    sput-object v8, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->protocols:[Ljava/lang/String;

    .line 485
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_2

    .line 487
    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string v10, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "TLS_ECHDE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string v10, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string v10, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v10, v8, v9

    const/16 v9, 0xc

    const-string v10, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v10, v8, v9

    const/16 v9, 0xd

    const-string v10, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v10, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 505
    .local v0, "allowedCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 507
    .local v1, "availableCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 508
    .local v4, "preferredCiphers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 514
    move-object v3, v4

    .line 515
    .local v3, "enabledCiphers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 516
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    sput-object v8, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v0    # "allowedCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "availableCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "enabledCiphers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "preferredCiphers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6    # "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void

    .line 519
    :catch_0
    move-exception v2

    .line 520
    .local v2, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 5
    .param p1, "tm"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    const/4 v2, 0x0

    .line 523
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 525
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 526
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 527
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    return-void

    .line 528
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private upgradeTLS(Ljavax/net/ssl/SSLSocket;)V
    .locals 2
    .param p1, "ssl"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 536
    sget-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->protocols:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 537
    sget-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->protocols:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 539
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 540
    sget-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 542
    :cond_1
    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v1, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 561
    .local v0, "ssl":Ljava/net/Socket;
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 562
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    .line 563
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v1, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 568
    .local v0, "ssl":Ljava/net/Socket;
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 569
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    .line 570
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v1, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 575
    .local v0, "ssl":Ljava/net/Socket;
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 576
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    .line 577
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v1, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 582
    .local v0, "ssl":Ljava/net/Socket;
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 583
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    .line 584
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v1, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 554
    .local v0, "ssl":Ljava/net/Socket;
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 555
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    .line 556
    :cond_0
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    sget-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    sget-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method
