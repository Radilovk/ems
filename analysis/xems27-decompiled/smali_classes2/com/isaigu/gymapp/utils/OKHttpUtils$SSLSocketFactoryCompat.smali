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
    .locals 18

    .line 471
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->protocols:[Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    .line 474
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 475
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    if-eqz v0, :cond_2

    .line 479
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 480
    .local v1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 481
    .local v5, "protocol":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SSL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 482
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    .end local v5    # "protocol":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 483
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sput-object v2, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->protocols:[Ljava/lang/String;

    .line 485
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    .line 487
    const-string v4, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const-string v5, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const-string v6, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const-string v7, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v8, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v9, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v10, "TLS_ECHDE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v11, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v12, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v13, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const-string v14, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const-string v15, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v16, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v17, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 505
    .local v2, "allowedCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 507
    .local v3, "availableCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 508
    .local v4, "preferredCiphers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 514
    move-object v5, v4

    .line 515
    .local v5, "enabledCiphers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 516
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    sput-object v6, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v0    # "socket":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "allowedCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "availableCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "preferredCiphers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "enabledCiphers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    nop

    .line 522
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 4
    .param p1, "tm"    # Ljavax/net/ssl/X509TrustManager;

    .line 523
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 525
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 526
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 527
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    nop

    .line 531
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private upgradeTLS(Ljavax/net/ssl/SSLSocket;)V
    .locals 2
    .param p1, "ssl"    # Ljavax/net/ssl/SSLSocket;

    .line 536
    sget-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->protocols:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 539
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 540
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

    .line 560
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 561
    .local v0, "ssl":Ljava/net/Socket;
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 562
    move-object v1, v0

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

    .line 567
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 568
    .local v0, "ssl":Ljava/net/Socket;
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 569
    move-object v1, v0

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

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 575
    .local v0, "ssl":Ljava/net/Socket;
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 576
    move-object v1, v0

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

    .line 581
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 582
    .local v0, "ssl":Ljava/net/Socket;
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 583
    move-object v1, v0

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

    .line 553
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 554
    .local v0, "ssl":Ljava/net/Socket;
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 555
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    .line 556
    :cond_0
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 545
    sget-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 549
    sget-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method
