.class public Lcom/sun/mail/imap/IdleManager;
.super Ljava/lang/Object;
.source "IdleManager.java"


# instance fields
.field private volatile die:Z

.field private es:Ljava/util/concurrent/Executor;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private selector:Ljava/nio/channels/Selector;

.field private toAbort:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/mail/imap/IMAPFolder;",
            ">;"
        }
    .end annotation
.end field

.field private toWatch:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/mail/imap/IMAPFolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "es"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    .line 143
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    .line 155
    iput-object p2, p0, Lcom/sun/mail/imap/IdleManager;->es:Ljava/util/concurrent/Executor;

    .line 156
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "DEBUG IMAP"

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V

    iput-object v0, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    .line 157
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    .line 158
    new-instance v0, Lcom/sun/mail/imap/IdleManager$1;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IdleManager$1;-><init>(Lcom/sun/mail/imap/IdleManager;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/util/MailLogger;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IdleManager;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->select()V

    return-void
.end method

.method private processKeys()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 291
    const/4 v4, 0x0

    .line 297
    .local v4, "more":Z
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v9}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v6

    .line 307
    .local v6, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 308
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 343
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    .local v1, "folder":Lcom/sun/mail/imap/IMAPFolder;
    if-nez v1, :cond_3

    .line 377
    return v4

    .line 309
    .end local v1    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/channels/SelectionKey;

    .line 310
    .local v7, "sk":Ljava/nio/channels/SelectionKey;
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 312
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 313
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    .line 314
    .restart local v1    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 315
    const-string v11, "IdleManager selected folder: {0}"

    .line 314
    invoke-virtual {v9, v10, v11, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    .line 318
    .local v5, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v5, v13}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 320
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v1, v9}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 321
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 322
    const-string v11, "IdleManager continue watching folder {0}"

    .line 321
    invoke-virtual {v9, v10, v11, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v9, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 326
    const/4 v4, 0x1

    .line 327
    goto :goto_0

    .line 329
    :cond_2
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 330
    const-string v11, "IdleManager done watching folder {0}"

    .line 329
    invoke-virtual {v9, v10, v11, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 334
    .local v0, "ex":Ljavax/mail/MessagingException;
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 335
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "IdleManager got exception for folder: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 334
    invoke-virtual {v9, v10, v11, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 344
    .end local v0    # "ex":Ljavax/mail/MessagingException;
    .end local v5    # "sc":Ljava/nio/channels/SelectableChannel;
    .end local v7    # "sk":Ljava/nio/channels/SelectionKey;
    :cond_3
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 345
    const-string v11, "IdleManager aborting IDLE for folder: {0}"

    .line 344
    invoke-virtual {v9, v10, v11, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v5

    .line 347
    .local v5, "sc":Ljava/nio/channels/SocketChannel;
    if-eqz v5, :cond_0

    .line 349
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5, v9}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v7

    .line 351
    .restart local v7    # "sk":Ljava/nio/channels/SelectionKey;
    if-eqz v7, :cond_4

    .line 352
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 354
    :cond_4
    invoke-virtual {v5, v13}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 357
    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v8

    .line 358
    .local v8, "sock":Ljava/net/Socket;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/net/Socket;->getSoTimeout()I

    move-result v9

    if-lez v9, :cond_5

    .line 359
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v10, "IdleManager requesting DONE with timeout"

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 360
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v9, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 361
    move-object v2, v1

    .line 362
    .local v2, "folder0":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->es:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/sun/mail/imap/IdleManager$2;

    invoke-direct {v10, p0, v2}, Lcom/sun/mail/imap/IdleManager$2;-><init>(Lcom/sun/mail/imap/IdleManager;Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 370
    .end local v2    # "folder0":Lcom/sun/mail/imap/IMAPFolder;
    :cond_5
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->idleAbort()V

    .line 372
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v9, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 373
    const/4 v4, 0x1

    goto/16 :goto_1
.end method

.method private select()V
    .locals 7

    .prologue
    .line 212
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 214
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 246
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "IdleManager unwatchAll"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 248
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 249
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 254
    :goto_1
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "IdleManager exiting"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 256
    :goto_2
    return-void

    .line 215
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->watchAll()V

    .line 216
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "IdleManager waiting..."

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->select()I

    move-result v2

    .line 218
    .local v2, "ns":I
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 220
    const-string v5, "IdleManager selected {0} channels"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 219
    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_3
    iget-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    :cond_4
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->processKeys()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-gtz v3, :cond_4

    goto :goto_0

    .line 241
    .end local v2    # "ns":I
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/io/InterruptedIOException;
    :try_start_3
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "IdleManager interrupted"

    invoke-virtual {v3, v4, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "IdleManager unwatchAll"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 248
    :try_start_4
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 249
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 254
    :goto_3
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "IdleManager exiting"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_2

    .line 250
    :catch_1
    move-exception v1

    .line 252
    .local v1, "ex2":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "IdleManager unwatch exception"

    invoke-virtual {v3, v4, v5, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 243
    .end local v0    # "ex":Ljava/io/InterruptedIOException;
    .end local v1    # "ex2":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 244
    .local v0, "ex":Ljava/io/IOException;
    :try_start_5
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "IdleManager got exception"

    invoke-virtual {v3, v4, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 246
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "IdleManager unwatchAll"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 248
    :try_start_6
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 249
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 254
    :goto_4
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "IdleManager exiting"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 250
    :catch_3
    move-exception v1

    .line 252
    .restart local v1    # "ex2":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "IdleManager unwatch exception"

    invoke-virtual {v3, v4, v5, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 245
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "ex2":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 246
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "IdleManager unwatchAll"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 248
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 249
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 254
    :goto_5
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "IdleManager exiting"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 255
    throw v3

    .line 250
    :catch_4
    move-exception v1

    .line 252
    .restart local v1    # "ex2":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "IdleManager unwatch exception"

    invoke-virtual {v4, v5, v6, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 250
    .end local v1    # "ex2":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 252
    .restart local v1    # "ex2":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "IdleManager unwatch exception"

    invoke-virtual {v3, v4, v5, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private unwatchAll()V
    .locals 10

    .prologue
    .line 388
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    .line 389
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 411
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    .local v1, "folder":Lcom/sun/mail/imap/IMAPFolder;
    if-nez v1, :cond_2

    .line 428
    return-void

    .line 389
    .end local v1    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 391
    .local v4, "sk":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 392
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    .line 393
    .restart local v1    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v6, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 394
    const-string v8, "IdleManager no longer watching folder: {0}"

    .line 393
    invoke-virtual {v6, v7, v8, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    .line 398
    .local v3, "sc":Ljava/nio/channels/SelectableChannel;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 399
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->idleAbortWait()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 402
    .local v0, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 403
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IdleManager exception while aborting idle for folder: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 403
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 402
    invoke-virtual {v6, v7, v8, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 412
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "sc":Ljava/nio/channels/SelectableChannel;
    .end local v4    # "sk":Ljava/nio/channels/SelectionKey;
    :cond_2
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 413
    const-string v7, "IdleManager aborting IDLE for unwatched folder: {0}"

    .line 412
    invoke-virtual {v5, v6, v7, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    .line 415
    .local v3, "sc":Ljava/nio/channels/SocketChannel;
    if-eqz v3, :cond_0

    .line 419
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 420
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->idleAbortWait()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 421
    :catch_1
    move-exception v0

    .line 423
    .restart local v0    # "ex":Ljava/io/IOException;
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 424
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IdleManager exception while aborting idle for folder: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 424
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 423
    invoke-virtual {v5, v6, v7, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private watchAll()V
    .locals 6

    .prologue
    .line 268
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    .local v1, "folder":Lcom/sun/mail/imap/IMAPFolder;
    if-nez v1, :cond_1

    .line 284
    return-void

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 270
    const-string v5, "IdleManager adding {0} to selector"

    .line 269
    invoke-virtual {v3, v4, v5, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    :try_start_0
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 273
    .local v2, "sc":Ljava/nio/channels/SocketChannel;
    if-eqz v2, :cond_0

    .line 276
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 277
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    .end local v2    # "sc":Ljava/nio/channels/SocketChannel;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 281
    const-string v5, "IdleManager can\'t register folder"

    .line 280
    invoke-virtual {v3, v4, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V
    .locals 1
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 205
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 434
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 435
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "IdleManager stopping"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized watch(Ljavax/mail/Folder;)V
    .locals 6
    .param p1, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    instance-of v3, p1, Lcom/sun/mail/imap/IMAPFolder;

    if-nez v3, :cond_0

    .line 180
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Can only watch IMAP folders"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 181
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    move-object v1, v0

    .line 182
    .local v1, "ifolder":Lcom/sun/mail/imap/IMAPFolder;
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 183
    .local v2, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v2, :cond_1

    .line 184
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Folder is not using SocketChannels"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v5, "IdleManager watching {0}"

    invoke-virtual {v3, v4, v5, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    :cond_2
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/IMAPFolder;->startIdle(Lcom/sun/mail/imap/IdleManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    monitor-exit p0

    return-void
.end method
