.class public abstract Ljavax/mail/Service;
.super Ljava/lang/Object;
.source "Service.java"


# instance fields
.field private connected:Z

.field private final connectionListeners:Ljava/util/Vector;

.field protected debug:Z

.field private final q:Ljavax/mail/EventQueue;

.field protected session:Ljavax/mail/Session;

.field protected url:Ljavax/mail/URLName;


# direct methods
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 11
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .prologue
    const/4 v9, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 78
    iput-boolean v9, p0, Ljavax/mail/Service;->debug:Z

    .line 80
    iput-boolean v9, p0, Ljavax/mail/Service;->connected:Z

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 103
    iput-object p1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    .line 104
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/Service;->debug:Z

    .line 105
    iput-object p2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "protocol":Ljava/lang/String;
    const/4 v2, 0x0

    .line 113
    .local v2, "host":Ljava/lang/String;
    const/4 v3, -0x1

    .line 114
    .local v3, "port":I
    const/4 v5, 0x0

    .line 115
    .local v5, "user":Ljava/lang/String;
    const/4 v6, 0x0

    .line 116
    .local v6, "password":Ljava/lang/String;
    const/4 v4, 0x0

    .line 121
    .local v4, "file":Ljava/lang/String;
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 123
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 124
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getPort()I

    move-result v3

    .line 125
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v5

    .line 126
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 127
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v4

    .line 131
    :cond_0
    if-eqz v1, :cond_2

    .line 132
    if-nez v2, :cond_1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "mail."

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ".host"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    :cond_1
    if-nez v5, :cond_2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "mail."

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ".user"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    :cond_2
    if-nez v2, :cond_3

    .line 140
    const-string v0, "mail.host"

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    :cond_3
    if-nez v5, :cond_4

    .line 143
    const-string v0, "mail.user"

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    :cond_4
    if-nez v5, :cond_5

    .line 148
    :try_start_0
    const-string/jumbo v0, "user.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 155
    :cond_5
    :goto_0
    new-instance v0, Ljavax/mail/URLName;

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 159
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v9, "mail.event.scope"

    const-string v10, "folder"

    invoke-virtual {v0, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "scope":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v9, "mail.event.executor"

    invoke-virtual {v0, v9}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Executor;

    .line 162
    .local v7, "executor":Ljava/util/concurrent/Executor;
    const-string v0, "application"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    invoke-static {v7}, Ljavax/mail/EventQueue;->getApplicationEventQueue(Ljava/util/concurrent/Executor;)Ljavax/mail/EventQueue;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 169
    :goto_1
    return-void

    .line 164
    :cond_6
    const-string v0, "session"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    invoke-virtual {p1}, Ljavax/mail/Session;->getEventQueue()Ljavax/mail/EventQueue;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    goto :goto_1

    .line 168
    :cond_7
    new-instance v0, Ljavax/mail/EventQueue;

    invoke-direct {v0, v7}, Ljavax/mail/EventQueue;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    goto :goto_1

    .line 149
    .end local v7    # "executor":Ljava/util/concurrent/Executor;
    .end local v8    # "scope":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    .prologue
    .line 566
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 567
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 507
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/mail/Service;->setConnected(Z)V

    .line 508
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, v0, v0, v0}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public declared-synchronized connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "already connected"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 290
    :cond_0
    const/16 v17, 0x0

    .line 291
    .local v17, "connected":Z
    const/16 v21, 0x0

    .line 292
    .local v21, "save":Z
    const/4 v3, 0x0

    .line 293
    .local v3, "protocol":Ljava/lang/String;
    const/4 v6, 0x0

    .line 298
    .local v6, "file":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v2, :cond_4

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 300
    if-nez p1, :cond_1

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 302
    :cond_1
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getPort()I

    move-result p2

    .line 305
    :cond_2
    if-nez p3, :cond_c

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object p3

    .line 307
    if-nez p4, :cond_3

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object p4

    .line 315
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v6

    .line 319
    :cond_4
    if-eqz v3, :cond_6

    .line 320
    if-nez p1, :cond_5

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    :cond_5
    if-nez p3, :cond_6

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 327
    :cond_6
    if-nez p1, :cond_7

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v4, "mail.host"

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 330
    :cond_7
    if-nez p3, :cond_8

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v4, "mail.user"

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p3

    .line 334
    :cond_8
    if-nez p3, :cond_9

    .line 336
    :try_start_2
    const-string/jumbo v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p3

    .line 344
    :cond_9
    :goto_1
    if-nez p4, :cond_a

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v2, :cond_a

    .line 346
    new-instance v2, Ljavax/mail/URLName;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;

    move-result-object v20

    .line 348
    .local v20, "pw":Ljavax/mail/PasswordAuthentication;
    if-eqz v20, :cond_e

    .line 349
    if-nez p3, :cond_d

    .line 350
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object p3

    .line 351
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p4

    .line 362
    .end local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    :cond_a
    :goto_2
    const/16 v16, 0x0

    .line 364
    .local v16, "authEx":Ljavax/mail/AuthenticationFailedException;
    :try_start_4
    invoke-virtual/range {p0 .. p4}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljavax/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v17

    .line 370
    :goto_3
    if-nez v17, :cond_b

    .line 373
    :try_start_5
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    .line 377
    .local v8, "addr":Ljava/net/InetAddress;
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v7, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    .line 380
    const/4 v11, 0x0

    move/from16 v9, p2

    move-object v10, v3

    move-object/from16 v12, p3

    .line 377
    invoke-virtual/range {v7 .. v12}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v20

    .line 381
    .restart local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    if-eqz v20, :cond_b

    .line 382
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object p3

    .line 383
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p4

    .line 386
    invoke-virtual/range {p0 .. p4}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 391
    .end local v8    # "addr":Ljava/net/InetAddress;
    .end local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    :cond_b
    if-nez v17, :cond_12

    .line 392
    if-eqz v16, :cond_f

    .line 393
    throw v16

    .line 310
    .end local v16    # "authEx":Ljavax/mail/AuthenticationFailedException;
    :cond_c
    if-nez p4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_0

    .line 352
    .restart local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    :cond_d
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 353
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p4

    .line 355
    goto :goto_2

    .line 356
    :cond_e
    const/16 v21, 0x1

    goto :goto_2

    .line 365
    .end local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    .restart local v16    # "authEx":Ljavax/mail/AuthenticationFailedException;
    :catch_0
    move-exception v19

    .line 366
    .local v19, "ex":Ljavax/mail/AuthenticationFailedException;
    move-object/from16 v16, v19

    goto :goto_3

    .line 374
    .end local v19    # "ex":Ljavax/mail/AuthenticationFailedException;
    :catch_1
    move-exception v18

    .line 375
    .local v18, "e":Ljava/net/UnknownHostException;
    const/4 v8, 0x0

    .restart local v8    # "addr":Ljava/net/InetAddress;
    goto :goto_4

    .line 394
    .end local v8    # "addr":Ljava/net/InetAddress;
    .end local v18    # "e":Ljava/net/UnknownHostException;
    :cond_f
    if-nez p3, :cond_10

    .line 395
    new-instance v2, Ljavax/mail/AuthenticationFailedException;

    .line 396
    const-string v4, "failed to connect, no user name specified?"

    .line 395
    invoke-direct {v2, v4}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 397
    :cond_10
    if-nez p4, :cond_11

    .line 398
    new-instance v2, Ljavax/mail/AuthenticationFailedException;

    .line 399
    const-string v4, "failed to connect, no password specified?"

    .line 398
    invoke-direct {v2, v4}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_11
    new-instance v2, Ljavax/mail/AuthenticationFailedException;

    const-string v4, "failed to connect"

    invoke-direct {v2, v4}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_12
    new-instance v9, Ljavax/mail/URLName;

    move-object v10, v3

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object v13, v6

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v9 .. v15}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 406
    if-eqz v21, :cond_13

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v4

    .line 408
    new-instance v5, Ljavax/mail/PasswordAuthentication;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v5, v0, v1}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v2, v4, v5}, Ljavax/mail/Session;->setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V

    .line 411
    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/Service;->setConnected(Z)V

    .line 414
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 337
    .end local v16    # "authEx":Ljavax/mail/AuthenticationFailedException;
    :catch_2
    move-exception v2

    goto/16 :goto_1
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Ljavax/mail/Service;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 654
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 655
    iget-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v0}, Ljavax/mail/EventQueue;->terminateQueue()V

    .line 656
    return-void
.end method

.method getEventQueue()Ljavax/mail/EventQueue;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    return-object v0
.end method

.method getSession()Ljavax/mail/Session;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method public declared-synchronized getURLName()Ljavax/mail/URLName;
    .locals 7

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    new-instance v0, Ljavax/mail/URLName;

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 528
    iget-object v3, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v3}, Ljavax/mail/URLName;->getPort()I

    move-result v3

    const/4 v4, 0x0

    .line 529
    iget-object v5, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v5}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 527
    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/mail/Service;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyConnectionListeners(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 600
    iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 601
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 602
    .local v0, "e":Ljavax/mail/event/ConnectionEvent;
    iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Service;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 615
    .end local v0    # "e":Ljavax/mail/event/ConnectionEvent;
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 616
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v1}, Ljavax/mail/EventQueue;->terminateQueue()V

    .line 617
    :cond_1
    return-void
.end method

.method protected protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method protected queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 2
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    .prologue
    .line 646
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 647
    .local v0, "v":Ljava/util/Vector;
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v1, p1, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 648
    return-void
.end method

.method public removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    .prologue
    .line 579
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 580
    return-void
.end method

.method protected declared-synchronized setConnected(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ljavax/mail/Service;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setURLName(Ljavax/mail/URLName;)V
    .locals 1
    .param p1, "url"    # Ljavax/mail/URLName;

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    monitor-exit p0

    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    .line 625
    .local v0, "url":Ljavax/mail/URLName;
    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0}, Ljavax/mail/URLName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
