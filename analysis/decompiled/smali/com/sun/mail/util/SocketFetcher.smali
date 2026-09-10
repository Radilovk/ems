.class public Lcom/sun/mail/util/SocketFetcher;
.super Ljava/lang/Object;
.source "SocketFetcher.java"


# static fields
.field private static logger:Lcom/sun/mail/util/MailLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 67
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    .line 68
    const-class v1, Lcom/sun/mail/util/SocketFetcher;

    .line 69
    const-string v2, "socket"

    .line 70
    const-string v3, "DEBUG SocketFetcher"

    .line 71
    const-string v4, "mail.socket.debug"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v4

    .line 72
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    sput-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    .line 72
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static checkServerIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 6
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 633
    .local v0, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 634
    const/4 v3, 0x0

    aget-object v3, v0, v3

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_0

    .line 635
    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-static {p0, v3}, Lcom/sun/mail/util/SocketFetcher;->matchCert(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 636
    return-void

    .line 637
    .end local v0    # "certChain":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v1

    .line 638
    .local v1, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 639
    new-instance v2, Ljava/io/IOException;

    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t verify identity of server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 639
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 641
    .local v2, "ioex":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 642
    throw v2

    .line 646
    .end local v1    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    .end local v2    # "ioex":Ljava/io/IOException;
    .restart local v0    # "certChain":[Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 647
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t verify identity of server: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static configureSSLSocket(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;)V
    .locals 11
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "sf"    # Ljavax/net/SocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    instance-of v8, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v8, :cond_1

    .line 616
    :cond_0
    return-void

    :cond_1
    move-object v7, p0

    .line 558
    check-cast v7, Ljavax/net/ssl/SSLSocket;

    .line 560
    .local v7, "sslsocket":Ljavax/net/ssl/SSLSocket;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".ssl.protocols"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 561
    .local v5, "protocols":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 562
    invoke-static {v5}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 582
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".ssl.ciphersuites"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "ciphers":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 584
    invoke-static {v0}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 585
    :cond_2
    sget-object v8, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 586
    sget-object v8, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SSL enabled protocols after "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 586
    invoke-virtual {v8, v9}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 588
    sget-object v8, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SSL enabled ciphers after "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 588
    invoke-virtual {v8, v9}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 597
    :cond_3
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 603
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".ssl.checkserveridentity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 602
    invoke-static {p2, v8, v9}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v3

    .line 604
    .local v3, "idCheck":Z
    if-eqz v3, :cond_4

    .line 605
    invoke-static {p1, v7}, Lcom/sun/mail/util/SocketFetcher;->checkServerIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 606
    :cond_4
    instance-of v8, p4, Lcom/sun/mail/util/MailSSLSocketFactory;

    if-eqz v8, :cond_0

    move-object v4, p4

    .line 607
    check-cast v4, Lcom/sun/mail/util/MailSSLSocketFactory;

    .line 608
    .local v4, "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    invoke-virtual {v4, p1, v7}, Lcom/sun/mail/util/MailSSLSocketFactory;->isServerTrusted(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 610
    :try_start_0
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :goto_1
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Server is not trusted: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 570
    .end local v0    # "ciphers":Ljava/lang/String;
    .end local v3    # "idCheck":Z
    .end local v4    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    :cond_5
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v6

    .line 571
    .local v6, "prots":[Ljava/lang/String;
    sget-object v8, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 572
    sget-object v8, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SSL enabled protocols before "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 572
    invoke-virtual {v8, v9}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 574
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v1, "eprots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v8, v6

    if-lt v2, v8, :cond_7

    .line 580
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 579
    invoke-virtual {v7, v8}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 576
    :cond_7
    aget-object v8, v6, v2

    if-eqz v8, :cond_8

    aget-object v8, v6, v2

    const-string v9, "SSL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 577
    aget-object v8, v6, v2

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "eprots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v6    # "prots":[Ljava/lang/String;
    .restart local v0    # "ciphers":Ljava/lang/String;
    .restart local v3    # "idCheck":Z
    .restart local v4    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catchall_0
    move-exception v8

    goto :goto_1
.end method

.method private static createSocket(Ljava/net/InetAddress;ILjava/lang/String;IIILjava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;Z)Ljava/net/Socket;
    .locals 21
    .param p0, "localaddr"    # Ljava/net/InetAddress;
    .param p1, "localport"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "cto"    # I
    .param p5, "to"    # I
    .param p6, "props"    # Ljava/util/Properties;
    .param p7, "prefix"    # Ljava/lang/String;
    .param p8, "sf"    # Ljavax/net/SocketFactory;
    .param p9, "useSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v14, 0x0

    .line 271
    .local v14, "socket":Ljava/net/Socket;
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "create socket: prefix "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 273
    const-string v8, ", localaddr "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", localport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 274
    const-string v8, ", host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 275
    const-string v8, ", connection timeout "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", timeout "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 276
    const-string v8, ", socket factory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", useSSL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 278
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".socks.host"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 279
    .local v16, "socksHost":Ljava/lang/String;
    const/16 v17, 0x438

    .line 280
    .local v17, "socksPort":I
    const/4 v5, 0x0

    .line 281
    .local v5, "err":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 282
    const/16 v4, 0x3a

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 283
    .local v11, "i":I
    if-ltz v11, :cond_1

    .line 284
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 286
    add-int/lit8 v4, v11, 0x1

    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v17

    .line 292
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".socks.port"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-static {v0, v4, v1}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v17

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Using SOCKS host, port: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 295
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "socks host "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 298
    .end local v11    # "i":I
    :cond_2
    if-eqz p8, :cond_3

    move-object/from16 v0, p8

    instance-of v4, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_3

    .line 299
    invoke-virtual/range {p8 .. p8}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v14

    .line 300
    :cond_3
    if-nez v14, :cond_10

    .line 301
    if-eqz v16, :cond_9

    .line 302
    new-instance v14, Ljava/net/Socket;

    .line 303
    .end local v14    # "socket":Ljava/net/Socket;
    new-instance v4, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 304
    new-instance v8, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 303
    invoke-direct {v4, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 302
    invoke-direct {v14, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .restart local v14    # "socket":Ljava/net/Socket;
    move-object v15, v14

    .line 312
    .end local v14    # "socket":Ljava/net/Socket;
    .local v15, "socket":Ljava/net/Socket;
    :goto_1
    if-ltz p5, :cond_5

    .line 313
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 314
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "set socket read timeout "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 315
    :cond_4
    move/from16 v0, p5

    invoke-virtual {v15, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 318
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".writetimeout"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    .line 317
    move-object/from16 v0, p6

    invoke-static {v0, v4, v7}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v20

    .line 319
    .local v20, "writeTimeout":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_f

    .line 320
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 321
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "set socket write timeout "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 322
    :cond_6
    new-instance v14, Lcom/sun/mail/util/WriteTimeoutSocket;

    move/from16 v0, v20

    invoke-direct {v14, v15, v0}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(Ljava/net/Socket;I)V

    .line 324
    .end local v15    # "socket":Ljava/net/Socket;
    .restart local v14    # "socket":Ljava/net/Socket;
    :goto_2
    if-eqz p0, :cond_7

    .line 325
    new-instance v4, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v14, v4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 327
    :cond_7
    :try_start_1
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "connecting..."

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 328
    if-ltz p4, :cond_b

    .line 329
    new-instance v4, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move/from16 v0, p4

    invoke-virtual {v14, v4, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 332
    :goto_3
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "success!"

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 342
    if-eqz p9, :cond_8

    instance-of v4, v14, Ljavax/net/ssl/SSLSocket;

    if-nez v4, :cond_8

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".ssl.trust"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "trusted":Ljava/lang/String;
    if-eqz v19, :cond_d

    .line 347
    :try_start_2
    new-instance v13, Lcom/sun/mail/util/MailSSLSocketFactory;

    invoke-direct {v13}, Lcom/sun/mail/util/MailSSLSocketFactory;-><init>()V

    .line 348
    .local v13, "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    const-string v4, "*"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 349
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustAllHosts(Z)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 352
    :goto_4
    move-object/from16 v18, v13

    .line 363
    .end local v13    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    .local v18, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :goto_5
    const/4 v4, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v14, v1, v2, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v14

    .line 364
    move-object/from16 p8, v18

    .line 371
    .end local v18    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v19    # "trusted":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-static {v14, v0, v1, v2, v3}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;)V

    .line 373
    return-object v14

    .line 306
    .end local v20    # "writeTimeout":I
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".usesocketchannels"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    .line 305
    move-object/from16 v0, p6

    invoke-static {v0, v4, v7}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v4

    .line 306
    if-eqz v4, :cond_a

    .line 307
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v7, "using SocketChannels"

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v14

    move-object v15, v14

    .line 309
    .end local v14    # "socket":Ljava/net/Socket;
    .restart local v15    # "socket":Ljava/net/Socket;
    goto/16 :goto_1

    .line 310
    .end local v15    # "socket":Ljava/net/Socket;
    .restart local v14    # "socket":Ljava/net/Socket;
    :cond_a
    new-instance v14, Ljava/net/Socket;

    .end local v14    # "socket":Ljava/net/Socket;
    invoke-direct {v14}, Ljava/net/Socket;-><init>()V

    .restart local v14    # "socket":Ljava/net/Socket;
    move-object v15, v14

    .end local v14    # "socket":Ljava/net/Socket;
    .restart local v15    # "socket":Ljava/net/Socket;
    goto/16 :goto_1

    .line 331
    .end local v15    # "socket":Ljava/net/Socket;
    .restart local v14    # "socket":Ljava/net/Socket;
    .restart local v20    # "writeTimeout":I
    :cond_b
    :try_start_3
    new-instance v4, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v14, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 333
    :catch_0
    move-exception v6

    .line 334
    .local v6, "ex":Ljava/io/IOException;
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v8, "connection failed"

    invoke-virtual {v4, v7, v8, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    new-instance v4, Lcom/sun/mail/util/SocketConnectException;

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/sun/mail/util/SocketConnectException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;II)V

    throw v4

    .line 351
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v13    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    .restart local v19    # "trusted":Ljava/lang/String;
    :cond_c
    :try_start_4
    const-string v4, "\\s+"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustedHosts([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 353
    .end local v13    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catch_1
    move-exception v10

    .line 354
    .local v10, "gex":Ljava/security/GeneralSecurityException;
    new-instance v12, Ljava/io/IOException;

    .line 355
    const-string v4, "Can\'t create MailSSLSocketFactory"

    .line 354
    invoke-direct {v12, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 356
    .local v12, "ioex":Ljava/io/IOException;
    invoke-virtual {v12, v10}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 357
    throw v12

    .line 359
    .end local v10    # "gex":Ljava/security/GeneralSecurityException;
    .end local v12    # "ioex":Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p8

    instance-of v4, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v4, :cond_e

    move-object/from16 v18, p8

    .line 360
    check-cast v18, Ljavax/net/ssl/SSLSocketFactory;

    .restart local v18    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    goto/16 :goto_5

    .line 362
    .end local v18    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :cond_e
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v18

    check-cast v18, Ljavax/net/ssl/SSLSocketFactory;

    .restart local v18    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    goto/16 :goto_5

    .line 287
    .end local v18    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v19    # "trusted":Ljava/lang/String;
    .end local v20    # "writeTimeout":I
    .restart local v11    # "i":I
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .end local v11    # "i":I
    .end local v14    # "socket":Ljava/net/Socket;
    .restart local v15    # "socket":Ljava/net/Socket;
    .restart local v20    # "writeTimeout":I
    :cond_f
    move-object v14, v15

    .end local v15    # "socket":Ljava/net/Socket;
    .restart local v14    # "socket":Ljava/net/Socket;
    goto/16 :goto_2

    .end local v20    # "writeTimeout":I
    :cond_10
    move-object v15, v14

    .end local v14    # "socket":Ljava/net/Socket;
    .restart local v15    # "socket":Ljava/net/Socket;
    goto/16 :goto_1
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 781
    new-instance v0, Lcom/sun/mail/util/SocketFetcher$1;

    invoke-direct {v0}, Lcom/sun/mail/util/SocketFetcher$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 780
    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;
    .locals 32
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "useSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getSocket, host "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 151
    const-string v8, ", prefix "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", useSSL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-virtual {v3, v7}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 152
    :cond_0
    if-nez p3, :cond_1

    .line 153
    const-string p3, "socket"

    .line 154
    :cond_1
    if-nez p2, :cond_2

    .line 155
    new-instance p2, Ljava/util/Properties;

    .end local p2    # "props":Ljava/util/Properties;
    invoke-direct/range {p2 .. p2}, Ljava/util/Properties;-><init>()V

    .line 157
    .restart local p2    # "props":Ljava/util/Properties;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".connectiontimeout"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, -0x1

    .line 156
    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v5

    .line 158
    .local v5, "cto":I
    const/16 v30, 0x0

    .line 159
    .local v30, "socket":Ljava/net/Socket;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".localaddress"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 160
    .local v24, "localaddrstr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 161
    .local v1, "localaddr":Ljava/net/InetAddress;
    if-eqz v24, :cond_3

    .line 162
    invoke-static/range {v24 .. v24}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 164
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".localport"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 163
    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v2

    .line 167
    .local v2, "localport":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".socketFactory.fallback"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    .line 166
    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v23

    .line 169
    .local v23, "fb":Z
    const/4 v4, -0x1

    .line 170
    .local v4, "sfPort":I
    const-string/jumbo v27, "unknown socket factory"

    .line 171
    .local v27, "sfErr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".timeout"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, -0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v6

    .line 177
    .local v6, "to":I
    const/4 v9, 0x0

    .line 178
    .local v9, "sf":Ljavax/net/SocketFactory;
    const/16 v28, 0x0

    .line 179
    .local v28, "sfPortName":Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 180
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".ssl.socketFactory"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 181
    .local v29, "sfo":Ljava/lang/Object;
    move-object/from16 v0, v29

    instance-of v3, v0, Ljavax/net/SocketFactory;

    if-eqz v3, :cond_4

    .line 182
    move-object/from16 v0, v29

    check-cast v0, Ljavax/net/SocketFactory;

    move-object v9, v0

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "SSL socket factory instance "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 185
    :cond_4
    if-nez v9, :cond_5

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".ssl.socketFactory.class"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 188
    .local v26, "sfClass":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v9

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "SSL socket factory class "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 191
    .end local v26    # "sfClass":Ljava/lang/String;
    :cond_5
    const-string v28, ".ssl.socketFactory.port"

    .line 194
    .end local v29    # "sfo":Ljava/lang/Object;
    :cond_6
    if-nez v9, :cond_9

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".socketFactory"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 196
    .restart local v29    # "sfo":Ljava/lang/Object;
    move-object/from16 v0, v29

    instance-of v3, v0, Ljavax/net/SocketFactory;

    if-eqz v3, :cond_7

    .line 197
    move-object/from16 v0, v29

    check-cast v0, Ljavax/net/SocketFactory;

    move-object v9, v0

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "socket factory instance "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 200
    :cond_7
    if-nez v9, :cond_8

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".socketFactory.class"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 203
    .restart local v26    # "sfClass":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v9

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "socket factory class "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 206
    .end local v26    # "sfClass":Ljava/lang/String;
    :cond_8
    const-string v28, ".socketFactory.port"

    .line 210
    .end local v29    # "sfo":Ljava/lang/Object;
    :cond_9
    if-eqz v9, :cond_b

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, -0x1

    .line 211
    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v4

    .line 215
    const/4 v3, -0x1

    if-ne v4, v3, :cond_a

    .line 216
    move/from16 v4, p1

    :cond_a
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v10, p4

    .line 217
    invoke-static/range {v1 .. v10}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IIILjava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;Z)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v30

    .line 237
    :cond_b
    if-nez v30, :cond_f

    .line 239
    const/16 v21, 0x0

    move-object v13, v1

    move v14, v2

    move-object/from16 v15, p0

    move/from16 v16, p1

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move/from16 v22, p4

    .line 238
    invoke-static/range {v13 .. v22}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IIILjava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;Z)Ljava/net/Socket;

    move-result-object v30

    .line 249
    :cond_c
    :goto_0
    return-object v30

    .line 220
    :catch_0
    move-exception v25

    .line 221
    .local v25, "sex":Ljava/net/SocketTimeoutException;
    throw v25

    .line 222
    .end local v25    # "sex":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v12

    .line 223
    .local v12, "ex":Ljava/lang/Exception;
    if-nez v23, :cond_b

    .line 224
    instance-of v3, v12, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_d

    move-object v3, v12

    .line 226
    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v31

    .line 227
    .local v31, "t":Ljava/lang/Throwable;
    move-object/from16 v0, v31

    instance-of v3, v0, Ljava/lang/Exception;

    if-eqz v3, :cond_d

    move-object/from16 v12, v31

    .line 228
    check-cast v12, Ljava/lang/Exception;

    .line 230
    .end local v31    # "t":Ljava/lang/Throwable;
    :cond_d
    instance-of v3, v12, Ljava/io/IOException;

    if-eqz v3, :cond_e

    .line 231
    check-cast v12, Ljava/io/IOException;

    .end local v12    # "ex":Ljava/lang/Exception;
    throw v12

    .line 232
    .restart local v12    # "ex":Ljava/lang/Exception;
    :cond_e
    new-instance v10, Lcom/sun/mail/util/SocketConnectException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Using "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v13, p0

    move v14, v4

    move v15, v5

    invoke-direct/range {v10 .. v15}, Lcom/sun/mail/util/SocketConnectException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;II)V

    throw v10

    .line 242
    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_f
    if-ltz v6, :cond_c

    .line 243
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 244
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "set socket read timeout "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 245
    :cond_10
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0
.end method

.method private static getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;
    .locals 7
    .param p0, "sfClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 384
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 385
    :cond_0
    const/4 v3, 0x0

    .line 403
    :goto_0
    return-object v3

    .line 389
    :cond_1
    invoke-static {}, Lcom/sun/mail/util/SocketFetcher;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 390
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 391
    .local v1, "clsSockFact":Ljava/lang/Class;
    if-eqz v0, :cond_2

    .line 393
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 396
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 397
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 399
    :cond_3
    const-string v4, "getDefault"

    .line 400
    new-array v5, v6, [Ljava/lang/Class;

    .line 399
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 402
    .local v2, "mthGetDefault":Ljava/lang/reflect/Method;
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 401
    check-cast v3, Ljavax/net/SocketFactory;

    .line 403
    .local v3, "sf":Ljavax/net/SocketFactory;
    goto :goto_0

    .line 394
    .end local v2    # "mthGetDefault":Ljava/lang/reflect/Method;
    .end local v3    # "sf":Ljavax/net/SocketFactory;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private static matchCert(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 21
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 658
    sget-object v17, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v18, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual/range {v17 .. v18}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 659
    sget-object v17, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "matchCert server "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", cert "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 659
    invoke-virtual/range {v17 .. v18}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 669
    :cond_0
    :try_start_0
    const-string v17, "sun.security.util.HostnameChecker"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 673
    .local v7, "hnc":Ljava/lang/Class;
    const-string v17, "getInstance"

    .line 674
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v20, v18, v19

    .line 673
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 675
    .local v6, "getInstance":Ljava/lang/reflect/Method;
    new-instance v17, Ljava/lang/Object;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    .line 676
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v20

    aput-object v20, v18, v19

    .line 675
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 679
    .local v8, "hostnameChecker":Ljava/lang/Object;
    sget-object v17, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v18, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual/range {v17 .. v18}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 680
    sget-object v17, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v18, "using sun.security.util.HostnameChecker"

    invoke-virtual/range {v17 .. v18}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 681
    :cond_1
    const-string v17, "match"

    .line 682
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-class v20, Ljava/security/cert/X509Certificate;

    aput-object v20, v18, v19

    .line 681
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 684
    .local v11, "match":Ljava/lang/reflect/Method;
    const/16 v17, 0x2

    :try_start_1
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p0, v17, v18

    const/16 v18, 0x1

    aput-object p1, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 685
    const/16 v17, 0x1

    .line 734
    .end local v6    # "getInstance":Ljava/lang/reflect/Method;
    .end local v7    # "hnc":Ljava/lang/Class;
    .end local v8    # "hostnameChecker":Ljava/lang/Object;
    .end local v11    # "match":Ljava/lang/reflect/Method;
    :goto_0
    return v17

    .line 686
    .restart local v6    # "getInstance":Ljava/lang/reflect/Method;
    .restart local v7    # "hnc":Ljava/lang/Class;
    .restart local v8    # "hostnameChecker":Ljava/lang/Object;
    .restart local v11    # "match":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 687
    .local v3, "cex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    sget-object v17, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v18, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v19, "HostnameChecker FAIL"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 688
    const/16 v17, 0x0

    goto :goto_0

    .line 690
    .end local v3    # "cex":Ljava/lang/reflect/InvocationTargetException;
    .end local v6    # "getInstance":Ljava/lang/reflect/Method;
    .end local v7    # "hnc":Ljava/lang/Class;
    .end local v8    # "hostnameChecker":Ljava/lang/Object;
    .end local v11    # "match":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    .line 691
    .local v4, "ex":Ljava/lang/Exception;
    sget-object v17, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v18, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v19, "NO sun.security.util.HostnameChecker"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 705
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v14

    .line 706
    .local v14, "names":Ljava/util/Collection;
    if-eqz v14, :cond_5

    .line 707
    const/4 v5, 0x0

    .line 708
    .local v5, "foundName":Z
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_3

    .line 720
    if-eqz v5, :cond_5

    .line 721
    const/16 v17, 0x0

    goto :goto_0

    .line 709
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 710
    .local v13, "nameEnt":Ljava/util/List;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 711
    .local v16, "type":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 712
    const/4 v5, 0x1

    .line 713
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 714
    .local v12, "name":Ljava/lang/String;
    sget-object v17, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v18, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual/range {v17 .. v18}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 715
    sget-object v17, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "found name: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 716
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sun/mail/util/SocketFetcher;->matchServer(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v17

    if-eqz v17, :cond_2

    .line 717
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 723
    .end local v5    # "foundName":Z
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "nameEnt":Ljava/util/List;
    .end local v14    # "names":Ljava/util/Collection;
    .end local v16    # "type":Ljava/lang/Integer;
    :catch_2
    move-exception v17

    .line 729
    :cond_5
    const-string v17, "CN=([^,]*)"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 730
    .local v15, "p":Ljava/util/regex/Pattern;
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 731
    .local v10, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sun/mail/util/SocketFetcher;->matchServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 732
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 734
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private static matchServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 745
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "match server "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 747
    :cond_0
    const-string v0, "*."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 749
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, "tail":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 759
    .end local v3    # "tail":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 752
    .restart local v3    # "tail":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v0, v5

    .line 753
    .local v2, "off":I
    if-lt v2, v1, :cond_1

    .line 756
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_1

    .line 757
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v1

    .line 756
    goto :goto_0

    .line 759
    .end local v2    # "off":I
    .end local v3    # "tail":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method public static startTLS(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 419
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "socket"

    invoke-static {p0, v0, v1}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 19
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual/range {p0 .. p0}, Ljava/net/Socket;->getPort()I

    move-result v8

    .line 457
    .local v8, "port":I
    sget-object v16, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v17, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual/range {v16 .. v17}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 458
    sget-object v16, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "startTLS host "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", port "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 460
    :cond_0
    const-string/jumbo v11, "unknown socket factory"

    .line 462
    .local v11, "sfErr":Ljava/lang/String;
    const/4 v13, 0x0

    .line 463
    .local v13, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v9, 0x0

    .line 466
    .local v9, "sf":Ljavax/net/SocketFactory;
    :try_start_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ".ssl.socketFactory"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 467
    .local v12, "sfo":Ljava/lang/Object;
    instance-of v0, v12, Ljavax/net/SocketFactory;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 468
    move-object v0, v12

    check-cast v0, Ljavax/net/SocketFactory;

    move-object v9, v0

    .line 469
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "SSL socket factory instance "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 471
    :cond_1
    if-nez v9, :cond_2

    .line 473
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ".ssl.socketFactory.class"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 474
    .local v10, "sfClass":Ljava/lang/String;
    invoke-static {v10}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v9

    .line 475
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "SSL socket factory class "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 477
    .end local v10    # "sfClass":Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_3

    instance-of v0, v9, Ljavax/net/ssl/SSLSocketFactory;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 478
    move-object v0, v9

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    move-object v13, v0

    .line 482
    :cond_3
    if-nez v13, :cond_6

    .line 483
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ".socketFactory"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 484
    instance-of v0, v12, Ljavax/net/SocketFactory;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 485
    move-object v0, v12

    check-cast v0, Ljavax/net/SocketFactory;

    move-object v9, v0

    .line 486
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "socket factory instance "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 488
    :cond_4
    if-nez v9, :cond_5

    .line 490
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ".socketFactory.class"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 491
    .restart local v10    # "sfClass":Ljava/lang/String;
    invoke-static {v10}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v9

    .line 492
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "socket factory class "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 494
    .end local v10    # "sfClass":Ljava/lang/String;
    :cond_5
    if-eqz v9, :cond_6

    instance-of v0, v9, Ljavax/net/ssl/SSLSocketFactory;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 495
    move-object v0, v9

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    move-object v13, v0

    .line 499
    :cond_6
    if-nez v13, :cond_7

    .line 501
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ".ssl.trust"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .local v15, "trusted":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 504
    :try_start_1
    new-instance v7, Lcom/sun/mail/util/MailSSLSocketFactory;

    invoke-direct {v7}, Lcom/sun/mail/util/MailSSLSocketFactory;-><init>()V

    .line 505
    .local v7, "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    const-string v16, "*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 506
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustAllHosts(Z)V

    .line 509
    :goto_0
    move-object v13, v7

    .line 510
    const-string v11, "mail SSL socket factory"
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 523
    .end local v7    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    .end local v15    # "trusted":Ljava/lang/String;
    :cond_7
    :goto_1
    const/16 v16, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v13, v0, v1, v8, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0

    .line 524
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v13}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 543
    return-object p0

    .line 508
    .restart local v7    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    .restart local v15    # "trusted":Ljava/lang/String;
    :cond_8
    :try_start_3
    const-string v16, "\\s+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustedHosts([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 511
    .end local v7    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catch_0
    move-exception v5

    .line 512
    .local v5, "gex":Ljava/security/GeneralSecurityException;
    :try_start_4
    new-instance v6, Ljava/io/IOException;

    .line 513
    const-string v16, "Can\'t create MailSSLSocketFactory"

    .line 512
    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 514
    .local v6, "ioex":Ljava/io/IOException;
    invoke-virtual {v6, v5}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 515
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 525
    .end local v5    # "gex":Ljava/security/GeneralSecurityException;
    .end local v6    # "ioex":Ljava/io/IOException;
    .end local v12    # "sfo":Ljava/lang/Object;
    .end local v15    # "trusted":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 526
    .local v4, "ex":Ljava/lang/Exception;
    instance-of v0, v4, Ljava/lang/reflect/InvocationTargetException;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v16, v4

    .line 528
    check-cast v16, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v14

    .line 529
    .local v14, "t":Ljava/lang/Throwable;
    instance-of v0, v14, Ljava/lang/Exception;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    move-object v4, v14

    .line 530
    check-cast v4, Ljava/lang/Exception;

    .line 532
    .end local v14    # "t":Ljava/lang/Throwable;
    :cond_9
    instance-of v0, v4, Ljava/io/IOException;

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 533
    check-cast v4, Ljava/io/IOException;

    .end local v4    # "ex":Ljava/lang/Exception;
    throw v4

    .line 518
    .restart local v12    # "sfo":Ljava/lang/Object;
    .restart local v15    # "trusted":Ljava/lang/String;
    :cond_a
    :try_start_5
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    move-object v13, v0

    .line 519
    const-string v11, "default SSL socket factory"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 535
    .end local v12    # "sfo":Ljava/lang/Object;
    .end local v15    # "trusted":Ljava/lang/String;
    .restart local v4    # "ex":Ljava/lang/Exception;
    :cond_b
    new-instance v6, Ljava/io/IOException;

    .line 536
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Exception in startTLS using "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 537
    const-string v17, ": host, port: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 538
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 539
    const-string v17, "; Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 536
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 535
    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 540
    .restart local v6    # "ioex":Ljava/io/IOException;
    invoke-virtual {v6, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 541
    throw v6
.end method

.method public static startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 439
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "host":Ljava/lang/String;
    invoke-static {p0, v1, p1, p2}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    return-object v2
.end method

.method private static stringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 767
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 768
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v1, "tokens":Ljava/util/List;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    .line 771
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 770
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
