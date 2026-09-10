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

    .prologue
    .line 100
    const-string v0, "pop3"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/pop3/POP3Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSSL"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 72
    const-string v7, "pop3"

    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    .line 73
    const/16 v7, 0x6e

    iput v7, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 74
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 76
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 77
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 78
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    .line 79
    const/4 v7, -0x1

    iput v7, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    .line 80
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    .line 81
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    .line 82
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    .line 83
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    .line 84
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z

    .line 89
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    .line 90
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    .line 91
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 92
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    .line 93
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z

    .line 94
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->cacheWriteTo:Z

    .line 95
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->useFileCache:Z

    .line 96
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->fileCacheDir:Ljava/io/File;

    .line 97
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->keepMessageContent:Z

    .line 106
    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 108
    :cond_0
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    .line 109
    new-instance v7, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 110
    const-string v9, "DEBUG POP3"

    invoke-direct {v7, v8, v9, p1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V

    .line 109
    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    .line 112
    if-nez p4, :cond_1

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mail."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".ssl.enable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 113
    invoke-static {p1, v7, v8}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result p4

    .line 115
    :cond_1
    if-eqz p4, :cond_5

    .line 116
    const/16 v7, 0x3e3

    iput v7, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 119
    :goto_0
    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 121
    const-string v7, "rsetbeforequit"

    invoke-direct {p0, v7}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    .line 122
    const-string v7, "disabletop"

    invoke-direct {p0, v7}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 123
    const-string v7, "forgettopheaders"

    invoke-direct {p0, v7}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    .line 124
    const-string v7, "cachewriteto"

    invoke-direct {p0, v7}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->cacheWriteTo:Z

    .line 125
    const-string v7, "filecache.enable"

    invoke-direct {p0, v7}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->useFileCache:Z

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mail."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".filecache.dir"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "dir":Ljava/lang/String;
    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    iget-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mail."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".filecache.dir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 129
    :cond_2
    if-eqz v2, :cond_3

    .line 130
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->fileCacheDir:Ljava/io/File;

    .line 131
    :cond_3
    const-string v7, "keepmessagecontent"

    invoke-direct {p0, v7}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->keepMessageContent:Z

    .line 134
    const-string v7, "starttls.enable"

    invoke-direct {p0, v7}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    .line 137
    const-string v7, "starttls.required"

    invoke-direct {p0, v7}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mail."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".message.class"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 141
    iget-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v9, "message class: {0}"

    invoke-virtual {v7, v8, v9, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 146
    .local v1, "cl":Ljava/lang/ClassLoader;
    const/4 v5, 0x0

    .line 151
    .local v5, "messageClass":Ljava/lang/Class;
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v6, v7, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 159
    :goto_1
    const/4 v7, 0x2

    :try_start_2
    new-array v0, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljavax/mail/Folder;

    aput-object v8, v0, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v0, v7

    .line 160
    .local v0, "c":[Ljava/lang/Class;
    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 165
    .end local v0    # "c":[Ljava/lang/Class;
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "messageClass":Ljava/lang/Class;
    :cond_4
    :goto_2
    return-void

    .line 118
    .end local v2    # "dir":Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    :cond_5
    const/16 v7, 0x6e

    iput v7, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    goto/16 :goto_0

    .line 152
    .restart local v1    # "cl":Ljava/lang/ClassLoader;
    .restart local v2    # "dir":Ljava/lang/String;
    .restart local v5    # "messageClass":Ljava/lang/Class;
    .restart local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 156
    .local v4, "ex1":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_1

    .line 161
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "ex1":Ljava/lang/ClassNotFoundException;
    .end local v5    # "messageClass":Ljava/lang/Class;
    :catch_1
    move-exception v3

    .line 162
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v9, "failed to load message class"

    invoke-virtual {v7, v8, v9, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private checkConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    return-void
.end method

.method private final declared-synchronized getBoolProp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

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

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    monitor-exit p0

    return v0

    .line 172
    .end local v0    # "val":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public capabilities()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
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

    .line 397
    :goto_0
    return-object v1

    .line 391
    .end local v0    # "c":Ljava/util/Map;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 397
    .restart local v0    # "c":Ljava/util/Map;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 352
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :goto_0
    monitor-exit p0

    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 349
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 352
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 348
    :catchall_1
    move-exception v0

    .line 349
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 352
    invoke-super {p0}, Ljavax/mail/Store;->close()V

    .line 353
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method declared-synchronized closePort(Lcom/sun/mail/pop3/POP3Folder;)V
    .locals 1
    .param p1, "owner"    # Lcom/sun/mail/pop3/POP3Folder;

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-ne v0, p1, :cond_0

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_0
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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
    .locals 9
    .param p1, "owner"    # Lcom/sun/mail/pop3/POP3Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 258
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v1, :cond_1

    .line 259
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 260
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 264
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sun/mail/pop3/Protocol;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    .line 265
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v4}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 264
    invoke-direct/range {v0 .. v6}, Lcom/sun/mail/pop3/Protocol;-><init>(Ljava/lang/String;ILcom/sun/mail/util/MailLogger;Ljava/util/Properties;Ljava/lang/String;Z)V

    .line 267
    .local v0, "p":Lcom/sun/mail/pop3/Protocol;
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-eqz v1, :cond_3

    .line 268
    :cond_2
    const-string v1, "STLS"

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 269
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->stls()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 271
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->capa()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->setCapabilities(Ljava/io/InputStream;)V

    .line 292
    :cond_3
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->getCapabilities()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    .line 293
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->isSSL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z

    .line 301
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    if-nez v1, :cond_4

    .line 302
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    const-string v2, "TOP"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 303
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 304
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "server doesn\'t support TOP, disabling it"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 307
    :cond_4
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    const-string v2, "UIDL"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z

    .line 309
    const/4 v7, 0x0

    .line 310
    .local v7, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sun/mail/pop3/Protocol;->login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_8

    .line 312
    :try_start_2
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 315
    :goto_2
    :try_start_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    .end local v0    # "p":Lcom/sun/mail/pop3/Protocol;
    .end local v7    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 272
    .restart local v0    # "p":Lcom/sun/mail/pop3/Protocol;
    :cond_5
    :try_start_4
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-eqz v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "STLS required but failed"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    :try_start_5
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 278
    :goto_3
    :try_start_6
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "STLS required but failed"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_6
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "STLS required but not supported"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 284
    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 287
    :goto_4
    :try_start_8
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "STLS required but not supported"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move v1, v8

    .line 307
    goto :goto_1

    .line 327
    .restart local v7    # "msg":Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v1, :cond_9

    if-eqz p1, :cond_9

    .line 328
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 329
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 331
    :cond_9
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v1, :cond_0

    .line 332
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 276
    .end local v7    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_3

    .line 285
    :catch_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_4

    .line 313
    .restart local v7    # "msg":Ljava/lang/String;
    :catch_2
    move-exception v1

    goto :goto_2

    :catchall_3
    move-exception v1

    goto :goto_2
.end method

.method declared-synchronized getSession()Ljavax/mail/Session;
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 232
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .line 249
    :goto_0
    monitor-exit p0

    return v1

    .line 237
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v2, :cond_2

    .line 238
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 241
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 239
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/Protocol;->noop()Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    new-instance v2, Ljava/io/IOException;

    const-string v3, "NOOP failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    :catch_0
    move-exception v0

    .line 245
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_2
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 246
    :catch_1
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_0

    .line 232
    .end local v0    # "ioex":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isSSL()Z
    .locals 1

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "portNum"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 190
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 191
    :cond_0
    const/4 v3, 0x0

    .line 216
    :goto_0
    monitor-exit p0

    return v3

    .line 195
    :cond_1
    if-ne p2, v6, :cond_2

    .line 196
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".port"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 196
    invoke-static {v3, v4, v5}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result p2

    .line 199
    :cond_2
    if-ne p2, v6, :cond_3

    .line 200
    iget p2, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 202
    :cond_3
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
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    const/4 v3, 0x1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "eex":Ljava/io/EOFException;
    :try_start_2
    new-instance v3, Ljavax/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    .end local v0    # "eex":Ljava/io/EOFException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 210
    :catch_1
    move-exception v2

    .line 211
    .local v2, "scex":Lcom/sun/mail/util/SocketConnectException;
    :try_start_3
    new-instance v3, Lcom/sun/mail/util/MailConnectException;

    invoke-direct {v3, v2}, Lcom/sun/mail/util/MailConnectException;-><init>(Lcom/sun/mail/util/SocketConnectException;)V

    throw v3

    .line 212
    .end local v2    # "scex":Lcom/sun/mail/util/SocketConnectException;
    :catch_2
    move-exception v1

    .line 213
    .local v1, "ioex":Ljava/io/IOException;
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Connect failed"

    invoke-direct {v3, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
