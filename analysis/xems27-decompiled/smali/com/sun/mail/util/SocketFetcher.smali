.class public Lcom/sun/mail/util/SocketFetcher;
.super Ljava/lang/Object;
.source "SocketFetcher.java"


# static fields
.field private static logger:Lcom/sun/mail/util/MailLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 67
    new-instance v6, Lcom/sun/mail/util/MailLogger;

    .line 68
    const-class v1, Lcom/sun/mail/util/SocketFetcher;

    .line 69
    nop

    .line 70
    nop

    .line 71
    const-string v0, "mail.socket.debug"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v4

    .line 72
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 67
    const-string v2, "socket"

    const-string v3, "DEBUG SocketFetcher"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    sput-object v6, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    .line 72
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static checkServerIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 4
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    const-string v0, "Can\'t verify identity of server: "

    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 631
    nop

    .line 633
    .local v1, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 634
    const/4 v2, 0x0

    aget-object v3, v1, v2

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_0

    .line 635
    aget-object v2, v1, v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-static {p0, v2}, Lcom/sun/mail/util/SocketFetcher;->matchCert(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 636
    return-void

    .line 646
    .end local v1    # "certChain":[Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 647
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    :catch_0
    move-exception v1

    .line 638
    .local v1, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 639
    new-instance v2, Ljava/io/IOException;

    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 641
    .local v0, "ioex":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 642
    throw v0
.end method

.method private static configureSSLSocket(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;)V
    .locals 8
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

    .line 556
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 557
    return-void

    .line 558
    :cond_0
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 560
    .local v0, "sslsocket":Ljavax/net/ssl/SSLSocket;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".ssl.protocols"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "protocols":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 562
    invoke-static {v1}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_1

    .line 570
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "prots":[Ljava/lang/String;
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 572
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSL enabled protocols before "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 572
    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 574
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v4, "eprots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-lt v5, v6, :cond_8

    .line 579
    .end local v5    # "i":I
    nop

    .line 580
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 579
    invoke-virtual {v0, v5}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 582
    .end local v3    # "prots":[Ljava/lang/String;
    .end local v4    # "eprots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".ssl.ciphersuites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "ciphers":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 584
    invoke-static {v2}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 585
    :cond_3
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 586
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SSL enabled protocols after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 588
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SSL enabled ciphers after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 597
    :cond_4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 602
    nop

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".ssl.checkserveridentity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 602
    invoke-static {p2, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v3

    .line 604
    .local v3, "idCheck":Z
    if-eqz v3, :cond_5

    .line 605
    invoke-static {p1, v0}, Lcom/sun/mail/util/SocketFetcher;->checkServerIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 606
    :cond_5
    instance-of v4, p4, Lcom/sun/mail/util/MailSSLSocketFactory;

    if-eqz v4, :cond_7

    .line 607
    move-object v4, p4

    check-cast v4, Lcom/sun/mail/util/MailSSLSocketFactory;

    .line 608
    .local v4, "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    invoke-virtual {v4, p1, v0}, Lcom/sun/mail/util/MailSSLSocketFactory;->isServerTrusted(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    .line 610
    :cond_6
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v5

    goto :goto_2

    .line 612
    :goto_3
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Server is not trusted: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 616
    .end local v4    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    :cond_7
    :goto_4
    return-void

    .line 576
    .end local v2    # "ciphers":Ljava/lang/String;
    .local v3, "prots":[Ljava/lang/String;
    .local v4, "eprots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    :cond_8
    aget-object v6, v3, v5

    if-eqz v6, :cond_9

    aget-object v6, v3, v5

    const-string v7, "SSL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 577
    aget-object v6, v3, v5

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private static createSocket(Ljava/net/InetAddress;ILjava/lang/String;IIILjava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;Z)Ljava/net/Socket;
    .locals 22
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

    .line 269
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move/from16 v8, p9

    const/4 v3, 0x0

    .line 271
    .local v3, "socket":Ljava/net/Socket;
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const-string v4, ", port "

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "create socket: prefix "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v6, ", localaddr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", localport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    const-string v6, ", host "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    const-string v6, ", connection timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    const-string v6, ", socket factory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", useSSL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-virtual {v0, v5}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".socks.host"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v13, v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "socksHost":Ljava/lang/String;
    const/16 v5, 0x438

    .line 280
    .local v5, "socksPort":I
    const/4 v6, 0x0

    .line 281
    .local v6, "err":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 282
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 283
    .local v7, "i":I
    if-ltz v7, :cond_1

    .line 284
    move-object/from16 v17, v3

    move/from16 v18, v5

    const/4 v3, 0x0

    .end local v3    # "socket":Ljava/net/Socket;
    .end local v5    # "socksPort":I
    .local v17, "socket":Ljava/net/Socket;
    .local v18, "socksPort":I
    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 286
    .end local v0    # "socksHost":Ljava/lang/String;
    .local v5, "socksHost":Ljava/lang/String;
    add-int/lit8 v0, v7, 0x1

    :try_start_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v18    # "socksPort":I
    .local v0, "socksPort":I
    move-object/from16 v21, v5

    move v5, v0

    move-object/from16 v0, v21

    goto :goto_0

    .end local v0    # "socksPort":I
    .restart local v18    # "socksPort":I
    :catch_0
    move-exception v0

    move-object v0, v5

    move/from16 v5, v18

    goto :goto_0

    .line 283
    .end local v17    # "socket":Ljava/net/Socket;
    .end local v18    # "socksPort":I
    .local v0, "socksHost":Ljava/lang/String;
    .restart local v3    # "socket":Ljava/net/Socket;
    .local v5, "socksPort":I
    :cond_1
    move-object/from16 v17, v3

    move/from16 v18, v5

    .line 291
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v17    # "socket":Ljava/net/Socket;
    :goto_0
    nop

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v19, v6

    .end local v6    # "err":Ljava/lang/String;
    .local v19, "err":Ljava/lang/String;
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".socks.port"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v13, v3, v5}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v5

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Using SOCKS host, port: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 294
    .end local v19    # "err":Ljava/lang/String;
    .restart local v6    # "err":Ljava/lang/String;
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    move-object/from16 v18, v6

    .end local v6    # "err":Ljava/lang/String;
    .local v18, "err":Ljava/lang/String;
    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v20, v7

    .end local v7    # "i":I
    .local v20, "i":I
    const-string v7, "socks host "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    goto :goto_1

    .line 294
    .end local v20    # "i":I
    .restart local v7    # "i":I
    :cond_2
    move/from16 v20, v7

    .line 298
    .end local v7    # "i":I
    :goto_1
    move-object v7, v0

    move v6, v5

    goto :goto_2

    .line 281
    .end local v17    # "socket":Ljava/net/Socket;
    .end local v18    # "err":Ljava/lang/String;
    .restart local v3    # "socket":Ljava/net/Socket;
    .restart local v6    # "err":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v19, v6

    .end local v3    # "socket":Ljava/net/Socket;
    .end local v5    # "socksPort":I
    .end local v6    # "err":Ljava/lang/String;
    .restart local v17    # "socket":Ljava/net/Socket;
    .local v18, "socksPort":I
    .restart local v19    # "err":Ljava/lang/String;
    move-object v7, v0

    move/from16 v6, v18

    move-object/from16 v18, v19

    .line 298
    .end local v0    # "socksHost":Ljava/lang/String;
    .end local v19    # "err":Ljava/lang/String;
    .local v6, "socksPort":I
    .local v7, "socksHost":Ljava/lang/String;
    .local v18, "err":Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_4

    instance-of v0, v15, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    .line 299
    invoke-virtual/range {p8 .. p8}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    .end local v17    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    goto :goto_3

    .line 300
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v17    # "socket":Ljava/net/Socket;
    :cond_4
    move-object/from16 v3, v17

    .end local v17    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    :goto_3
    if-nez v3, :cond_7

    .line 301
    if-eqz v7, :cond_5

    .line 302
    new-instance v0, Ljava/net/Socket;

    .line 303
    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 304
    move-object/from16 v17, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v17    # "socket":Ljava/net/Socket;
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v7, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 303
    invoke-direct {v4, v5, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 302
    invoke-direct {v0, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    move-object v3, v0

    .line 305
    .end local v17    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    goto :goto_4

    .line 306
    :cond_5
    move-object/from16 v17, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v17    # "socket":Ljava/net/Socket;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".usesocketchannels"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    const/4 v3, 0x0

    invoke-static {v13, v0, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 306
    if-eqz v0, :cond_6

    .line 307
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "using SocketChannels"

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    .line 309
    .end local v17    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    goto :goto_4

    .line 310
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v17    # "socket":Ljava/net/Socket;
    :cond_6
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    move-object v3, v0

    .end local v17    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    goto :goto_4

    .line 300
    :cond_7
    move-object/from16 v17, v3

    .line 312
    :goto_4
    if-ltz v12, :cond_9

    .line 313
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 314
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set socket read timeout "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 315
    :cond_8
    invoke-virtual {v3, v12}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 317
    :cond_9
    nop

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".writetimeout"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    const/4 v4, -0x1

    invoke-static {v13, v0, v4}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v5

    .line 319
    .local v5, "writeTimeout":I
    if-eq v5, v4, :cond_b

    .line 320
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 321
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    move/from16 v16, v6

    .end local v6    # "socksPort":I
    .local v16, "socksPort":I
    const-string v6, "set socket write timeout "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    goto :goto_5

    .line 320
    .end local v16    # "socksPort":I
    .restart local v6    # "socksPort":I
    :cond_a
    move/from16 v16, v6

    .line 322
    .end local v6    # "socksPort":I
    .restart local v16    # "socksPort":I
    :goto_5
    new-instance v0, Lcom/sun/mail/util/WriteTimeoutSocket;

    invoke-direct {v0, v3, v5}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(Ljava/net/Socket;I)V

    move-object v3, v0

    move-object v6, v3

    goto :goto_6

    .line 319
    .end local v16    # "socksPort":I
    .restart local v6    # "socksPort":I
    :cond_b
    move/from16 v16, v6

    .end local v6    # "socksPort":I
    .restart local v16    # "socksPort":I
    move-object v6, v3

    .line 324
    .end local v3    # "socket":Ljava/net/Socket;
    .local v6, "socket":Ljava/net/Socket;
    :goto_6
    if-eqz v1, :cond_c

    .line 325
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 327
    :cond_c
    :try_start_1
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "connecting..."

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 328
    if-ltz v11, :cond_d

    .line 329
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v0, v11}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_7

    .line 331
    :cond_d
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 332
    :goto_7
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "success!"

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 333
    nop

    .line 342
    if-eqz v8, :cond_11

    instance-of v0, v6, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_11

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".ssl.trust"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .local v3, "trusted":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 347
    :try_start_2
    new-instance v0, Lcom/sun/mail/util/MailSSLSocketFactory;

    invoke-direct {v0}, Lcom/sun/mail/util/MailSSLSocketFactory;-><init>()V

    .line 348
    .local v0, "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 349
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustAllHosts(Z)V

    goto :goto_8

    .line 351
    :cond_e
    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustedHosts([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 352
    :goto_8
    nop

    .line 353
    .local v0, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_9

    .end local v0    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :catch_1
    move-exception v0

    .line 354
    .local v0, "gex":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/io/IOException;

    .line 355
    nop

    .line 354
    const-string v1, "Can\'t create MailSSLSocketFactory"

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 356
    .local v1, "ioex":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 357
    throw v1

    .line 359
    .end local v0    # "gex":Ljava/security/GeneralSecurityException;
    .end local v1    # "ioex":Ljava/io/IOException;
    :cond_f
    instance-of v0, v15, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_10

    .line 360
    move-object v0, v15

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .local v0, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_9

    .line 362
    .end local v0    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :cond_10
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 363
    .restart local v0    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :goto_9
    const/4 v1, 0x1

    invoke-virtual {v0, v6, v9, v10, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v6

    .line 364
    move-object v1, v0

    move-object v15, v1

    .line 371
    .end local v0    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "trusted":Ljava/lang/String;
    .end local p8    # "sf":Ljavax/net/SocketFactory;
    .local v15, "sf":Ljavax/net/SocketFactory;
    :cond_11
    invoke-static {v6, v9, v13, v14, v15}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;)V

    .line 373
    return-object v6

    .line 333
    .end local v15    # "sf":Ljavax/net/SocketFactory;
    .restart local p8    # "sf":Ljavax/net/SocketFactory;
    :catch_2
    move-exception v0

    .line 334
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "connection failed"

    invoke-virtual {v1, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    new-instance v1, Lcom/sun/mail/util/SocketConnectException;

    move-object v3, v1

    move-object/from16 v4, v18

    move/from16 v17, v5

    .end local v5    # "writeTimeout":I
    .local v17, "writeTimeout":I
    move-object v5, v0

    move-object/from16 v19, v6

    .end local v6    # "socket":Ljava/net/Socket;
    .local v19, "socket":Ljava/net/Socket;
    move-object/from16 v6, p2

    move-object/from16 v20, v7

    .end local v7    # "socksHost":Ljava/lang/String;
    .local v20, "socksHost":Ljava/lang/String;
    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/sun/mail/util/SocketConnectException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;II)V

    throw v1
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

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

    .line 254
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;
    .locals 25
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

    .line 149
    move-object/from16 v0, p3

    move/from16 v10, p4

    sget-object v1, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    sget-object v1, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSocket, host "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, p0

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p1

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v3, ", prefix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", useSSL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    move-object/from16 v11, p0

    move/from16 v12, p1

    .line 152
    :goto_0
    if-nez v0, :cond_1

    .line 153
    const-string v0, "socket"

    move-object v13, v0

    .end local p3    # "prefix":Ljava/lang/String;
    .local v0, "prefix":Ljava/lang/String;
    goto :goto_1

    .line 152
    .end local v0    # "prefix":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    :cond_1
    move-object v13, v0

    .line 154
    .end local p3    # "prefix":Ljava/lang/String;
    .local v13, "prefix":Ljava/lang/String;
    :goto_1
    if-nez p2, :cond_2

    .line 155
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v14, v0

    .end local p2    # "props":Ljava/util/Properties;
    .local v0, "props":Ljava/util/Properties;
    goto :goto_2

    .line 154
    .end local v0    # "props":Ljava/util/Properties;
    .restart local p2    # "props":Ljava/util/Properties;
    :cond_2
    move-object/from16 v14, p2

    .line 156
    .end local p2    # "props":Ljava/util/Properties;
    .local v14, "props":Ljava/util/Properties;
    :goto_2
    nop

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".connectiontimeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    const/4 v1, -0x1

    invoke-static {v14, v0, v1}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v15

    .line 158
    .local v15, "cto":I
    const/16 v16, 0x0

    .line 159
    .local v16, "socket":Ljava/net/Socket;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".localaddress"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 160
    .local v17, "localaddrstr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 161
    .local v0, "localaddr":Ljava/net/InetAddress;
    if-eqz v17, :cond_3

    .line 162
    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_3

    .line 161
    :cond_3
    move-object/from16 v18, v0

    .line 163
    .end local v0    # "localaddr":Ljava/net/InetAddress;
    .local v18, "localaddr":Ljava/net/InetAddress;
    :goto_3
    nop

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".localport"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 163
    invoke-static {v14, v0, v2}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v19

    .line 166
    .local v19, "localport":I
    nop

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".socketFactory.fallback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 166
    invoke-static {v14, v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v20

    .line 169
    .local v20, "fb":Z
    const/4 v2, -0x1

    .line 170
    .local v2, "sfPort":I
    const-string v3, "unknown socket factory"

    .line 171
    .local v3, "sfErr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".timeout"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v9

    .line 177
    .local v9, "to":I
    const/4 v0, 0x0

    .line 178
    .local v0, "sf":Ljavax/net/SocketFactory;
    const/4 v4, 0x0

    .line 179
    .local v4, "sfPortName":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 180
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".ssl.socketFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 181
    .local v5, "sfo":Ljava/lang/Object;
    instance-of v6, v5, Ljavax/net/SocketFactory;

    if-eqz v6, :cond_4

    .line 182
    move-object v6, v5

    check-cast v6, Ljavax/net/SocketFactory;

    move-object v0, v6

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SSL socket factory instance "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 185
    :cond_4
    if-nez v0, :cond_5

    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".ssl.socketFactory.class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 186
    nop

    .line 188
    .local v6, "sfClass":Ljava/lang/String;
    invoke-static {v6}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v7

    move-object v0, v7

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SSL socket factory class "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 191
    .end local v6    # "sfClass":Ljava/lang/String;
    :cond_5
    const-string v6, ".ssl.socketFactory.port"

    move-object v4, v6

    goto :goto_4

    .line 222
    .end local v0    # "sf":Ljavax/net/SocketFactory;
    .end local v4    # "sfPortName":Ljava/lang/String;
    .end local v5    # "sfo":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move/from16 p2, v9

    goto/16 :goto_7

    .line 220
    :catch_1
    move-exception v0

    move/from16 p2, v9

    goto/16 :goto_8

    .line 194
    .restart local v0    # "sf":Ljavax/net/SocketFactory;
    .restart local v4    # "sfPortName":Ljava/lang/String;
    :cond_6
    :goto_4
    if-nez v0, :cond_9

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".socketFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 196
    .restart local v5    # "sfo":Ljava/lang/Object;
    instance-of v6, v5, Ljavax/net/SocketFactory;

    if-eqz v6, :cond_7

    .line 197
    move-object v6, v5

    check-cast v6, Ljavax/net/SocketFactory;

    move-object v0, v6

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "socket factory instance "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 200
    :cond_7
    if-nez v0, :cond_8

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".socketFactory.class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 201
    nop

    .line 203
    .restart local v6    # "sfClass":Ljava/lang/String;
    invoke-static {v6}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v7

    move-object v0, v7

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "socket factory class "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 206
    .end local v6    # "sfClass":Ljava/lang/String;
    :cond_8
    const-string v6, ".socketFactory.port"
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object v8, v4

    goto :goto_5

    .line 194
    .end local v5    # "sfo":Ljava/lang/Object;
    :cond_9
    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object v8, v4

    .line 210
    .end local v0    # "sf":Ljavax/net/SocketFactory;
    .end local v3    # "sfErr":Ljava/lang/String;
    .end local v4    # "sfPortName":Ljava/lang/String;
    .local v8, "sfPortName":Ljava/lang/String;
    .local v21, "sf":Ljavax/net/SocketFactory;
    .local v22, "sfErr":Ljava/lang/String;
    :goto_5
    if-eqz v21, :cond_e

    .line 211
    nop

    .line 212
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v14, v0, v1}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 215
    .end local v2    # "sfPort":I
    .local v0, "sfPort":I
    if-ne v0, v1, :cond_a

    .line 216
    move/from16 v0, p1

    move/from16 v23, v0

    goto :goto_6

    .line 215
    :cond_a
    move/from16 v23, v0

    .line 217
    .end local v0    # "sfPort":I
    .local v23, "sfPort":I
    :goto_6
    nop

    .line 218
    nop

    .line 217
    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, v23

    move v4, v15

    move v5, v9

    move-object v6, v14

    move-object v7, v13

    move-object/from16 v24, v8

    .end local v8    # "sfPortName":Ljava/lang/String;
    .local v24, "sfPortName":Ljava/lang/String;
    move-object/from16 v8, v21

    move/from16 p2, v9

    .end local v9    # "to":I
    .local p2, "to":I
    move/from16 v9, p4

    :try_start_2
    invoke-static/range {v0 .. v9}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IIILjava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;Z)Ljava/net/Socket;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v16, v0

    .line 220
    .end local v21    # "sf":Ljavax/net/SocketFactory;
    .end local v24    # "sfPortName":Ljava/lang/String;
    move-object/from16 v9, v16

    goto/16 :goto_9

    .line 222
    :catch_2
    move-exception v0

    move-object/from16 v3, v22

    move/from16 v2, v23

    goto :goto_7

    .line 220
    :catch_3
    move-exception v0

    move-object/from16 v3, v22

    move/from16 v2, v23

    goto :goto_8

    .line 222
    .end local v23    # "sfPort":I
    .end local p2    # "to":I
    .restart local v2    # "sfPort":I
    .restart local v9    # "to":I
    :catch_4
    move-exception v0

    move/from16 p2, v9

    move-object/from16 v3, v22

    .line 223
    .end local v9    # "to":I
    .end local v22    # "sfErr":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v3    # "sfErr":Ljava/lang/String;
    .restart local p2    # "to":I
    :goto_7
    if-nez v20, :cond_d

    .line 224
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_b

    .line 226
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 225
    nop

    .line 227
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v4, v1, Ljava/lang/Exception;

    if-eqz v4, :cond_b

    .line 228
    move-object v0, v1

    check-cast v0, Ljava/lang/Exception;

    .line 230
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_b
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_c

    .line 231
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 232
    :cond_c
    new-instance v1, Lcom/sun/mail/util/SocketConnectException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Using "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    nop

    .line 232
    move-object v4, v1

    move-object v6, v0

    move-object/from16 v7, p0

    move v8, v2

    move v9, v15

    invoke-direct/range {v4 .. v9}, Lcom/sun/mail/util/SocketConnectException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;II)V

    throw v1

    .line 223
    :cond_d
    move/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v9, v16

    goto :goto_9

    .line 220
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "sfErr":Ljava/lang/String;
    .end local p2    # "to":I
    .restart local v9    # "to":I
    .restart local v22    # "sfErr":Ljava/lang/String;
    :catch_5
    move-exception v0

    move/from16 p2, v9

    move-object/from16 v3, v22

    .line 221
    .end local v9    # "to":I
    .end local v22    # "sfErr":Ljava/lang/String;
    .local v0, "sex":Ljava/net/SocketTimeoutException;
    .restart local v3    # "sfErr":Ljava/lang/String;
    .restart local p2    # "to":I
    :goto_8
    throw v0

    .line 210
    .end local v0    # "sex":Ljava/net/SocketTimeoutException;
    .end local v3    # "sfErr":Ljava/lang/String;
    .end local p2    # "to":I
    .restart local v8    # "sfPortName":Ljava/lang/String;
    .restart local v9    # "to":I
    .restart local v21    # "sf":Ljavax/net/SocketFactory;
    .restart local v22    # "sfErr":Ljava/lang/String;
    :cond_e
    move-object/from16 v24, v8

    move/from16 p2, v9

    .end local v8    # "sfPortName":Ljava/lang/String;
    .end local v9    # "to":I
    .restart local v24    # "sfPortName":Ljava/lang/String;
    .restart local p2    # "to":I
    move/from16 v23, v2

    move-object/from16 v9, v16

    .line 237
    .end local v2    # "sfPort":I
    .end local v16    # "socket":Ljava/net/Socket;
    .end local v21    # "sf":Ljavax/net/SocketFactory;
    .end local v24    # "sfPortName":Ljava/lang/String;
    .local v9, "socket":Ljava/net/Socket;
    .restart local v23    # "sfPort":I
    :goto_9
    if-nez v9, :cond_f

    .line 238
    nop

    .line 239
    const/4 v8, 0x0

    .line 238
    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, p1

    move v4, v15

    move/from16 v5, p2

    move-object v6, v14

    move-object v7, v13

    move-object v10, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .local v10, "socket":Ljava/net/Socket;
    move/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IIILjava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;Z)Ljava/net/Socket;

    move-result-object v9

    .line 241
    .end local v10    # "socket":Ljava/net/Socket;
    .restart local v9    # "socket":Ljava/net/Socket;
    move/from16 v1, p2

    goto :goto_a

    .line 242
    :cond_f
    move-object v10, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v10    # "socket":Ljava/net/Socket;
    move/from16 v1, p2

    .end local p2    # "to":I
    .local v1, "to":I
    if-ltz v1, :cond_11

    .line 243
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 244
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set socket read timeout "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 245
    :cond_10
    invoke-virtual {v10, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 249
    :cond_11
    move-object v9, v10

    .end local v10    # "socket":Ljava/net/Socket;
    .restart local v9    # "socket":Ljava/net/Socket;
    :goto_a
    return-object v9
.end method

.method private static getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;
    .locals 5
    .param p0, "sfClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 384
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 389
    :cond_0
    invoke-static {}, Lcom/sun/mail/util/SocketFetcher;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 390
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 391
    .local v1, "clsSockFact":Ljava/lang/Class;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 393
    :try_start_0
    invoke-static {p0, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 394
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 396
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 397
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 399
    :cond_2
    nop

    .line 400
    new-array v3, v2, [Ljava/lang/Class;

    .line 399
    const-string v4, "getDefault"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 402
    .local v3, "mthGetDefault":Ljava/lang/reflect/Method;
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 401
    check-cast v2, Ljavax/net/SocketFactory;

    .line 403
    .local v2, "sf":Ljavax/net/SocketFactory;
    return-object v2

    .line 385
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "clsSockFact":Ljava/lang/Class;
    .end local v2    # "sf":Ljavax/net/SocketFactory;
    .end local v3    # "mthGetDefault":Ljava/lang/reflect/Method;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static matchCert(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 12
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 658
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "matchCert server "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 669
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "sun.security.util.HostnameChecker"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 673
    .local v3, "hnc":Ljava/lang/Class;
    const-string v4, "getInstance"

    .line 674
    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 673
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 675
    .local v4, "getInstance":Ljava/lang/reflect/Method;
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 676
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v1

    .line 675
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 679
    .local v5, "hostnameChecker":Ljava/lang/Object;
    sget-object v6, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 680
    sget-object v6, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "using sun.security.util.HostnameChecker"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 681
    :cond_1
    const-string v6, "match"

    .line 682
    new-array v7, v0, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    const-class v8, Ljava/security/cert/X509Certificate;

    aput-object v8, v7, v2

    .line 681
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 684
    .local v6, "match":Ljava/lang/reflect/Method;
    :try_start_1
    new-array v7, v0, [Ljava/lang/Object;

    aput-object p0, v7, v1

    aput-object p1, v7, v2

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 685
    return v2

    .line 686
    :catch_0
    move-exception v7

    .line 687
    .local v7, "cex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    sget-object v8, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v10, "HostnameChecker FAIL"

    invoke-virtual {v8, v9, v10, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 688
    return v1

    .line 690
    .end local v3    # "hnc":Ljava/lang/Class;
    .end local v4    # "getInstance":Ljava/lang/reflect/Method;
    .end local v5    # "hostnameChecker":Ljava/lang/Object;
    .end local v6    # "match":Ljava/lang/reflect/Method;
    .end local v7    # "cex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    .line 691
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v6, "NO sun.security.util.HostnameChecker"

    invoke-virtual {v4, v5, v6, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 705
    .end local v3    # "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    .line 706
    .local v3, "names":Ljava/util/Collection;
    if-eqz v3, :cond_5

    .line 707
    const/4 v4, 0x0

    .line 708
    .local v4, "foundName":Z
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 720
    .end local v5    # "it":Ljava/util/Iterator;
    if-eqz v4, :cond_5

    .line 721
    return v1

    .line 709
    .restart local v5    # "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 710
    .local v6, "nameEnt":Ljava/util/List;
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 711
    .local v7, "type":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v0, :cond_2

    .line 712
    const/4 v4, 0x1

    .line 713
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 714
    .local v8, "name":Ljava/lang/String;
    sget-object v9, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 715
    sget-object v9, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "found name: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 716
    :cond_4
    invoke-static {p0, v8}, Lcom/sun/mail/util/SocketFetcher;->matchServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_3
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v9, :cond_2

    .line 717
    return v2

    .line 723
    .end local v3    # "names":Ljava/util/Collection;
    .end local v4    # "foundName":Z
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v6    # "nameEnt":Ljava/util/List;
    .end local v7    # "type":Ljava/lang/Integer;
    .end local v8    # "name":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 729
    :cond_5
    const-string v0, "CN=([^,]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 730
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 731
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sun/mail/util/SocketFetcher;->matchServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 732
    return v2

    .line 734
    :cond_6
    return v1
.end method

.method private static matchServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 745
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "match server "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 747
    :cond_0
    const-string v0, "*."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 749
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "tail":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_1

    .line 751
    return v7

    .line 752
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v8, v1, v2

    .line 753
    .local v8, "off":I
    const/4 v9, 0x1

    if-ge v8, v9, :cond_2

    .line 754
    return v7

    .line 756
    :cond_2
    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    .line 757
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v8

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 756
    return v9

    :cond_3
    return v7

    .line 759
    .end local v0    # "tail":Ljava/lang/String;
    .end local v8    # "off":I
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
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

    .line 419
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "socket"

    invoke-static {p0, v0, v1}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 9
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 457
    .local v0, "port":I
    sget-object v1, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    sget-object v1, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startTLS host "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 460
    :cond_0
    const-string v1, "unknown socket factory"

    .line 462
    .local v1, "sfErr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 463
    .local v2, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v3, 0x0

    .line 466
    .local v3, "sf":Ljavax/net/SocketFactory;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".ssl.socketFactory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 467
    .local v4, "sfo":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/net/SocketFactory;

    if-eqz v5, :cond_1

    .line 468
    move-object v5, v4

    check-cast v5, Ljavax/net/SocketFactory;

    move-object v3, v5

    .line 469
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSL socket factory instance "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 471
    :cond_1
    if-nez v3, :cond_2

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".ssl.socketFactory.class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 472
    nop

    .line 474
    .local v5, "sfClass":Ljava/lang/String;
    invoke-static {v5}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v6

    move-object v3, v6

    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SSL socket factory class "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 477
    .end local v5    # "sfClass":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    instance-of v5, v3, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_3

    .line 478
    move-object v5, v3

    check-cast v5, Ljavax/net/ssl/SSLSocketFactory;

    move-object v2, v5

    .line 482
    :cond_3
    if-nez v2, :cond_6

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".socketFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 484
    nop

    instance-of v5, v4, Ljavax/net/SocketFactory;

    if-eqz v5, :cond_4

    .line 485
    move-object v5, v4

    check-cast v5, Ljavax/net/SocketFactory;

    move-object v3, v5

    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "socket factory instance "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 488
    :cond_4
    if-nez v3, :cond_5

    .line 490
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".socketFactory.class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 489
    nop

    .line 491
    .restart local v5    # "sfClass":Ljava/lang/String;
    invoke-static {v5}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v6

    move-object v3, v6

    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "socket factory class "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 494
    .end local v5    # "sfClass":Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_6

    instance-of v5, v3, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_6

    .line 495
    move-object v5, v3

    check-cast v5, Ljavax/net/ssl/SSLSocketFactory;

    move-object v2, v5

    .line 499
    :cond_6
    const/4 v5, 0x1

    if-nez v2, :cond_9

    .line 501
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".ssl.trust"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v6

    .local v7, "trusted":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 504
    :try_start_1
    new-instance v6, Lcom/sun/mail/util/MailSSLSocketFactory;

    invoke-direct {v6}, Lcom/sun/mail/util/MailSSLSocketFactory;-><init>()V

    .line 505
    .local v6, "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 506
    invoke-virtual {v6, v5}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustAllHosts(Z)V

    goto :goto_0

    .line 508
    :cond_7
    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustedHosts([Ljava/lang/String;)V

    .line 509
    :goto_0
    move-object v2, v6

    .line 510
    const-string v8, "mail SSL socket factory"
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v8

    .line 511
    .end local v6    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    goto :goto_1

    :catch_0
    move-exception v5

    .line 512
    .local v5, "gex":Ljava/security/GeneralSecurityException;
    :try_start_2
    new-instance v6, Ljava/io/IOException;

    .line 513
    const-string v8, "Can\'t create MailSSLSocketFactory"

    .line 512
    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 514
    .local v6, "ioex":Ljava/io/IOException;
    invoke-virtual {v6, v5}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 515
    nop

    .end local v0    # "port":I
    .end local v1    # "sfErr":Ljava/lang/String;
    .end local p0    # "socket":Ljava/net/Socket;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "props":Ljava/util/Properties;
    .end local p3    # "prefix":Ljava/lang/String;
    throw v6

    .line 518
    .end local v5    # "gex":Ljava/security/GeneralSecurityException;
    .end local v6    # "ioex":Ljava/io/IOException;
    .restart local v0    # "port":I
    .restart local v1    # "sfErr":Ljava/lang/String;
    .restart local p0    # "socket":Ljava/net/Socket;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "props":Ljava/util/Properties;
    .restart local p3    # "prefix":Ljava/lang/String;
    :cond_8
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLSocketFactory;

    move-object v2, v6

    .line 519
    const-string v6, "default SSL socket factory"

    move-object v1, v6

    .line 523
    .end local v7    # "trusted":Ljava/lang/String;
    :cond_9
    :goto_1
    invoke-virtual {v2, p0, p1, v0, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    move-object p0, v5

    .line 524
    invoke-static {p0, p1, p2, p3, v2}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 525
    .end local v2    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "sf":Ljavax/net/SocketFactory;
    .end local v4    # "sfo":Ljava/lang/Object;
    nop

    .line 543
    return-object p0

    .line 525
    :catch_1
    move-exception v2

    .line 526
    .local v2, "ex":Ljava/lang/Exception;
    instance-of v3, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_a

    .line 528
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    .line 527
    nop

    .line 529
    .local v3, "t":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/Exception;

    if-eqz v4, :cond_a

    .line 530
    move-object v2, v3

    check-cast v2, Ljava/lang/Exception;

    .line 532
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_a
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_b

    .line 533
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 535
    :cond_b
    new-instance v3, Ljava/io/IOException;

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in startTLS using "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v5, ": host, port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    const-string v5, "; Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 535
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 540
    .local v3, "ioex":Ljava/io/IOException;
    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 541
    throw v3
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

    .line 767
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 768
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v1, "tokens":Ljava/util/List;
    nop

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
