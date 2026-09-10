.class public Lcom/sun/mail/pop3/POP3Store;
.super Ljavax/mail/Store;
.source "POP3Store.java"


# instance fields
.field volatile cacheWriteTo:Z

.field private capabilities:Ljava/util/Map;

.field private defaultPort:I

.field volatile disableTop:Z

.field volatile fileCacheDir:Ljava/io/File;

.field volatile forgetTopHeaders:Z

.field private host:Ljava/lang/String;

.field private isSSL:Z

.field volatile keepMessageContent:Z

.field private logger:Lcom/sun/mail/util/MailLogger;

.field volatile messageConstructor:Ljava/lang/reflect/Constructor;

.field private name:Ljava/lang/String;

.field private passwd:Ljava/lang/String;

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private portNum:I

.field private portOwner:Lcom/sun/mail/pop3/POP3Folder;

.field private requireStartTLS:Z

.field volatile rsetBeforeQuit:Z

.field volatile supportsUidl:Z

.field volatile useFileCache:Z

.field private useStartTLS:Z

.field private user:Ljava/lang/String;

.field private usingSSL:Z


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;

    .line 100
    const-string v0, "pop3"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/pop3/POP3Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSSL"    # Z

    .line 105
    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 72
    const-string v0, "pop3"

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    .line 73
    const/16 v0, 0x6e

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 76
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 77
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 78
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    .line 79
    const/4 v3, -0x1

    iput v3, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    .line 80
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    .line 83
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    .line 84
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z

    .line 89
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    .line 90
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    .line 91
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 92
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    .line 93
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z

    .line 94
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->cacheWriteTo:Z

    .line 95
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->useFileCache:Z

    .line 96
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->fileCacheDir:Ljava/io/File;

    .line 97
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->keepMessageContent:Z

    .line 106
    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 108
    :cond_0
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    .line 109
    new-instance v2, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 110
    const-string v5, "DEBUG POP3"

    invoke-direct {v2, v4, v5, p1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V

    .line 109
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    .line 112
    const-string v2, "mail."

    if-nez p4, :cond_1

    .line 113
    nop

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".ssl.enable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-static {p1, v4, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result p4

    .line 115
    :cond_1
    if-eqz p4, :cond_2

    .line 116
    const/16 v0, 0x3e3

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    goto :goto_0

    .line 118
    :cond_2
    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 119
    :goto_0
    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 121
    const-string v0, "rsetbeforequit"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    .line 122
    const-string v0, "disabletop"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 123
    const-string v0, "forgettopheaders"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    .line 124
    const-string v0, "cachewriteto"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->cacheWriteTo:Z

    .line 125
    const-string v0, "filecache.enable"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->useFileCache:Z

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".filecache.dir"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "dir":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".filecache.dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 129
    :cond_3
    if-eqz v0, :cond_4

    .line 130
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->fileCacheDir:Ljava/io/File;

    .line 131
    :cond_4
    const-string v4, "keepmessagecontent"

    invoke-direct {p0, v4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/mail/pop3/POP3Store;->keepMessageContent:Z

    .line 134
    const-string v4, "starttls.enable"

    invoke-direct {p0, v4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    .line 137
    const-string v4, "starttls.required"

    invoke-direct {p0, v4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".message.class"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 141
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v6, "message class: {0}"

    invoke-virtual {v4, v5, v6, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .local v4, "cl":Ljava/lang/ClassLoader;
    const/4 v5, 0x0

    .line 151
    .local v5, "messageClass":Ljava/lang/Class;
    :try_start_1
    invoke-static {v2, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 152
    goto :goto_1

    :catch_0
    move-exception v6

    .line 156
    .local v6, "ex1":Ljava/lang/ClassNotFoundException;
    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v5, v7

    .line 159
    .end local v6    # "ex1":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljavax/mail/Folder;

    aput-object v7, v6, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v6, v3

    move-object v1, v6

    .line 160
    .local v1, "c":[Ljava/lang/Class;
    invoke-virtual {v5, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    .end local v1    # "c":[Ljava/lang/Class;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "messageClass":Ljava/lang/Class;
    goto :goto_2

    :catch_1
    move-exception v1

    .line 162
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v5, "failed to load message class"

    invoke-virtual {v3, v4, v5, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return-void
.end method

.method private checkConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 418
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    return-void

    .line 419
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final declared-synchronized getBoolProp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "prop"    # Ljava/lang/String;

    monitor-enter p0

    .line 172
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 173
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    .line 174
    .local v0, "val":Z
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :cond_0
    monitor-exit p0

    return v0

    .line 171
    .end local v0    # "val":Z
    .end local p1    # "prop":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public capabilities()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 391
    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    .line 391
    .local v0, "c":Ljava/util/Map;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    if-eqz v0, :cond_0

    .line 395
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 397
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v1

    .line 391
    .end local v0    # "c":Ljava/util/Map;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 345
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 346
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    goto :goto_0

    .line 348
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 347
    :catch_0
    move-exception v1

    goto :goto_2

    .line 349
    :cond_0
    :goto_0
    :try_start_2
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 352
    invoke-super {p0}, Ljavax/mail/Store;->close()V

    goto :goto_3

    .line 348
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :catchall_1
    move-exception v1

    .line 349
    :goto_1
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 352
    invoke-super {p0}, Ljavax/mail/Store;->close()V

    .line 353
    throw v1

    .line 344
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 347
    :catch_1
    move-exception v1

    .line 349
    :goto_2
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 352
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 354
    :goto_3
    monitor-exit p0

    return-void

    .line 344
    :goto_4
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized closePort(Lcom/sun/mail/pop3/POP3Folder;)V
    .locals 1
    .param p1, "owner"    # Lcom/sun/mail/pop3/POP3Folder;

    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-ne v0, p1, :cond_0

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 339
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :cond_0
    monitor-exit p0

    return-void

    .line 336
    .end local p1    # "owner":Lcom/sun/mail/pop3/POP3Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 411
    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    .line 413
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Store;->close()V

    .line 415
    :cond_0
    return-void
.end method

.method public getDefaultFolder()Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 358
    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 365
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 366
    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .locals 2
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 371
    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method declared-synchronized getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;
    .locals 8
    .param p1, "owner"    # Lcom/sun/mail/pop3/POP3Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v0, :cond_0

    .line 259
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 260
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit p0

    return-object v0

    .line 264
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :cond_0
    :try_start_1
    new-instance v7, Lcom/sun/mail/pop3/Protocol;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    .line 265
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 264
    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sun/mail/pop3/Protocol;-><init>(Ljava/lang/String;ILcom/sun/mail/util/MailLogger;Ljava/util/Properties;Ljava/lang/String;Z)V

    move-object v0, v7

    .line 267
    .local v0, "p":Lcom/sun/mail/pop3/Protocol;
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-eqz v1, :cond_5

    .line 268
    :cond_1
    const-string v1, "STLS"

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->stls()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->capa()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->setCapabilities(Ljava/io/InputStream;)V

    goto :goto_0

    .line 272
    :cond_2
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-nez v1, :cond_3

    :goto_0
    goto :goto_3

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "STLS required but failed"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 275
    :try_start_2
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :goto_1
    goto :goto_2

    .line 277
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 276
    :catch_0
    move-exception v1

    goto :goto_1

    .line 278
    :goto_2
    :try_start_3
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "STLS required but failed"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_4
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-nez v1, :cond_b

    .line 292
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->getCapabilities()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    .line 293
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->isSSL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z

    .line 301
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 302
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    const-string v3, "TOP"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 303
    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 304
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "server doesn\'t support TOP, disabling it"

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 307
    :cond_6
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    const-string v3, "UIDL"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v2, 0x0

    :cond_7
    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/sun/mail/pop3/Protocol;->login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-nez v2, :cond_a

    .line 327
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v2, :cond_8

    if-eqz p1, :cond_8

    .line 328
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 329
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 331
    :cond_8
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v2, :cond_9

    .line 332
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 333
    :cond_9
    monitor-exit p0

    return-object v0

    .line 312
    :cond_a
    :try_start_4
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 313
    :goto_4
    goto :goto_5

    .line 314
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 313
    :catch_1
    move-exception v2

    goto :goto_4

    .line 315
    :goto_5
    :try_start_5
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    .end local v1    # "msg":Ljava/lang/String;
    :cond_b
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "STLS required but not supported"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 284
    :try_start_6
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 285
    :goto_6
    goto :goto_7

    .line 286
    :catchall_2
    move-exception v1

    goto :goto_7

    .line 285
    :catch_2
    move-exception v1

    goto :goto_6

    .line 287
    :goto_7
    :try_start_7
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "STLS required but not supported"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 257
    .end local v0    # "p":Lcom/sun/mail/pop3/Protocol;
    .end local p1    # "owner":Lcom/sun/mail/pop3/POP3Folder;
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getSession()Ljavax/mail/Session;
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 183
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 3

    monitor-enter p0

    .line 232
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 235
    monitor-exit p0

    return v1

    .line 237
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v0, :cond_1

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    goto :goto_0

    .line 239
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->noop()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 241
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 240
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NOOP failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    :catch_0
    move-exception v0

    .line 245
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_3
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :goto_1
    goto :goto_2

    .line 248
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 246
    :catch_1
    move-exception v2

    goto :goto_1

    .line 249
    :goto_2
    monitor-exit p0

    return v1

    .line 231
    .end local v0    # "ioex":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSSL()Z
    .locals 1

    monitor-enter p0

    .line 407
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 407
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "portNum"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 190
    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 195
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v1, v2, v0}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v1

    move p2, v1

    goto :goto_0

    .line 189
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "portNum":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "passwd":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 199
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "portNum":I
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "passwd":Ljava/lang/String;
    :cond_1
    :goto_0
    if-ne p2, v0, :cond_2

    .line 200
    iget v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    move p2, v0

    .line 202
    :cond_2
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    .line 203
    iput p2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    .line 204
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    .line 205
    iput-object p4, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    nop

    .line 216
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Connect failed"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 210
    .end local v0    # "ioex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "scex":Lcom/sun/mail/util/SocketConnectException;
    new-instance v1, Lcom/sun/mail/util/MailConnectException;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/MailConnectException;-><init>(Lcom/sun/mail/util/SocketConnectException;)V

    throw v1

    .line 208
    .end local v0    # "scex":Lcom/sun/mail/util/SocketConnectException;
    :catch_2
    move-exception v0

    .line 209
    .local v0, "eex":Ljava/io/EOFException;
    new-instance v1, Ljavax/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    .end local v0    # "eex":Ljava/io/EOFException;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "portNum":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "passwd":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    throw p1

    .line 191
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "portNum":I
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "passwd":Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method
