.class Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
.super Ljava/lang/Object;
.source "IMAPStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/imap/IMAPStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionPool"
.end annotation


# static fields
.field private static final ABORTING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final RUNNING:I


# instance fields
.field private authenticatedConnections:Ljava/util/Vector;

.field private final clientTimeoutInterval:J

.field private folders:Ljava/util/Vector;

.field private idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private idleState:I

.field private lastTimePruned:J

.field private final logger:Lcom/sun/mail/util/MailLogger;

.field private final poolSize:I

.field private final pruningInterval:J

.field private final separateStoreConnection:Z

.field private final serverTimeoutInterval:J

.field private storeConnectionInUse:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sun/mail/util/MailLogger;Ljavax/mail/Session;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "plogger"    # Lcom/sun/mail/util/MailLogger;
    .param p3, "session"    # Ljavax/mail/Session;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    .line 333
    iput v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    .line 339
    nop

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".connectionpool.debug"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {p3, v1, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v1

    .line 341
    .local v1, "debug":Z
    nop

    .line 342
    nop

    .line 341
    const-string v3, "connectionpool"

    const-string v4, "DEBUG IMAP CP"

    invoke-virtual {p2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    .line 345
    nop

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".connectionpoolsize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    const/4 v4, -0x1

    invoke-static {p3, v3, v4}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v3

    .line 347
    .local v3, "size":I
    if-lez v3, :cond_0

    .line 348
    iput v3, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    .line 349
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 350
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail.imap.connectionpoolsize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 351
    goto :goto_0

    .line 352
    :cond_0
    const/4 v5, 0x1

    iput v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    .line 355
    :cond_1
    :goto_0
    nop

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".connectionpooltimeout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 355
    invoke-static {p3, v5, v4}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v5

    .line 357
    .local v5, "connectionPoolTimeout":I
    if-lez v5, :cond_2

    .line 358
    int-to-long v6, v5

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    .line 359
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 360
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mail.imap.connectionpooltimeout: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    iget-wide v8, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 360
    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 362
    goto :goto_1

    .line 363
    :cond_2
    const-wide/32 v6, 0xafc8

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    .line 366
    :cond_3
    :goto_1
    nop

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".servertimeout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    invoke-static {p3, v6, v4}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v6

    .line 368
    .local v6, "serverTimeout":I
    if-lez v6, :cond_4

    .line 369
    int-to-long v7, v6

    iput-wide v7, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    .line 370
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 371
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mail.imap.servertimeout: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    iget-wide v9, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 371
    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 373
    goto :goto_2

    .line 374
    :cond_4
    const-wide/32 v7, 0x1b7740

    iput-wide v7, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    .line 377
    :cond_5
    :goto_2
    nop

    .line 378
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".pruninginterval"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 377
    invoke-static {p3, v7, v4}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v4

    .line 379
    .local v4, "pruning":I
    if-lez v4, :cond_6

    .line 380
    int-to-long v7, v4

    iput-wide v7, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    .line 381
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 382
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mail.imap.pruninginterval: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    iget-wide v9, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 382
    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 384
    goto :goto_3

    .line 385
    :cond_6
    const-wide/32 v7, 0xea60

    iput-wide v7, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    .line 389
    :cond_7
    :goto_3
    nop

    .line 390
    nop

    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".separatestoreconnection"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-static {p3, v2, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    .line 389
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    .line 392
    if-eqz v0, :cond_8

    .line 393
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "dedicate a store connection"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 395
    :cond_8
    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    .locals 0

    .line 272
    iget-boolean p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    return p0
.end method

.method static synthetic access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .line 284
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .line 275
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    return-wide v0
.end method

.method static synthetic access$12(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V
    .locals 0

    .line 268
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    return-void
.end method

.method static synthetic access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V
    .locals 0

    .line 333
    iput p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    return-void
.end method

.method static synthetic access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-void
.end method

.method static synthetic access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I
    .locals 0

    .line 333
    iget p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    return p0
.end method

.method static synthetic access$16(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object p0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    .locals 0

    .line 264
    iget-boolean p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    return p0
.end method

.method static synthetic access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .line 278
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$5(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    return-object p0
.end method

.method static synthetic access$7(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    return-void
.end method

.method static synthetic access$8(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I
    .locals 0

    .line 281
    iget p0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    return p0
.end method

.method static synthetic access$9(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .line 268
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    return-wide v0
.end method
