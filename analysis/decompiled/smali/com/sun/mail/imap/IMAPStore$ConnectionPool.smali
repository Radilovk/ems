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
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "plogger"    # Lcom/sun/mail/util/MailLogger;
    .param p3, "session"    # Ljavax/mail/Session;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;

    .line 264
    iput-boolean v11, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    .line 333
    iput v11, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".connectionpool.debug"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-static {p3, v5, v11}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v1

    .line 341
    .local v1, "debug":Z
    const-string v5, "connectionpool"

    .line 342
    const-string v6, "DEBUG IMAP CP"

    .line 341
    invoke-virtual {p2, v5, v6, v1}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/util/MailLogger;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".connectionpoolsize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-static {p3, v5, v10}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v4

    .line 347
    .local v4, "size":I
    if-lez v4, :cond_5

    .line 348
    iput v4, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    .line 349
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail.imap.connectionpoolsize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 356
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".connectionpooltimeout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 355
    invoke-static {p3, v5, v10}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v0

    .line 357
    .local v0, "connectionPoolTimeout":I
    if-lez v0, :cond_6

    .line 358
    int-to-long v6, v0

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    .line 359
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 360
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail.imap.connectionpooltimeout: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    iget-wide v8, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 360
    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 367
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servertimeout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-static {p3, v5, v10}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v3

    .line 368
    .local v3, "serverTimeout":I
    if-lez v3, :cond_7

    .line 369
    int-to-long v6, v3

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    .line 370
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 371
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail.imap.servertimeout: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    iget-wide v8, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 378
    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pruninginterval"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-static {p3, v5, v10}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v2

    .line 379
    .local v2, "pruning":I
    if-lez v2, :cond_8

    .line 380
    int-to-long v6, v2

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    .line 381
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 382
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail.imap.pruninginterval: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    iget-wide v8, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 382
    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 391
    :cond_3
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".separatestoreconnection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 390
    invoke-static {p3, v5, v11}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v5

    .line 389
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    .line 392
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    if-eqz v5, :cond_4

    .line 393
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "dedicate a store connection"

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 395
    :cond_4
    return-void

    .line 352
    .end local v0    # "connectionPoolTimeout":I
    .end local v2    # "pruning":I
    .end local v3    # "serverTimeout":I
    :cond_5
    const/4 v5, 0x1

    iput v5, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    goto/16 :goto_0

    .line 363
    .restart local v0    # "connectionPoolTimeout":I
    :cond_6
    const-wide/32 v6, 0xafc8

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    goto/16 :goto_1

    .line 374
    .restart local v3    # "serverTimeout":I
    :cond_7
    const-wide/32 v6, 0x1b7740

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    goto :goto_2

    .line 385
    .restart local v2    # "pruning":I
    :cond_8
    const-wide/32 v6, 0xea60

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    goto :goto_3
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    return v0
.end method

.method static synthetic access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    return-wide v0
.end method

.method static synthetic access$12(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V
    .locals 1

    .prologue
    .line 268
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    return-void
.end method

.method static synthetic access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V
    .locals 0

    .prologue
    .line 333
    iput p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    return-void
.end method

.method static synthetic access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-void
.end method

.method static synthetic access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    return v0
.end method

.method static synthetic access$16(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V
    .locals 0

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    return-void
.end method

.method static synthetic access$8(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    return v0
.end method

.method static synthetic access$9(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    return-wide v0
.end method
