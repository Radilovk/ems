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
            "Ljava/util/Queue<",
            "Lcom/sun/mail/imap/IMAPFolder;",
            ">;"
        }
    .end annotation
.end field

.field private toWatch:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
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
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    return-object p0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IdleManager;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->select()V

    return-void
.end method

.method private processKeys()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    .line 297
    .local v0, "more":Z
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    .line 307
    .local v1, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 308
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    nop

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 343
    nop

    :goto_1
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/IMAPFolder;

    move-object v5, v3

    .local v5, "folder":Lcom/sun/mail/imap/IMAPFolder;
    if-nez v3, :cond_0

    .line 377
    return v0

    .line 344
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 345
    nop

    .line 344
    const-string v7, "IdleManager aborting IDLE for folder: {0}"

    invoke-virtual {v3, v6, v7, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    .line 347
    .local v3, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v3, :cond_1

    .line 348
    goto :goto_1

    .line 349
    :cond_1
    iget-object v6, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3, v6}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v6

    .line 351
    .local v6, "sk":Ljava/nio/channels/SelectionKey;
    if-eqz v6, :cond_2

    .line 352
    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 354
    :cond_2
    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 357
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    .line 358
    .local v7, "sock":Ljava/net/Socket;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/net/Socket;->getSoTimeout()I

    move-result v8

    if-lez v8, :cond_3

    .line 359
    iget-object v8, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v9, "IdleManager requesting DONE with timeout"

    invoke-virtual {v8, v9}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 360
    iget-object v8, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v8, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 361
    move-object v8, v5

    .line 362
    .local v8, "folder0":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v9, p0, Lcom/sun/mail/imap/IdleManager;->es:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/sun/mail/imap/IdleManager$2;

    invoke-direct {v10, p0, v8}, Lcom/sun/mail/imap/IdleManager$2;-><init>(Lcom/sun/mail/imap/IdleManager;Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 369
    .end local v8    # "folder0":Lcom/sun/mail/imap/IMAPFolder;
    goto :goto_1

    .line 370
    :cond_3
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPFolder;->idleAbort()V

    .line 372
    iget-object v8, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v8, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 373
    const/4 v0, 0x1

    goto :goto_1

    .line 309
    .end local v3    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v5    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    .end local v6    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v7    # "sock":Ljava/net/Socket;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 310
    .local v3, "sk":Ljava/nio/channels/SelectionKey;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 312
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 313
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/IMAPFolder;

    .line 314
    .restart local v5    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v6, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 315
    nop

    .line 314
    const-string v8, "IdleManager selected folder: {0}"

    invoke-virtual {v6, v7, v8, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    .line 318
    .local v6, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v6, v4}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 320
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v5, v4}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 321
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 322
    const-string v8, "IdleManager continue watching folder {0}"

    .line 321
    invoke-virtual {v4, v7, v8, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 326
    const/4 v0, 0x1

    .line 327
    goto/16 :goto_0

    .line 329
    :cond_5
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 330
    const-string v8, "IdleManager done watching folder {0}"

    .line 329
    invoke-virtual {v4, v7, v8, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto/16 :goto_0

    :catch_0
    move-exception v4

    .line 334
    .local v4, "ex":Ljavax/mail/MessagingException;
    iget-object v7, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 335
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "IdleManager got exception for folder: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 336
    nop

    .line 334
    invoke-virtual {v7, v8, v9, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private select()V
    .locals 8

    .line 212
    const-string v0, "IdleManager exiting"

    const-string v1, "IdleManager unwatch exception"

    const-string v2, "IdleManager unwatchAll"

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 214
    nop

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    if-eqz v3, :cond_1

    .line 241
    goto :goto_1

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->watchAll()V

    .line 216
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "IdleManager waiting..."

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->select()I

    move-result v3

    .line 218
    .local v3, "ns":I
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 220
    const-string v6, "IdleManager selected {0} channels"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 219
    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_2
    iget-boolean v4, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    if-nez v4, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 222
    goto :goto_1

    .line 238
    :cond_3
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->processKeys()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v4
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v4, :cond_3

    goto :goto_0

    .line 246
    .end local v3    # "ns":I
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 248
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 249
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    :goto_2
    goto :goto_4

    :catch_0
    move-exception v2

    .line 252
    .local v2, "ex2":Ljava/io/IOException;
    :goto_3
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v1, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    .end local v2    # "ex2":Ljava/io/IOException;
    :goto_4
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_5

    .line 245
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 243
    :catch_1
    move-exception v3

    .line 244
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "IdleManager got exception"

    invoke-virtual {v4, v5, v6, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    .end local v3    # "ex":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 248
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 249
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 250
    :catch_2
    move-exception v2

    goto :goto_3

    .line 241
    :catch_3
    move-exception v3

    .line 242
    .local v3, "ex":Ljava/io/InterruptedIOException;
    :try_start_4
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "IdleManager interrupted"

    invoke-virtual {v4, v5, v6, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    .end local v3    # "ex":Ljava/io/InterruptedIOException;
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 248
    :try_start_5
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 249
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 250
    :catch_4
    move-exception v2

    goto :goto_3

    .line 256
    :goto_5
    return-void

    .line 246
    :goto_6
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v4, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 248
    :try_start_6
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 249
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 250
    goto :goto_7

    :catch_5
    move-exception v2

    .line 252
    .restart local v2    # "ex2":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v1, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    .end local v2    # "ex2":Ljava/io/IOException;
    :goto_7
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 255
    throw v3
.end method

.method private unwatchAll()V
    .locals 10

    .line 388
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    .line 389
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "IdleManager exception while aborting idle for folder: "

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 411
    nop

    :goto_1
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    move-object v2, v1

    .local v2, "folder":Lcom/sun/mail/imap/IMAPFolder;
    if-nez v1, :cond_0

    .line 428
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 413
    nop

    .line 412
    const-string v6, "IdleManager aborting IDLE for unwatched folder: {0}"

    invoke-virtual {v1, v5, v6, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 415
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v1, :cond_1

    .line 416
    goto :goto_1

    .line 419
    :cond_1
    :try_start_0
    invoke-virtual {v1, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 420
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->idleAbortWait()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    goto :goto_1

    :catch_0
    move-exception v5

    .line 423
    .local v5, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 425
    nop

    .line 423
    invoke-virtual {v6, v7, v8, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 389
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v2    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 391
    .local v2, "sk":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 392
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/IMAPFolder;

    .line 393
    .local v5, "folder":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v6, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 394
    nop

    .line 393
    const-string v8, "IdleManager no longer watching folder: {0}"

    invoke-virtual {v6, v7, v8, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    .line 398
    .local v6, "sc":Ljava/nio/channels/SelectableChannel;
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 399
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPFolder;->idleAbortWait()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    goto :goto_0

    :catch_1
    move-exception v4

    .line 402
    .local v4, "ex":Ljava/io/IOException;
    iget-object v7, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 403
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    nop

    .line 402
    invoke-virtual {v7, v8, v3, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private watchAll()V
    .locals 5

    .line 268
    nop

    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    move-object v1, v0

    .local v1, "folder":Lcom/sun/mail/imap/IMAPFolder;
    if-nez v0, :cond_0

    .line 284
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 270
    nop

    .line 269
    const-string v3, "IdleManager adding {0} to selector"

    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    :try_start_0
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 273
    .local v0, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v0, :cond_1

    .line 274
    goto :goto_0

    .line 276
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 277
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    nop

    .end local v0    # "sc":Ljava/nio/channels/SocketChannel;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 281
    nop

    .line 280
    const-string v4, "IdleManager can\'t register folder"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V
    .locals 1
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;

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

    monitor-enter p0

    .line 434
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

    .line 433
    .end local p0    # "this":Lcom/sun/mail/imap/IdleManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized watch(Ljavax/mail/Folder;)V
    .locals 5
    .param p1, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 179
    :try_start_0
    instance-of v0, p1, Lcom/sun/mail/imap/IMAPFolder;

    if-eqz v0, :cond_2

    .line 181
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    .line 182
    .local v0, "ifolder":Lcom/sun/mail/imap/IMAPFolder;
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 183
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    if-eqz v1, :cond_1

    .line 185
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "IdleManager watching {0}"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    :cond_0
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/IMAPFolder;->startIdle(Lcom/sun/mail/imap/IdleManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 184
    .end local p0    # "this":Lcom/sun/mail/imap/IdleManager;
    :cond_1
    :try_start_1
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Folder is not using SocketChannels"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    .end local v0    # "ifolder":Lcom/sun/mail/imap/IMAPFolder;
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    :cond_2
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can only watch IMAP folders"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .end local p1    # "folder":Ljavax/mail/Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
