.class public Lcom/sun/mail/imap/IMAPFolder;
.super Ljavax/mail/Folder;
.source "IMAPFolder.java"

# interfaces
.implements Ljavax/mail/UIDFolder;
.implements Lcom/sun/mail/iap/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;,
        Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ABORTING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final RUNNING:I = 0x0

.field protected static final UNKNOWN_SEPARATOR:C = '\uffff'


# instance fields
.field protected volatile attributes:[Ljava/lang/String;

.field protected availableFlags:Ljavax/mail/Flags;

.field private cachedStatus:Lcom/sun/mail/imap/protocol/Status;

.field private cachedStatusTime:J

.field private connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

.field private doExpungeNotification:Z

.field protected volatile exists:Z

.field protected volatile fullName:Ljava/lang/String;

.field private hasMessageCountListener:Z

.field private volatile highestmodseq:J

.field private idleManager:Lcom/sun/mail/imap/IdleManager;

.field private idleState:I

.field protected isNamespace:Z

.field protected logger:Lcom/sun/mail/util/MailLogger;

.field protected messageCache:Lcom/sun/mail/imap/MessageCache;

.field protected final messageCacheLock:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field private volatile opened:Z

.field protected permanentFlags:Ljavax/mail/Flags;

.field protected volatile protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private realTotal:I

.field private reallyClosed:Z

.field private volatile recent:I

.field protected separator:C

.field private volatile total:I

.field protected type:I

.field protected uidTable:Ljava/util/Hashtable;

.field private uidnext:J

.field private uidvalidity:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    const-class v0, Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    .line 268
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V
    .locals 3
    .param p1, "li"    # Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "store"    # Lcom/sun/mail/imap/IMAPStore;

    .prologue
    .line 411
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iget-char v1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V

    .line 413
    iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v0, :cond_0

    .line 414
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 415
    :cond_0
    iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    if-eqz v0, :cond_1

    .line 416
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 417
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 418
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 419
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "store"    # Lcom/sun/mail/imap/IMAPStore;
    .param p4, "isNamespace"    # Ljava/lang/Boolean;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 370
    invoke-direct {p0, p3}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 187
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 193
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    .line 205
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 217
    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 269
    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 272
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 274
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 275
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 277
    iput-wide v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 278
    iput-wide v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 279
    iput-wide v8, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 280
    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 283
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    .line 285
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    .line 371
    if-nez p1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Folder name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_0
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 374
    iput-char p2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 375
    new-instance v1, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 376
    const-string v3, "DEBUG IMAP"

    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V

    .line 375
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 377
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getConnectionPoolLogger()Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

    .line 390
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 391
    const v1, 0xffff

    if-eq p2, v1, :cond_1

    if-eqz p2, :cond_1

    .line 392
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 393
    .local v0, "i":I
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 395
    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 400
    .end local v0    # "i":I
    :cond_1
    if-eqz p4, :cond_2

    .line 401
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 402
    :cond_2
    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPFolder;)I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return v0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/IdleManager;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPFolder;I)V
    .locals 0

    .prologue
    .line 269
    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return-void
.end method

.method static synthetic access$3(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IdleManager;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    return-void
.end method

.method private checkFlags(Ljavax/mail/Flags;)V
    .locals 3
    .param p1, "flags"    # Ljavax/mail/Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 500
    sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 501
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 502
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot change flags on READ_ONLY folder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_1
    return-void
.end method

.method private cleanup(Z)V
    .locals 3
    .param p1, "returnToPool"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1499
    sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1500
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1501
    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    .line 1502
    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1503
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1504
    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1505
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 1506
    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 1507
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1508
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V

    .line 1509
    return-void
.end method

.method private close(ZZ)V
    .locals 10
    .param p1, "expunge"    # Z
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1402
    sget-boolean v5, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1403
    :cond_0
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1410
    :try_start_0
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v5, :cond_1

    .line 1411
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 1412
    const-string v7, "This operation is not allowed on a closed folder"

    .line 1411
    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1403
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1415
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 1421
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v5, :cond_2

    .line 1422
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1491
    :goto_0
    return-void

    .line 1424
    :cond_2
    const/4 v3, 0x1

    .line 1426
    .local v3, "reuseProtocol":Z
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 1427
    if-eqz p2, :cond_5

    .line 1428
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "forcing folder {0} to close"

    .line 1429
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 1428
    invoke-virtual {v5, v7, v8, v9}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1430
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v5, :cond_3

    .line 1431
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1487
    :cond_3
    :goto_1
    :try_start_3
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v5, :cond_4

    .line 1488
    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1403
    :cond_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1432
    :cond_5
    :try_start_4
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v5, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1434
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 1435
    const-string v7, "pool is full, not adding an Authenticated connection"

    .line 1434
    invoke-virtual {v5, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1438
    if-eqz p1, :cond_6

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v5, :cond_6

    .line 1439
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1441
    :cond_6
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v5, :cond_3

    .line 1442
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1483
    :catch_0
    move-exception v1

    .line 1484
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1485
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_1
    move-exception v5

    .line 1487
    :try_start_6
    iget-boolean v7, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v7, :cond_7

    .line 1488
    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1489
    :cond_7
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1447
    :cond_8
    if-nez p1, :cond_a

    :try_start_7
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
    :try_end_7
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_a

    .line 1449
    :try_start_8
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v5, :cond_9

    .line 1450
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "UNSELECT"

    invoke-virtual {v5, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1451
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unselect()V

    goto :goto_1

    .line 1475
    :catch_1
    move-exception v2

    .line 1476
    .local v2, "pex2":Lcom/sun/mail/iap/ProtocolException;
    const/4 v3, 0x0

    .line 1478
    goto :goto_1

    .line 1461
    .end local v2    # "pex2":Lcom/sun/mail/iap/ProtocolException;
    :cond_9
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_8
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v5, :cond_3

    .line 1462
    const/4 v4, 0x1

    .line 1464
    .local v4, "selected":Z
    :try_start_9
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_9
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1471
    :goto_2
    if-eqz v4, :cond_3

    :try_start_a
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v5, :cond_3

    .line 1472
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
    :try_end_a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 1466
    :catch_2
    move-exception v0

    .line 1469
    .local v0, "ex":Lcom/sun/mail/iap/CommandFailedException;
    const/4 v4, 0x0

    goto :goto_2

    .line 1479
    .end local v0    # "ex":Lcom/sun/mail/iap/CommandFailedException;
    .end local v4    # "selected":Z
    :cond_a
    :try_start_b
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v5, :cond_3

    .line 1480
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
    :try_end_b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1
.end method

.method private declared-synchronized copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    .locals 9
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .param p3, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1973
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1975
    array-length v5, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_0

    .line 2011
    :goto_0
    monitor-exit p0

    return-void

    .line 1979
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v5, v6, :cond_4

    .line 1980
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1982
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1983
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v2

    .line 1984
    .local v2, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v2, :cond_1

    .line 1985
    new-instance v5, Ljavax/mail/MessageRemovedException;

    .line 1986
    const-string v7, "Messages have been removed"

    .line 1985
    invoke-direct {v5, v7}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1991
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v1

    .line 1992
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v7, "TRYCREATE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 1993
    new-instance v5, Ljavax/mail/FolderNotFoundException;

    .line 1995
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " does not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1993
    invoke-direct {v5, p2, v7}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v5

    .line 1980
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1973
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1987
    .restart local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_1
    if-eqz p3, :cond_2

    .line 1988
    :try_start_5
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->move([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1980
    :goto_1
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1990
    :cond_2
    :try_start_7
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1999
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_1
    move-exception v0

    .line 2000
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_8
    new-instance v5, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v5

    .line 1998
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :cond_3
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 2001
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_2
    move-exception v4

    .line 2002
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2006
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_4
    if-eqz p3, :cond_5

    .line 2007
    :try_start_9
    new-instance v5, Ljavax/mail/MessagingException;

    .line 2008
    const-string v6, "Move between stores not supported"

    .line 2007
    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2010
    :cond_5
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0
.end method

.method private declared-synchronized copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;
    .locals 26
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .param p3, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2038
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2040
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v19, :cond_0

    .line 2041
    const/16 v16, 0x0

    .line 2130
    :goto_0
    monitor-exit p0

    return-object v16

    .line 2044
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 2045
    new-instance v20, Ljavax/mail/MessagingException;

    .line 2046
    if-eqz p3, :cond_1

    .line 2047
    const-string v19, "can\'t moveUIDMessages to a different store"

    .line 2045
    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2038
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 2048
    :cond_1
    :try_start_2
    const-string v19, "can\'t copyUIDMessages to a different store"

    goto :goto_1

    .line 2052
    :cond_2
    new-instance v10, Ljavax/mail/FetchProfile;

    invoke-direct {v10}, Ljavax/mail/FetchProfile;-><init>()V

    .line 2053
    .local v10, "fp":Ljavax/mail/FetchProfile;
    sget-object v19, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 2054
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2059
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v14

    .line 2061
    .local v14, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v13

    .line 2062
    .local v13, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v13, :cond_3

    .line 2063
    new-instance v19, Ljavax/mail/MessageRemovedException;

    .line 2064
    const-string v21, "Messages have been removed"

    .line 2063
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_3
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2131
    .end local v13    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v14    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v7

    .line 2132
    .local v7, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_4
    invoke-virtual {v7}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v19

    const-string v21, "TRYCREATE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 2133
    new-instance v19, Ljavax/mail/FolderNotFoundException;

    .line 2135
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " does not exist"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2133
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v19

    .line 2057
    .end local v7    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2066
    .restart local v13    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v14    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_3
    if-eqz p3, :cond_4

    .line 2067
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v13, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v8

    .line 2111
    .local v8, "cuid":Lcom/sun/mail/imap/CopyUID;
    :goto_2
    iget-object v0, v8, Lcom/sun/mail/imap/CopyUID;->src:[Lcom/sun/mail/imap/protocol/UIDSet;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object v18

    .line 2112
    .local v18, "srcuids":[J
    iget-object v0, v8, Lcom/sun/mail/imap/CopyUID;->dst:[Lcom/sun/mail/imap/protocol/UIDSet;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object v9

    .line 2115
    .local v9, "dstuids":[J
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesByUID([J)[Ljavax/mail/Message;

    move-result-object v17

    .line 2116
    .local v17, "srcmsgs":[Ljavax/mail/Message;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/mail/imap/AppendUID;

    move-object/from16 v16, v0

    .line 2117
    .local v16, "result":[Lcom/sun/mail/imap/AppendUID;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0
    :try_end_6
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v0, v19

    if-lt v11, v0, :cond_5

    .line 2130
    :try_start_7
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 2069
    .end local v8    # "cuid":Lcom/sun/mail/imap/CopyUID;
    .end local v9    # "dstuids":[J
    .end local v11    # "i":I
    .end local v16    # "result":[Lcom/sun/mail/imap/AppendUID;
    .end local v17    # "srcmsgs":[Ljavax/mail/Message;
    .end local v18    # "srcuids":[J
    :cond_4
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v13, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v8

    .restart local v8    # "cuid":Lcom/sun/mail/imap/CopyUID;
    goto :goto_2

    .line 2118
    .restart local v9    # "dstuids":[J
    .restart local v11    # "i":I
    .restart local v16    # "result":[Lcom/sun/mail/imap/AppendUID;
    .restart local v17    # "srcmsgs":[Ljavax/mail/Message;
    .restart local v18    # "srcuids":[J
    :cond_5
    move v12, v11

    .line 2120
    .local v12, "j":I
    :cond_6
    aget-object v19, p1, v11

    aget-object v21, v17, v12

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 2121
    new-instance v19, Lcom/sun/mail/imap/AppendUID;

    .line 2122
    iget-wide v0, v8, Lcom/sun/mail/imap/CopyUID;->uidvalidity:J

    move-wide/from16 v22, v0

    aget-wide v24, v9, v12

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V

    .line 2121
    aput-object v19, v16, v11

    .line 2117
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2125
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 2126
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0
    :try_end_8
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move/from16 v0, v19

    if-lt v12, v0, :cond_8

    .line 2127
    const/4 v12, 0x0

    .line 2128
    :cond_8
    if-ne v12, v11, :cond_6

    goto :goto_4

    .line 2138
    .end local v8    # "cuid":Lcom/sun/mail/imap/CopyUID;
    .end local v9    # "dstuids":[J
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v13    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v14    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v16    # "result":[Lcom/sun/mail/imap/AppendUID;
    .end local v17    # "srcmsgs":[Ljavax/mail/Message;
    .end local v18    # "srcuids":[J
    .restart local v7    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :cond_9
    :try_start_9
    new-instance v19, Ljavax/mail/MessagingException;

    invoke-virtual {v7}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v19

    .line 2139
    .end local v7    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_1
    move-exception v6

    .line 2140
    .local v6, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v19, Ljavax/mail/FolderClosedException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v19

    .line 2141
    .end local v6    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v15

    .line 2142
    .local v15, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v19, Ljavax/mail/MessagingException;

    invoke-virtual {v15}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v15}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method private createHeaderCommand([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "hdrs"    # [Ljava/lang/String;

    .prologue
    .line 1310
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1311
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "BODY.PEEK[HEADER.FIELDS ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1315
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 1321
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1322
    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1326
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1313
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "RFC822.HEADER.LINES ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v1    # "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 1316
    .restart local v0    # "i":I
    :cond_1
    if-lez v0, :cond_2

    .line 1317
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1318
    :cond_2
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1324
    :cond_3
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private createMessagesForUIDs([J)[Ljavax/mail/Message;
    .locals 8
    .param p1, "uids"    # [J

    .prologue
    .line 2637
    array-length v4, p1

    new-array v3, v4, [Lcom/sun/mail/imap/IMAPMessage;

    .line 2638
    .local v3, "msgs":[Lcom/sun/mail/imap/IMAPMessage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    .line 2650
    return-object v3

    .line 2639
    :cond_0
    const/4 v2, 0x0

    .line 2640
    .local v2, "m":Lcom/sun/mail/imap/IMAPMessage;
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v4, :cond_1

    .line 2641
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v6, p1, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "m":Lcom/sun/mail/imap/IMAPMessage;
    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    .line 2642
    .restart local v2    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_1
    if-nez v2, :cond_2

    .line 2644
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2645
    aget-wide v4, p1, v0

    invoke-virtual {v2, v4, v5}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 2646
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 2648
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v2, v3, v0

    .line 2638
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method private declared-synchronized doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "subscribed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 632
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 633
    const/4 v6, 0x0

    new-array v1, v6, [Ljavax/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 635
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 638
    .local v0, "c":C
    new-instance v6, Lcom/sun/mail/imap/IMAPFolder$2;

    invoke-direct {v6, p0, p2, v0, p1}, Lcom/sun/mail/imap/IMAPFolder$2;-><init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V

    .line 637
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 648
    .local v3, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-nez v3, :cond_2

    .line 649
    const/4 v6, 0x0

    new-array v1, v6, [Ljavax/mail/Folder;

    goto :goto_0

    .line 662
    :cond_2
    const/4 v5, 0x0

    .line 664
    .local v5, "start":I
    array-length v6, v3

    if-lez v6, :cond_3

    const/4 v6, 0x0

    aget-object v6, v3, v6

    iget-object v6, v6, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 665
    const/4 v5, 0x1

    .line 667
    :cond_3
    array-length v6, v3

    sub-int/2addr v6, v5

    new-array v1, v6, [Lcom/sun/mail/imap/IMAPFolder;

    .line 668
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v4, Lcom/sun/mail/imap/IMAPStore;

    .line 669
    .local v4, "st":Lcom/sun/mail/imap/IMAPStore;
    move v2, v5

    .local v2, "i":I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_0

    .line 670
    sub-int v6, v2, v5

    aget-object v7, v3, v2

    invoke-virtual {v4, v7}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v7

    aput-object v7, v1, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 629
    .end local v0    # "c":C
    .end local v1    # "folders":[Lcom/sun/mail/imap/IMAPFolder;
    .end local v2    # "i":I
    .end local v3    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v4    # "st":Lcom/sun/mail/imap/IMAPStore;
    .end local v5    # "start":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
    .locals 2
    .param p1, "li"    # [Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "lname"    # Ljava/lang/String;

    .prologue
    .line 600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    .line 604
    :cond_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 608
    const/4 v0, 0x0

    .line 610
    :cond_1
    return v0

    .line 601
    :cond_2
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getStatus()Lcom/sun/mail/imap/protocol/Status;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1708
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPStore;->getStatusCacheTimeout()I

    move-result v2

    .line 1711
    .local v2, "statusCacheTimeout":I
    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    if-eqz v3, :cond_0

    .line 1712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    sub-long/2addr v4, v6

    int-to-long v6, v2

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1713
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 1725
    :goto_0
    return-object v1

    .line 1715
    :cond_0
    const/4 v0, 0x0

    .line 1718
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1719
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v1

    .line 1721
    .local v1, "s":Lcom/sun/mail/imap/protocol/Status;
    if-lez v2, :cond_1

    .line 1722
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 1723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1727
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    .line 1726
    .end local v1    # "s":Lcom/sun/mail/imap/protocol/Status;
    :catchall_0
    move-exception v3

    .line 1727
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1728
    throw v3
.end method

.method private isDirectory()Z
    .locals 1

    .prologue
    .line 3868
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;
    .locals 10
    .param p1, "fr"    # Lcom/sun/mail/imap/protocol/FetchResponse;

    .prologue
    .line 3448
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 3449
    .local v2, "msg":Lcom/sun/mail/imap/IMAPMessage;
    if-eqz v2, :cond_4

    .line 3450
    const/4 v3, 0x0

    .line 3452
    .local v3, "notify":Z
    const-class v5, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {p1, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/UID;

    .line 3453
    .local v4, "uid":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v6

    iget-wide v8, v4, Lcom/sun/mail/imap/protocol/UID;->uid:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 3454
    iget-wide v6, v4, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v2, v6, v7}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 3455
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v5, :cond_0

    .line 3456
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 3457
    :cond_0
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    iget-wide v6, v4, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3458
    const/4 v3, 0x1

    .line 3461
    :cond_1
    const-class v5, Lcom/sun/mail/imap/protocol/MODSEQ;

    invoke-virtual {p1, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/MODSEQ;

    .line 3462
    .local v1, "modseq":Lcom/sun/mail/imap/protocol/MODSEQ;
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->_getModSeq()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 3463
    iget-wide v6, v1, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    invoke-virtual {v2, v6, v7}, Lcom/sun/mail/imap/IMAPMessage;->setModSeq(J)V

    .line 3470
    const/4 v3, 0x1

    .line 3474
    :cond_2
    const-class v5, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-virtual {p1, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/FLAGS;

    .line 3475
    .local v0, "flags":Lcom/sun/mail/imap/protocol/FLAGS;
    if-eqz v0, :cond_3

    .line 3476
    invoke-virtual {v2, v0}, Lcom/sun/mail/imap/IMAPMessage;->_setFlags(Ljavax/mail/Flags;)V

    .line 3477
    const/4 v3, 0x1

    .line 3480
    :cond_3
    if-nez v3, :cond_4

    .line 3481
    const/4 v2, 0x0

    .line 3483
    .end local v0    # "flags":Lcom/sun/mail/imap/protocol/FLAGS;
    .end local v1    # "modseq":Lcom/sun/mail/imap/protocol/MODSEQ;
    .end local v3    # "notify":Z
    .end local v4    # "uid":Lcom/sun/mail/imap/protocol/UID;
    :cond_4
    return-object v2
.end method

.method private setACL(Lcom/sun/mail/imap/ACL;C)V
    .locals 2
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .param p2, "mod"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2894
    const-string v0, "ACL not supported"

    .line 2895
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/sun/mail/imap/IMAPFolder$18;-><init>(Lcom/sun/mail/imap/IMAPFolder;CLcom/sun/mail/imap/ACL;)V

    .line 2894
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2902
    return-void
.end method


# virtual methods
.method public addACL(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2799
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2800
    return-void
.end method

.method public declared-synchronized addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/MessageCountListener;

    .prologue
    .line 2380
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljavax/mail/Folder;->addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V

    .line 2381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2382
    monitor-exit p0

    return-void

    .line 2380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMessages([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 8
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1868
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1869
    array-length v4, p1

    new-array v2, v4, [Ljavax/mail/internet/MimeMessage;

    .line 1870
    .local v2, "rmsgs":[Ljavax/mail/Message;
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;

    move-result-object v3

    .line 1871
    .local v3, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v4, :cond_0

    .line 1883
    monitor-exit p0

    return-object v2

    .line 1872
    :cond_0
    :try_start_1
    aget-object v0, v3, v1

    .line 1873
    .local v0, "auid":Lcom/sun/mail/imap/AppendUID;
    if-eqz v0, :cond_1

    .line 1874
    iget-wide v4, v0, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1876
    :try_start_2
    iget-wide v4, v0, Lcom/sun/mail/imap/AppendUID;->uid:J

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1871
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1868
    .end local v0    # "auid":Lcom/sun/mail/imap/AppendUID;
    .end local v1    # "i":I
    .end local v2    # "rmsgs":[Ljavax/mail/Message;
    .end local v3    # "uids":[Lcom/sun/mail/imap/AppendUID;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1877
    .restart local v0    # "auid":Lcom/sun/mail/imap/AppendUID;
    .restart local v1    # "i":I
    .restart local v2    # "rmsgs":[Ljavax/mail/Message;
    .restart local v3    # "uids":[Lcom/sun/mail/imap/AppendUID;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public addRights(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2831
    const/16 v0, 0x2b

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2832
    return-void
.end method

.method public declared-synchronized appendMessages([Ljavax/mail/Message;)V
    .locals 11
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1747
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1754
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v9, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v9}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v6

    .line 1756
    .local v6, "maxsize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, v9, :cond_0

    .line 1784
    monitor-exit p0

    return-void

    .line 1757
    :cond_0
    :try_start_1
    aget-object v5, p1, v4

    .line 1758
    .local v5, "m":Ljavax/mail/Message;
    invoke-virtual {v5}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v0

    .line 1759
    .local v0, "d":Ljava/util/Date;
    if-nez v0, :cond_1

    .line 1760
    invoke-virtual {v5}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    .line 1761
    :cond_1
    move-object v1, v0

    .line 1762
    .local v1, "dd":Ljava/util/Date;
    invoke-virtual {v5}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1767
    .local v3, "f":Ljavax/mail/Flags;
    :try_start_2
    new-instance v7, Lcom/sun/mail/imap/MessageLiteral;

    .line 1768
    invoke-virtual {v5}, Ljavax/mail/Message;->getSize()I

    move-result v9

    if-le v9, v6, :cond_2

    const/4 v9, 0x0

    .line 1767
    :goto_1
    invoke-direct {v7, v5, v9}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1776
    .local v7, "mos":Lcom/sun/mail/imap/MessageLiteral;
    :try_start_3
    new-instance v9, Lcom/sun/mail/imap/IMAPFolder$10;

    invoke-direct {v9, p0, v3, v1, v7}, Lcom/sun/mail/imap/IMAPFolder$10;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 1756
    .end local v7    # "mos":Lcom/sun/mail/imap/MessageLiteral;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v9, v6

    .line 1768
    goto :goto_1

    .line 1769
    :catch_0
    move-exception v2

    .line 1770
    .local v2, "ex":Ljava/io/IOException;
    new-instance v9, Ljavax/mail/MessagingException;

    .line 1771
    const-string v10, "IOException while appending messages"

    .line 1770
    invoke-direct {v9, v10, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1747
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "dd":Ljava/util/Date;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "f":Ljavax/mail/Flags;
    .end local v4    # "i":I
    .end local v5    # "m":Ljavax/mail/Message;
    .end local v6    # "maxsize":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1772
    .restart local v0    # "d":Ljava/util/Date;
    .restart local v1    # "dd":Ljava/util/Date;
    .restart local v3    # "f":Ljavax/mail/Flags;
    .restart local v4    # "i":I
    .restart local v5    # "m":Ljavax/mail/Message;
    .restart local v6    # "maxsize":I
    :catch_1
    move-exception v8

    .line 1773
    .local v8, "mrex":Ljavax/mail/MessageRemovedException;
    goto :goto_2
.end method

.method public declared-synchronized appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;
    .locals 13
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1806
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1813
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v11, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v11}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v7

    .line 1815
    .local v7, "maxsize":I
    array-length v11, p1

    new-array v10, v11, [Lcom/sun/mail/imap/AppendUID;

    .line 1816
    .local v10, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v5, v11, :cond_0

    .line 1844
    monitor-exit p0

    return-object v10

    .line 1817
    :cond_0
    :try_start_1
    aget-object v6, p1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1822
    .local v6, "m":Ljavax/mail/Message;
    :try_start_2
    new-instance v8, Lcom/sun/mail/imap/MessageLiteral;

    .line 1823
    invoke-virtual {v6}, Ljavax/mail/Message;->getSize()I

    move-result v11

    if-le v11, v7, :cond_2

    const/4 v11, 0x0

    .line 1822
    :goto_1
    invoke-direct {v8, v6, v11}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1831
    .local v8, "mos":Lcom/sun/mail/imap/MessageLiteral;
    :try_start_3
    invoke-virtual {v6}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v1

    .line 1832
    .local v1, "d":Ljava/util/Date;
    if-nez v1, :cond_1

    .line 1833
    invoke-virtual {v6}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v1

    .line 1834
    :cond_1
    move-object v2, v1

    .line 1835
    .local v2, "dd":Ljava/util/Date;
    invoke-virtual {v6}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v4

    .line 1836
    .local v4, "f":Ljavax/mail/Flags;
    new-instance v11, Lcom/sun/mail/imap/IMAPFolder$11;

    invoke-direct {v11, p0, v4, v2, v8}, Lcom/sun/mail/imap/IMAPFolder$11;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v11}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/AppendUID;

    .line 1842
    .local v0, "auid":Lcom/sun/mail/imap/AppendUID;
    aput-object v0, v10, v5

    .line 1816
    .end local v0    # "auid":Lcom/sun/mail/imap/AppendUID;
    .end local v1    # "d":Ljava/util/Date;
    .end local v2    # "dd":Ljava/util/Date;
    .end local v4    # "f":Ljavax/mail/Flags;
    .end local v8    # "mos":Lcom/sun/mail/imap/MessageLiteral;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v11, v7

    .line 1823
    goto :goto_1

    .line 1824
    :catch_0
    move-exception v3

    .line 1825
    .local v3, "ex":Ljava/io/IOException;
    new-instance v11, Ljavax/mail/MessagingException;

    .line 1826
    const-string v12, "IOException while appending messages"

    .line 1825
    invoke-direct {v11, v12, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1806
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v5    # "i":I
    .end local v6    # "m":Ljavax/mail/Message;
    .end local v7    # "maxsize":I
    .end local v10    # "uids":[Lcom/sun/mail/imap/AppendUID;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1827
    .restart local v5    # "i":I
    .restart local v6    # "m":Ljavax/mail/Message;
    .restart local v7    # "maxsize":I
    .restart local v10    # "uids":[Lcom/sun/mail/imap/AppendUID;
    :catch_1
    move-exception v9

    .line 1828
    .local v9, "mrex":Ljavax/mail/MessageRemovedException;
    goto :goto_2
.end method

.method protected checkClosed()V
    .locals 2

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 442
    const-string v1, "This operation is not allowed on an open folder"

    .line 441
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_0
    return-void
.end method

.method protected checkExists()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    return-void
.end method

.method protected checkOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .prologue
    .line 451
    sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 452
    :cond_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_2

    .line 453
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v0, :cond_1

    .line 454
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 455
    const-string v1, "This operation is not allowed on a closed folder"

    .line 454
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1
    new-instance v0, Ljavax/mail/FolderClosedException;

    .line 459
    const-string v1, "Lost folder connection to server"

    .line 458
    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_2
    return-void
.end method

.method protected checkRange(I)V
    .locals 5
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 471
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 472
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "message number < 1"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    :cond_0
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v2, :cond_2

    .line 493
    :cond_1
    return-void

    .line 480
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 482
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-le p1, v2, :cond_1

    .line 492
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :catch_0
    move-exception v0

    .line 485
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_2
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 480
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 486
    :catch_1
    move-exception v1

    .line 487
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized close(Z)V
    .locals 1
    .param p1, "expunge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1385
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    monitor-exit p0

    return-void

    .line 1385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .locals 1
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1892
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1893
    monitor-exit p0

    return-void

    .line 1892
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)[Lcom/sun/mail/imap/AppendUID;
    .locals 1
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1917
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized create(I)Z
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 766
    monitor-enter p0

    const/4 v0, 0x0

    .line 767
    .local v0, "c":C
    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_0

    .line 768
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 769
    :cond_0
    move v3, v0

    .line 770
    .local v3, "sep":C
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$6;

    invoke-direct {v4, p0, p1, v3}, Lcom/sun/mail/imap/IMAPFolder$6;-><init>(Lcom/sun/mail/imap/IMAPFolder;IC)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 798
    .local v1, "ret":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 799
    const/4 v2, 0x0

    .line 807
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 804
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v2

    .line 805
    .local v2, "retb":Z
    if-eqz v2, :cond_1

    .line 806
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 766
    .end local v1    # "ret":Ljava/lang/Object;
    .end local v2    # "retb":Z
    .end local v3    # "sep":C
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized delete(Z)Z
    .locals 5
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 890
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 892
    if-eqz p1, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->list()[Ljavax/mail/Folder;

    move-result-object v0

    .line 895
    .local v0, "f":[Ljavax/mail/Folder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_1

    .line 901
    .end local v0    # "f":[Ljavax/mail/Folder;
    .end local v1    # "i":I
    :cond_0
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$8;

    invoke-direct {v4, p0}, Lcom/sun/mail/imap/IMAPFolder$8;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 908
    .local v2, "ret":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 918
    :goto_1
    monitor-exit p0

    return v3

    .line 896
    .end local v2    # "ret":Ljava/lang/Object;
    .restart local v0    # "f":[Ljavax/mail/Folder;
    .restart local v1    # "i":I
    :cond_1
    :try_start_1
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Ljavax/mail/Folder;->delete(Z)Z

    .line 895
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 913
    .end local v0    # "f":[Ljavax/mail/Folder;
    .end local v1    # "i":I
    .restart local v2    # "ret":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 914
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 917
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    const/4 v3, 0x1

    goto :goto_1

    .line 890
    .end local v2    # "ret":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 4
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3677
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 3684
    :goto_0
    return-object v2

    .line 3678
    :catch_0
    move-exception v0

    .line 3680
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 3684
    const/4 v2, 0x0

    goto :goto_0

    .line 3681
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_1
    move-exception v1

    .line 3682
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 5
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3705
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 3714
    :goto_0
    return-object v3

    .line 3706
    :catch_0
    move-exception v1

    .line 3707
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    goto :goto_0

    .line 3708
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_1
    move-exception v0

    .line 3710
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    goto :goto_0

    .line 3711
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v2

    .line 3712
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 5
    .param p1, "err"    # Ljava/lang/String;
    .param p2, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3690
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 3699
    :goto_0
    return-object v3

    .line 3691
    :catch_0
    move-exception v0

    .line 3692
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-direct {v3, p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 3693
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catch_1
    move-exception v1

    .line 3695
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 3699
    const/4 v3, 0x0

    goto :goto_0

    .line 3696
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v2

    .line 3697
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method protected doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 3
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 3719
    monitor-enter p0

    .line 3725
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v1, :cond_0

    .line 3726
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3727
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3737
    :goto_0
    return-object v1

    .line 3726
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 3719
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3733
    const/4 v0, 0x0

    .line 3736
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 3737
    invoke-interface {p1, v0}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v1

    .line 3739
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    .line 3738
    :catchall_2
    move-exception v1

    .line 3739
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3740
    throw v1
.end method

.method public declared-synchronized exists()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 555
    monitor-enter p0

    const/4 v3, 0x0

    .line 557
    .local v3, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_0
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v5, :cond_3

    iget-char v5, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v5, :cond_3

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v6, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 562
    .local v4, "lname":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/sun/mail/imap/IMAPFolder$1;

    invoke-direct {v5, p0, v4}, Lcom/sun/mail/imap/IMAPFolder$1;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v3, v0

    .line 568
    if-eqz v3, :cond_4

    .line 569
    invoke-direct {p0, v3, v4}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v1

    .line 570
    .local v1, "i":I
    aget-object v5, v3, v1

    iget-object v5, v5, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 571
    aget-object v5, v3, v1

    iget-char v5, v5, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v5, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 572
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 573
    .local v2, "len":I
    iget-char v5, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v5, :cond_0

    if-lez v2, :cond_0

    .line 574
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-char v6, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-ne v5, v6, :cond_0

    .line 575
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 577
    :cond_0
    const/4 v5, 0x0

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 578
    aget-object v5, v3, v1

    iget-boolean v5, v5, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v5, :cond_1

    .line 579
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 580
    :cond_1
    aget-object v5, v3, v1

    iget-boolean v5, v5, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    if-eqz v5, :cond_2

    .line 581
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 582
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 583
    aget-object v5, v3, v1

    iget-object v5, v5, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 589
    .end local v1    # "i":I
    .end local v2    # "len":I
    :goto_1
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v5

    .line 560
    .end local v4    # "lname":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .restart local v4    # "lname":Ljava/lang/String;
    goto :goto_0

    .line 585
    :cond_4
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 586
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 555
    .end local v4    # "lname":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized expunge()[Ljavax/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2151
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 14
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2166
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2168
    if-eqz p1, :cond_0

    .line 2170
    new-instance v2, Ljavax/mail/FetchProfile;

    invoke-direct {v2}, Ljavax/mail/FetchProfile;-><init>()V

    .line 2171
    .local v2, "fp":Ljavax/mail/FetchProfile;
    sget-object v10, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v2, v10}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 2172
    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 2176
    .end local v2    # "fp":Ljavax/mail/FetchProfile;
    :cond_0
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2177
    const/4 v10, 0x0

    :try_start_1
    iput-boolean v10, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2179
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v5

    .line 2180
    .local v5, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz p1, :cond_3

    .line 2181
    invoke-static {p1}, Lcom/sun/mail/imap/Utility;->toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2197
    :goto_0
    const/4 v10, 0x1

    :try_start_3
    iput-boolean v10, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 2201
    if-eqz p1, :cond_5

    .line 2202
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v10, p1}, Lcom/sun/mail/imap/MessageCache;->removeExpungedMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v7

    .line 2205
    .local v7, "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :goto_1
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v10, :cond_1

    .line 2206
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v10, v7

    if-lt v3, v10, :cond_6

    .line 2216
    .end local v3    # "i":I
    :cond_1
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v10}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v10

    iput v10, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 2176
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2220
    :try_start_4
    array-length v10, v7

    if-lez v10, :cond_2

    .line 2221
    const/4 v10, 0x1

    invoke-virtual {p0, v10, v7}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2222
    :cond_2
    monitor-exit p0

    return-object v7

    .line 2183
    .end local v7    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :cond_3
    :try_start_5
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->expunge()V
    :try_end_5
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2184
    .end local v5    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v1

    .line 2186
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_6
    iget v10, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v12, 0x2

    if-eq v10, v12, :cond_4

    .line 2187
    new-instance v10, Ljava/lang/IllegalStateException;

    .line 2188
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Cannot expunge READ_ONLY folder: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2187
    invoke-direct {v10, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2196
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catchall_0
    move-exception v10

    .line 2197
    const/4 v12, 0x1

    :try_start_7
    iput-boolean v12, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 2198
    throw v10

    .line 2176
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2166
    :catchall_2
    move-exception v10

    monitor-exit p0

    throw v10

    .line 2190
    .restart local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :cond_4
    :try_start_9
    new-instance v10, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 2191
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_1
    move-exception v0

    .line 2192
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v10, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, p0, v12}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v10

    .line 2193
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v6

    .line 2195
    .local v6, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v10, Ljavax/mail/MessagingException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2204
    .end local v6    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v5    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_5
    :try_start_a
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v10}, Lcom/sun/mail/imap/MessageCache;->removeExpungedMessages()[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v7

    .restart local v7    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    goto :goto_1

    .line 2207
    .restart local v3    # "i":I
    :cond_6
    aget-object v4, v7, v3

    .line 2209
    .local v4, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v8

    .line 2210
    .local v8, "uid":J
    const-wide/16 v12, -0x1

    cmp-long v10, v8, v12

    if-eqz v10, :cond_7

    .line 2211
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2206
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 26
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1132
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1134
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1135
    .local v5, "command":Ljava/lang/StringBuffer;
    const/4 v9, 0x1

    .line 1136
    .local v9, "first":Z
    const/4 v3, 0x0

    .line 1138
    .local v3, "allHeaders":Z
    sget-object v23, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getEnvelopeCommand()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1140
    const/4 v9, 0x0

    .line 1142
    :cond_0
    sget-object v23, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1143
    if-eqz v9, :cond_a

    const-string v23, "FLAGS"

    :goto_0
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1144
    const/4 v9, 0x0

    .line 1146
    :cond_1
    sget-object v23, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1147
    if-eqz v9, :cond_b

    const-string v23, "BODYSTRUCTURE"

    :goto_1
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1148
    const/4 v9, 0x0

    .line 1150
    :cond_2
    sget-object v23, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1151
    if-eqz v9, :cond_c

    const-string v23, "UID"

    :goto_2
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1152
    const/4 v9, 0x0

    .line 1154
    :cond_3
    sget-object v23, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1155
    const/4 v3, 0x1

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1157
    if-eqz v9, :cond_d

    .line 1158
    const-string v23, "BODY.PEEK[HEADER]"

    .line 1157
    :goto_3
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1161
    :goto_4
    const/4 v9, 0x0

    .line 1163
    :cond_4
    sget-object v23, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->MESSAGE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1164
    const/4 v3, 0x1

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 1166
    if-eqz v9, :cond_10

    const-string v23, "BODY.PEEK[]"

    :goto_5
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1169
    :goto_6
    const/4 v9, 0x0

    .line 1171
    :cond_5
    sget-object v23, Ljavax/mail/FetchProfile$Item;->SIZE:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 1172
    sget-object v23, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1173
    :cond_6
    if-eqz v9, :cond_13

    const-string v23, "RFC822.SIZE"

    :goto_7
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1174
    const/4 v9, 0x0

    .line 1178
    :cond_7
    const/4 v11, 0x0

    .line 1179
    .local v11, "hdrs":[Ljava/lang/String;
    if-nez v3, :cond_9

    .line 1180
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v11

    .line 1181
    array-length v0, v11

    move/from16 v23, v0

    if-lez v23, :cond_9

    .line 1182
    if-nez v9, :cond_8

    .line 1183
    const-string v23, " "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1184
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sun/mail/imap/IMAPFolder;->createHeaderCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getFetchItems()[Lcom/sun/mail/imap/protocol/FetchItem;

    move-result-object v10

    .line 1192
    .local v10, "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v12, v0, :cond_14

    .line 1201
    new-instance v6, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;

    move-object/from16 v0, p2

    invoke-direct {v6, v0, v10}, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;-><init>(Ljavax/mail/FetchProfile;[Lcom/sun/mail/imap/protocol/FetchItem;)V

    .line 1204
    .local v6, "condition":Lcom/sun/mail/imap/Utility$Condition;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v16

    .line 1210
    .local v16, "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v16, :cond_17

    .line 1212
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1275
    :goto_9
    monitor-exit p0

    return-void

    .line 1143
    .end local v6    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .end local v10    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v11    # "hdrs":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v16    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_a
    :try_start_2
    const-string v23, " FLAGS"

    goto/16 :goto_0

    .line 1147
    :cond_b
    const-string v23, " BODYSTRUCTURE"

    goto/16 :goto_1

    .line 1151
    :cond_c
    const-string v23, " UID"

    goto/16 :goto_2

    .line 1158
    :cond_d
    const-string v23, " BODY.PEEK[HEADER]"

    goto/16 :goto_3

    .line 1160
    :cond_e
    if-eqz v9, :cond_f

    const-string v23, "RFC822.HEADER"

    :goto_a
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 1132
    .end local v3    # "allHeaders":Z
    .end local v5    # "command":Ljava/lang/StringBuffer;
    .end local v9    # "first":Z
    :catchall_0
    move-exception v23

    monitor-exit p0

    throw v23

    .line 1160
    .restart local v3    # "allHeaders":Z
    .restart local v5    # "command":Ljava/lang/StringBuffer;
    .restart local v9    # "first":Z
    :cond_f
    :try_start_3
    const-string v23, " RFC822.HEADER"

    goto :goto_a

    .line 1166
    :cond_10
    const-string v23, " BODY.PEEK[]"

    goto/16 :goto_5

    .line 1168
    :cond_11
    if-eqz v9, :cond_12

    const-string v23, "RFC822"

    :goto_b
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    :cond_12
    const-string v23, " RFC822"

    goto :goto_b

    .line 1173
    :cond_13
    const-string v23, " RFC822.SIZE"

    goto/16 :goto_7

    .line 1193
    .restart local v10    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v11    # "hdrs":[Ljava/lang/String;
    .restart local v12    # "i":I
    :cond_14
    aget-object v23, v10, v12

    invoke-virtual/range {v23 .. v23}, Lcom/sun/mail/imap/protocol/FetchItem;->getFetchProfileItem()Ljavax/mail/FetchProfile$Item;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 1194
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v23

    if-eqz v23, :cond_15

    .line 1195
    const-string v23, " "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1196
    :cond_15
    aget-object v23, v10, v12

    invoke-virtual/range {v23 .. v23}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1192
    :cond_16
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8

    .line 1214
    .restart local v6    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .restart local v16    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_17
    const/16 v18, 0x0

    .line 1215
    .local v18, "r":[Lcom/sun/mail/iap/Response;
    :try_start_4
    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1218
    .local v22, "v":Ljava/util/Vector;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v23

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v18

    .line 1227
    :goto_c
    if-nez v18, :cond_18

    .line 1228
    :try_start_6
    monitor-exit v24

    goto/16 :goto_9

    .line 1204
    .end local v16    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v18    # "r":[Lcom/sun/mail/iap/Response;
    .end local v22    # "v":Ljava/util/Vector;
    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1219
    .restart local v16    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v18    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v22    # "v":Ljava/util/Vector;
    :catch_0
    move-exception v4

    .line 1220
    .local v4, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_8
    new-instance v23, Ljavax/mail/FolderClosedException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v23

    .line 1223
    .end local v4    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_1
    move-exception v17

    .line 1224
    .local v17, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v23, Ljavax/mail/MessagingException;

    invoke-virtual/range {v17 .. v17}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v23

    .line 1230
    .end local v17    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_18
    const/4 v12, 0x0

    :goto_d
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v12, v0, :cond_1a

    .line 1267
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v20

    .line 1268
    .local v20, "size":I
    if-eqz v20, :cond_19

    .line 1269
    move/from16 v0, v20

    new-array v0, v0, [Lcom/sun/mail/iap/Response;

    move-object/from16 v19, v0

    .line 1270
    .local v19, "responses":[Lcom/sun/mail/iap/Response;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1271
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponses([Lcom/sun/mail/iap/Response;)V

    .line 1204
    .end local v19    # "responses":[Lcom/sun/mail/iap/Response;
    :cond_19
    monitor-exit v24

    goto/16 :goto_9

    .line 1231
    .end local v20    # "size":I
    :cond_1a
    aget-object v23, v18, v12

    if-nez v23, :cond_1c

    .line 1230
    :cond_1b
    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 1233
    :cond_1c
    aget-object v23, v18, v12

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    move/from16 v23, v0

    if-nez v23, :cond_1d

    .line 1234
    aget-object v23, v18, v12

    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_e

    .line 1239
    :cond_1d
    aget-object v8, v18, v12

    check-cast v8, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1241
    .local v8, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v8}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v15

    .line 1243
    .local v15, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v8}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v7

    .line 1244
    .local v7, "count":I
    const/16 v21, 0x0

    .line 1246
    .local v21, "unsolicitedFlags":Z
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_f
    if-lt v14, v7, :cond_1f

    .line 1257
    if-eqz v15, :cond_1e

    .line 1258
    invoke-virtual {v8}, Lcom/sun/mail/imap/protocol/FetchResponse;->getExtensionItems()Ljava/util/Map;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/sun/mail/imap/IMAPMessage;->handleExtensionFetchItems(Ljava/util/Map;)V

    .line 1262
    :cond_1e
    if-eqz v21, :cond_1b

    .line 1263
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_e

    .line 1247
    :cond_1f
    invoke-virtual {v8, v14}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v13

    .line 1249
    .local v13, "item":Lcom/sun/mail/imap/protocol/Item;
    instance-of v0, v13, Ljavax/mail/Flags;

    move/from16 v23, v0

    if-eqz v23, :cond_22

    .line 1250
    sget-object v23, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 1251
    if-nez v15, :cond_22

    .line 1253
    :cond_20
    const/16 v21, 0x1

    .line 1246
    :cond_21
    :goto_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 1254
    :cond_22
    if-eqz v15, :cond_21

    .line 1255
    invoke-virtual {v15, v13, v11, v3}, Lcom/sun/mail/imap/IMAPMessage;->handleFetchItem(Lcom/sun/mail/imap/protocol/Item;[Ljava/lang/String;Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_10

    .line 1221
    .end local v7    # "count":I
    .end local v8    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v13    # "item":Lcom/sun/mail/imap/protocol/Item;
    .end local v14    # "j":I
    .end local v15    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v21    # "unsolicitedFlags":Z
    :catch_2
    move-exception v23

    goto/16 :goto_c
.end method

.method public declared-synchronized forceClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1394
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    monitor-exit p0

    return-void

    .line 1394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getACL()[Lcom/sun/mail/imap/ACL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2781
    const-string v0, "ACL not supported"

    .line 2782
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$14;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$14;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2781
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/ACL;

    return-object v0
.end method

.method public declared-synchronized getAttributes()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2913
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 2914
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2915
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    .line 2916
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2913
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1679
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v4, :cond_0

    .line 1680
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1682
    const/4 v4, -0x1

    .line 1692
    :goto_0
    monitor-exit p0

    return v4

    .line 1687
    :cond_0
    :try_start_1
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1}, Ljavax/mail/Flags;-><init>()V

    .line 1688
    .local v1, "f":Ljavax/mail/Flags;
    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v4}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1690
    :try_start_2
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1691
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    new-instance v6, Ljavax/mail/search/FlagTerm;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v4, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 1692
    .local v2, "matches":[I
    array-length v4, v2

    monitor-exit v5

    goto :goto_0

    .line 1690
    .end local v2    # "matches":[I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1694
    :catch_0
    move-exception v0

    .line 1695
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    new-instance v4, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1679
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v1    # "f":Ljavax/mail/Flags;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1696
    .restart local v1    # "f":Ljavax/mail/Flags;
    :catch_1
    move-exception v3

    .line 1698
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method protected getEnvelopeCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1287
    const-string v0, "ENVELOPE INTERNALDATE RFC822.SIZE"

    return-object v0
.end method

.method public declared-synchronized getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 878
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Cannot contain subfolders"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 881
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 882
    .local v0, "c":C
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHighestModSeq()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2662
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v6, :cond_0

    .line 2663
    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2686
    :goto_0
    monitor-exit p0

    return-wide v6

    .line 2665
    :cond_0
    const/4 v3, 0x0

    .line 2666
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v5, 0x0

    .line 2669
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 2670
    const-string v6, "CONDSTORE"

    invoke-virtual {v3, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2671
    new-instance v6, Lcom/sun/mail/iap/BadCommandException;

    const-string v7, "CONDSTORE not supported"

    invoke-direct {v6, v7}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2674
    :catch_0
    move-exception v0

    .line 2676
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_2
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "Cannot obtain HIGHESTMODSEQ"

    invoke-direct {v6, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2682
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_0
    move-exception v6

    .line 2683
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2684
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2662
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2672
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :cond_1
    const/4 v6, 0x1

    :try_start_4
    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "HIGHESTMODSEQ"

    aput-object v7, v2, v6

    .line 2673
    .local v2, "item":[Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    :try_end_4
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 2683
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2686
    .end local v2    # "item":[Ljava/lang/String;
    :goto_1
    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 2677
    :catch_1
    move-exception v1

    .line 2679
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2683
    :try_start_7
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 2680
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v4

    .line 2681
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_8
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .locals 1
    .param p1, "msgnum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1736
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1737
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->checkRange(I)V

    .line 1739
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1736
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 3
    .param p1, "seqnum"    # I

    .prologue
    .line 3824
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 3829
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3830
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ignoring message number "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3831
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " outside range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v2}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3830
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 3832
    :cond_0
    const/4 v0, 0x0

    .line 3834
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->getMessageBySeqnum(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getMessageByUID(J)Ljavax/mail/Message;
    .locals 9
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2468
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2470
    const/4 v3, 0x0

    .line 2473
    .local v3, "m":Lcom/sun/mail/imap/IMAPMessage;
    :try_start_1
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2474
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2476
    .local v2, "l":Ljava/lang/Long;
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v7, :cond_0

    .line 2478
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sun/mail/imap/IMAPMessage;

    move-object v3, v0

    .line 2479
    if-eqz v3, :cond_1

    .line 2480
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    .end local v3    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .local v4, "m":Lcom/sun/mail/imap/IMAPMessage;
    move-object v5, v3

    .line 2501
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .local v5, "m":Lcom/sun/mail/imap/IMAPMessage;
    :goto_0
    monitor-exit p0

    return-object v5

    .line 2482
    .end local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v3    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_0
    :try_start_3
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2486
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumber(J)V

    .line 2488
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v7, :cond_2

    .line 2490
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sun/mail/imap/IMAPMessage;

    move-object v3, v0

    .line 2491
    if-eqz v3, :cond_2

    .line 2492
    monitor-exit v8

    move-object v4, v3

    .end local v3    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    move-object v5, v3

    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    goto :goto_0

    .line 2473
    .end local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v3    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_2
    monitor-exit v8

    move-object v4, v3

    .end local v3    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    move-object v5, v3

    .line 2501
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    goto :goto_0

    .line 2473
    .end local v2    # "l":Ljava/lang/Long;
    .end local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v3    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2495
    :catch_0
    move-exception v1

    .line 2496
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    new-instance v7, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2468
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v3    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2497
    .restart local v3    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :catch_1
    move-exception v6

    .line 2498
    .local v6, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public declared-synchronized getMessageCount()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1540
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v6, :cond_0

    .line 1541
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1545
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 1546
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v6, v5, Lcom/sun/mail/imap/protocol/Status;->total:I
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1575
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_0
    monitor-exit p0

    return v6

    .line 1547
    :catch_0
    move-exception v0

    .line 1550
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v3, 0x0

    .line 1553
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1554
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1555
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1556
    iget v6, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1561
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1540
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v2    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1557
    .restart local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_1
    move-exception v4

    .line 1559
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1560
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_1
    move-exception v6

    .line 1561
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1562
    throw v6

    .line 1563
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_2
    move-exception v1

    .line 1564
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v6, Ljavax/mail/StoreClosedException;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v6

    .line 1565
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_3
    move-exception v4

    .line 1566
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 1571
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_0
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1574
    const/4 v6, 0x1

    :try_start_6
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1575
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v7

    goto :goto_0

    .line 1571
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1576
    :catch_4
    move-exception v1

    .line 1577
    .restart local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_9
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 1578
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_5
    move-exception v4

    .line 1579
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
.end method

.method protected getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;
    .locals 7
    .param p1, "seqnums"    # [I

    .prologue
    .line 3848
    array-length v6, p1

    new-array v3, v6, [Lcom/sun/mail/imap/IMAPMessage;

    .line 3849
    .local v3, "msgs":[Lcom/sun/mail/imap/IMAPMessage;
    const/4 v5, 0x0

    .line 3851
    .local v5, "nulls":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p1

    if-lt v0, v6, :cond_1

    .line 3856
    if-lez v5, :cond_0

    .line 3857
    array-length v6, p1

    sub-int/2addr v6, v5

    new-array v4, v6, [Lcom/sun/mail/imap/IMAPMessage;

    .line 3858
    .local v4, "nmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v6, v3

    if-lt v0, v6, :cond_3

    .line 3862
    move-object v3, v4

    .line 3864
    .end local v1    # "j":I
    .end local v4    # "nmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :cond_0
    return-object v3

    .line 3852
    :cond_1
    aget v6, p1, v0

    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v6

    aput-object v6, v3, v0

    .line 3853
    aget-object v6, v3, v0

    if-nez v6, :cond_2

    .line 3854
    add-int/lit8 v5, v5, 0x1

    .line 3851
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3859
    .restart local v1    # "j":I
    .restart local v4    # "nmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :cond_3
    aget-object v6, v3, v0

    if-eqz v6, :cond_4

    .line 3860
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget-object v6, v3, v0

    aput-object v6, v4, v1

    move v1, v2

    .line 3858
    .end local v2    # "j":I
    .restart local v1    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized getMessagesByUID(JJ)[Ljavax/mail/Message;
    .locals 17
    .param p1, "start"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2511
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2516
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2517
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v11, :cond_0

    .line 2518
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2521
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v11

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers(JJ)[J

    move-result-object v10

    .line 2523
    .local v10, "ua":[J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2525
    .local v7, "ma":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Message;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, v10

    if-lt v5, v11, :cond_1

    .line 2530
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljavax/mail/Message;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljavax/mail/Message;

    .line 2516
    .local v8, "msgs":[Ljavax/mail/Message;
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2538
    monitor-exit p0

    return-object v8

    .line 2526
    .end local v8    # "msgs":[Ljavax/mail/Message;
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v14, v10, v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/mail/Message;

    .line 2527
    .local v6, "m":Ljavax/mail/Message;
    if-eqz v6, :cond_2

    .line 2528
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2525
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2516
    .end local v5    # "i":I
    .end local v6    # "m":Ljavax/mail/Message;
    .end local v7    # "ma":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Message;>;"
    .end local v10    # "ua":[J
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2532
    :catch_0
    move-exception v4

    .line 2533
    .local v4, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    new-instance v11, Ljavax/mail/FolderClosedException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2511
    .end local v4    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    .line 2534
    :catch_1
    move-exception v9

    .line 2535
    .local v9, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v11, Ljavax/mail/MessagingException;

    invoke-virtual {v9}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v9}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public declared-synchronized getMessagesByUID([J)[Ljavax/mail/Message;
    .locals 12
    .param p1, "uids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2550
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2553
    :try_start_1
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2554
    move-object v5, p1

    .line 2555
    .local v5, "unavailUids":[J
    :try_start_2
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v8, :cond_4

    .line 2556
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 2558
    .local v6, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p1

    if-lt v1, v8, :cond_1

    .line 2564
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    .line 2565
    .local v7, "vsize":I
    new-array v5, v7, [J

    .line 2566
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v7, :cond_3

    .line 2571
    .end local v1    # "i":I
    .end local v6    # "v":Ljava/util/Vector;
    .end local v7    # "vsize":I
    :goto_2
    array-length v8, v5

    if-lez v8, :cond_0

    .line 2573
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers([J)V

    .line 2577
    :cond_0
    array-length v8, p1

    new-array v3, v8, [Ljavax/mail/Message;

    .line 2578
    .local v3, "msgs":[Ljavax/mail/Message;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v8, p1

    if-lt v1, v8, :cond_5

    .line 2580
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 2559
    .end local v3    # "msgs":[Ljavax/mail/Message;
    .restart local v6    # "v":Ljava/util/Vector;
    :cond_1
    :try_start_3
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v10, p1, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, "l":Ljava/lang/Long;
    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2561
    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2558
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2567
    .end local v2    # "l":Ljava/lang/Long;
    .restart local v7    # "vsize":I
    :cond_3
    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v5, v1

    .line 2566
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2569
    .end local v1    # "i":I
    .end local v6    # "v":Ljava/util/Vector;
    .end local v7    # "vsize":I
    :cond_4
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    iput-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    goto :goto_2

    .line 2553
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2582
    .end local v5    # "unavailUids":[J
    :catch_0
    move-exception v0

    .line 2583
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    new-instance v8, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2550
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2579
    .restart local v1    # "i":I
    .restart local v3    # "msgs":[Ljavax/mail/Message;
    .restart local v5    # "unavailUids":[J
    :cond_5
    :try_start_6
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v10, p1, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/mail/Message;

    aput-object v8, v3, v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2578
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2584
    .end local v1    # "i":I
    .end local v3    # "msgs":[Ljavax/mail/Message;
    .end local v5    # "unavailUids":[J
    :catch_1
    move-exception v4

    .line 2585
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v8, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public declared-synchronized getMessagesByUIDChangedSince(JJJ)[Ljavax/mail/Message;
    .locals 11
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "modseq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2706
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2709
    :try_start_1
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2710
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 2711
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const-string v2, "CONDSTORE"

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2712
    new-instance v2, Lcom/sun/mail/iap/BadCommandException;

    const-string v3, "CONDSTORE not supported"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2709
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2718
    :catch_0
    move-exception v0

    .line 2719
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_4
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2706
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    .line 2715
    :try_start_5
    invoke-virtual/range {v1 .. v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidfetchChangedSince(JJJ)[I

    move-result-object v8

    .line 2716
    .local v8, "nums":[I
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2

    .line 2720
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v8    # "nums":[I
    :catch_1
    move-exception v9

    .line 2721
    .local v9, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v9}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 522
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 523
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 525
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized getNewMessageCount()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1589
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v6, :cond_0

    .line 1590
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 1595
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v6, v5, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1624
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_0
    monitor-exit p0

    return v6

    .line 1596
    :catch_0
    move-exception v0

    .line 1599
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v3, 0x0

    .line 1602
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1603
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1604
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1605
    iget v6, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1610
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1589
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v2    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1606
    .restart local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_1
    move-exception v4

    .line 1608
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1609
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_1
    move-exception v6

    .line 1610
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1611
    throw v6

    .line 1612
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_2
    move-exception v1

    .line 1613
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v6, Ljavax/mail/StoreClosedException;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v6

    .line 1614
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_3
    move-exception v4

    .line 1615
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 1620
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_0
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1623
    const/4 v6, 0x1

    :try_start_6
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1624
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v7

    goto :goto_0

    .line 1620
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1625
    :catch_4
    move-exception v1

    .line 1626
    .restart local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_9
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 1627
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_5
    move-exception v4

    .line 1628
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
.end method

.method public declared-synchronized getParent()Ljavax/mail/Folder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 543
    .local v0, "c":C
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    .line 545
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 544
    invoke-virtual {v2, v3, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 547
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v3, Lcom/sun/mail/imap/DefaultFolder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v3, v2}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    .line 541
    .end local v0    # "c":C
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getPermanentFlags()Ljavax/mail/Flags;
    .locals 1

    .prologue
    .line 1531
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1532
    const/4 v0, 0x0

    .line 1533
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1531
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 3559
    sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3560
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 3564
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_1

    .line 3565
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3566
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object v0
.end method

.method public getQuota()[Ljavax/mail/Quota;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2743
    const-string v0, "QUOTA not supported"

    .line 2744
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$12;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$12;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2743
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/Quota;

    return-object v0
.end method

.method public declared-synchronized getSeparator()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 678
    monitor-enter p0

    :try_start_0
    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const v2, 0xffff

    if-ne v1, v2, :cond_0

    .line 679
    const/4 v0, 0x0

    .line 681
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$3;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$3;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 694
    .restart local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-eqz v0, :cond_1

    .line 695
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-char v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 699
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :cond_0
    :goto_0
    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 697
    .restart local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :cond_1
    const/16 v1, 0x2f

    :try_start_1
    iput-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 678
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSortedMessages([Lcom/sun/mail/imap/SortTerm;)[Ljavax/mail/Message;
    .locals 1
    .param p1, "term"    # [Lcom/sun/mail/imap/SortTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2326
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->getSortedMessages([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSortedMessages([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 8
    .param p1, "term"    # [Lcom/sun/mail/imap/SortTerm;
    .param p2, "sterm"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2346
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2349
    const/4 v2, 0x0

    .line 2351
    .local v2, "matchMsgs":[Ljavax/mail/Message;
    :try_start_1
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2352
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->sort([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v3

    .line 2353
    .local v3, "matches":[I
    if-eqz v3, :cond_0

    .line 2354
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2351
    :cond_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2356
    monitor-exit p0

    return-object v2

    .line 2351
    .end local v3    # "matches":[I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2358
    :catch_0
    move-exception v1

    .line 2360
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_5
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2346
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .end local v2    # "matchMsgs":[Ljavax/mail/Message;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2361
    .restart local v2    # "matchMsgs":[Ljavax/mail/Message;
    :catch_1
    move-exception v5

    .line 2363
    .local v5, "sex":Ljavax/mail/search/SearchException;
    :try_start_6
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Ljavax/mail/search/SearchException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 2364
    .end local v5    # "sex":Ljavax/mail/search/SearchException;
    :catch_2
    move-exception v0

    .line 2365
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 2366
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_3
    move-exception v4

    .line 2368
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public getStatusItem(Ljava/lang/String;)J
    .locals 9
    .param p1, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 3281
    iget-boolean v8, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v8, :cond_0

    .line 3282
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 3284
    const/4 v3, 0x0

    .line 3285
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v5, 0x0

    .line 3287
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 3288
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v2, v8

    .line 3289
    .local v2, "items":[Ljava/lang/String;
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v8, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 3290
    invoke-virtual {v5, p1}, Lcom/sun/mail/imap/protocol/Status;->getItem(Ljava/lang/String;)J
    :try_end_0
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 3301
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3304
    .end local v2    # "items":[Ljava/lang/String;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :cond_0
    :goto_0
    return-wide v6

    .line 3291
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_0
    move-exception v0

    .line 3301
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    .line 3296
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catch_1
    move-exception v1

    .line 3297
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_1
    new-instance v6, Ljavax/mail/StoreClosedException;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3300
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v6

    .line 3301
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3302
    throw v6

    .line 3298
    :catch_2
    move-exception v4

    .line 3299
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected declared-synchronized getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 3522
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "getStoreProtocol() borrowing a connection"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 3523
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 706
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    .line 713
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 711
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)J
    .locals 16
    .param p1, "message"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2594
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Message;->getFolder()Ljavax/mail/Folder;

    move-result-object v7

    move-object/from16 v0, p0

    if-eq v7, v0, :cond_0

    .line 2595
    new-instance v7, Ljava/util/NoSuchElementException;

    .line 2596
    const-string v14, "Message does not belong to this folder"

    .line 2595
    invoke-direct {v7, v14}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2594
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2598
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2600
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/sun/mail/imap/IMAPMessage;

    if-nez v7, :cond_1

    .line 2601
    new-instance v7, Ljavax/mail/MessagingException;

    const-string v14, "message is not an IMAPMessage"

    invoke-direct {v7, v14}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2602
    :cond_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/sun/mail/imap/IMAPMessage;

    move-object v3, v0

    .line 2605
    .local v3, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .local v8, "uid":J
    const-wide/16 v14, -0x1

    cmp-long v7, v8, v14

    if-eqz v7, :cond_2

    move-wide v10, v8

    .end local v8    # "uid":J
    .local v10, "uid":J
    move-wide v12, v8

    .line 2630
    .end local v10    # "uid":J
    .local v12, "uid":J
    :goto_0
    monitor-exit p0

    return-wide v12

    .line 2608
    .end local v12    # "uid":J
    .restart local v8    # "uid":J
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2610
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    .line 2611
    .local v4, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 2612
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchUID(I)Lcom/sun/mail/imap/protocol/UID;

    move-result-object v6

    .line 2614
    .local v6, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v6, :cond_4

    .line 2615
    iget-wide v8, v6, Lcom/sun/mail/imap/protocol/UID;->uid:J

    .line 2616
    invoke-virtual {v3, v8, v9}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 2619
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v7, :cond_3

    .line 2620
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2621
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2608
    :cond_4
    :try_start_4
    monitor-exit v14

    move-wide v10, v8

    .end local v8    # "uid":J
    .restart local v10    # "uid":J
    move-wide v12, v8

    .line 2630
    .end local v10    # "uid":J
    .restart local v12    # "uid":J
    goto :goto_0

    .line 2623
    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v6    # "u":Lcom/sun/mail/imap/protocol/UID;
    .end local v12    # "uid":J
    .restart local v8    # "uid":J
    :catch_0
    move-exception v2

    .line 2624
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v7, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v15}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v7

    .line 2608
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_1
    move-exception v7

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2625
    :catch_1
    move-exception v5

    .line 2626
    .local v5, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public declared-synchronized getUIDNext()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2437
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v6, :cond_0

    .line 2438
    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2459
    :goto_0
    monitor-exit p0

    return-wide v6

    .line 2440
    :cond_0
    const/4 v3, 0x0

    .line 2441
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v5, 0x0

    .line 2444
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 2445
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UIDNEXT"

    aput-object v7, v2, v6

    .line 2446
    .local v2, "item":[Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 2456
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2459
    .end local v2    # "item":[Ljava/lang/String;
    :goto_1
    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/Status;->uidnext:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 2447
    :catch_0
    move-exception v0

    .line 2449
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_3
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "Cannot obtain UIDNext"

    invoke-direct {v6, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2455
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_0
    move-exception v6

    .line 2456
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2457
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2437
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2450
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_1
    move-exception v1

    .line 2452
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2456
    :try_start_6
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 2453
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v4

    .line 2454
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized getUIDValidity()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2392
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v6, :cond_0

    .line 2393
    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2414
    :goto_0
    monitor-exit p0

    return-wide v6

    .line 2395
    :cond_0
    const/4 v3, 0x0

    .line 2396
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v5, 0x0

    .line 2399
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 2400
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UIDVALIDITY"

    aput-object v7, v2, v6

    .line 2401
    .local v2, "item":[Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 2411
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2414
    .end local v2    # "item":[Ljava/lang/String;
    :goto_1
    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 2402
    :catch_0
    move-exception v0

    .line 2404
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_3
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "Cannot obtain UIDValidity"

    invoke-direct {v6, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2410
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_0
    move-exception v6

    .line 2411
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2412
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2392
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2405
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_1
    move-exception v1

    .line 2407
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2411
    :try_start_6
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 2408
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v4

    .line 2409
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1638
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v6, :cond_0

    .line 1639
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1643
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 1644
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v6, v5, Lcom/sun/mail/imap/protocol/Status;->unseen:I
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1664
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_0
    monitor-exit p0

    return v6

    .line 1645
    :catch_0
    move-exception v0

    .line 1649
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v6, -0x1

    goto :goto_0

    .line 1650
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catch_1
    move-exception v1

    .line 1651
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_2
    new-instance v6, Ljavax/mail/StoreClosedException;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1638
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1652
    :catch_2
    move-exception v4

    .line 1653
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 1659
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_0
    new-instance v2, Ljavax/mail/Flags;

    invoke-direct {v2}, Ljavax/mail/Flags;-><init>()V

    .line 1660
    .local v2, "f":Ljavax/mail/Flags;
    sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v6}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1662
    :try_start_4
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1663
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v6

    new-instance v8, Ljavax/mail/search/FlagTerm;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v6, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v3

    .line 1664
    .local v3, "matches":[I
    array-length v6, v3

    monitor-exit v7

    goto :goto_0

    .line 1662
    .end local v3    # "matches":[I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1666
    :catch_3
    move-exception v1

    .line 1667
    .restart local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_7
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 1668
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_4
    move-exception v4

    .line 1670
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method handleIdle(Z)Z
    .locals 12
    .param p1, "once"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3080
    const/4 v6, 0x0

    .line 3082
    .local v6, "r":Lcom/sun/mail/iap/Response;
    :cond_0
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v6

    .line 3084
    :try_start_0
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3085
    :try_start_1
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isSynthetic()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-ne v7, v9, :cond_3

    .line 3093
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 3094
    .local v3, "ex":Ljava/lang/Exception;
    instance-of v7, v3, Ljava/io/InterruptedIOException;

    if-eqz v7, :cond_3

    .line 3095
    move-object v0, v3

    check-cast v0, Ljava/io/InterruptedIOException;

    move-object v7, v0

    .line 3096
    iget v7, v7, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 3095
    if-nez v7, :cond_3

    .line 3097
    instance-of v7, v3, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_1

    .line 3098
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 3099
    const-string v11, "handleIdle: ignoring socket timeout"

    .line 3098
    invoke-virtual {v7, v11}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3100
    const/4 v6, 0x0

    .line 3115
    :goto_0
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3152
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasResponse()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 3153
    :goto_2
    return v7

    .line 3102
    .restart local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v11, "handleIdle: interrupting IDLE"

    invoke-virtual {v7, v11}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3103
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3104
    .local v4, "im":Lcom/sun/mail/imap/IdleManager;
    if-eqz v4, :cond_2

    .line 3105
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 3106
    const-string v11, "handleIdle: request IdleManager to abort"

    .line 3105
    invoke-virtual {v7, v11}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {v4, p0}, Lcom/sun/mail/imap/IdleManager;->requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V

    goto :goto_0

    .line 3084
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "im":Lcom/sun/mail/imap/IdleManager;
    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3145
    :catch_0
    move-exception v1

    .line 3147
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v7, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v7

    .line 3109
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v3    # "ex":Ljava/lang/Exception;
    .restart local v4    # "im":Lcom/sun/mail/imap/IdleManager;
    :cond_2
    :try_start_4
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v11, "handleIdle: abort IDLE"

    invoke-virtual {v7, v11}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3110
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3111
    const/4 v7, 0x2

    iput v7, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 3118
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "im":Lcom/sun/mail/imap/IdleManager;
    :cond_3
    const/4 v2, 0x1

    .line 3120
    .local v2, "done":Z
    :try_start_5
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v7, :cond_4

    .line 3121
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v7, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v7

    if-nez v7, :cond_6

    .line 3125
    :cond_4
    if-eqz v2, :cond_5

    .line 3126
    :try_start_6
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v9, "handleIdle: set to RUNNING"

    invoke-virtual {v7, v9}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3127
    const/4 v7, 0x0

    iput v7, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3128
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3129
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    :cond_5
    monitor-exit v10

    move v7, v8

    .line 3122
    goto :goto_2

    .line 3123
    :cond_6
    const/4 v2, 0x0

    .line 3125
    if-eqz v2, :cond_7

    .line 3126
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v11, "handleIdle: set to RUNNING"

    invoke-virtual {v7, v11}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3127
    const/4 v7, 0x0

    iput v7, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3128
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3129
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 3132
    :cond_7
    if-eqz p1, :cond_8

    .line 3133
    iget v7, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v7, v9, :cond_8

    .line 3135
    :try_start_7
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3141
    :goto_3
    const/4 v7, 0x2

    :try_start_8
    iput v7, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3084
    :cond_8
    monitor-exit v10

    goto/16 :goto_1

    .line 3124
    :catchall_1
    move-exception v7

    .line 3125
    if-eqz v2, :cond_9

    .line 3126
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v9, "handleIdle: set to RUNNING"

    invoke-virtual {v8, v9}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3127
    const/4 v8, 0x0

    iput v8, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3128
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3129
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 3131
    :cond_9
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3148
    .end local v2    # "done":Z
    :catch_1
    move-exception v5

    .line 3149
    .local v5, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 3136
    .end local v5    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v2    # "done":Z
    :catch_2
    move-exception v7

    goto :goto_3
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .locals 22
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    .line 3320
    sget-boolean v17, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 3325
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3326
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    move-object/from16 v17, v0

    check-cast v17, Lcom/sun/mail/imap/IMAPStore;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 3332
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 3334
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 3439
    :cond_3
    :goto_0
    return-void

    .line 3336
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3338
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 3339
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v17

    const/16 v18, 0x5b

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 3340
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v13

    .line 3341
    .local v13, "s":Ljava/lang/String;
    const-string v17, "HIGHESTMODSEQ"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 3342
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 3344
    .end local v13    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->reset()V

    goto :goto_0

    .line 3346
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3351
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 3354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "UNEXPECTED RESPONSE : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object/from16 v7, p1

    .line 3358
    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 3360
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v17, "EXISTS"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 3361
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v5

    .line 3362
    .local v5, "exists":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v5, v0, :cond_3

    .line 3366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    move/from16 v17, v0

    sub-int v4, v5, v17

    .line 3367
    .local v4, "count":I
    new-array v11, v4, [Ljavax/mail/Message;

    .line 3370
    .local v11, "msgs":[Ljavax/mail/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/sun/mail/imap/MessageCache;->addMessages(II)V

    .line 3371
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 3372
    .local v12, "oldtotal":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    move/from16 v17, v0

    add-int v17, v17, v4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 3373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    move/from16 v17, v0

    add-int v17, v17, v4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 3376
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 3377
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v4, :cond_8

    .line 3381
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    goto/16 :goto_0

    .line 3378
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    move-object/from16 v17, v0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v17

    aput-object v17, v11, v6

    .line 3377
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3384
    .end local v4    # "count":I
    .end local v5    # "exists":I
    .end local v6    # "i":I
    .end local v11    # "msgs":[Ljavax/mail/Message;
    .end local v12    # "oldtotal":I
    :cond_9
    const-string v17, "EXPUNGE"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 3387
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v14

    .line 3388
    .local v14, "seqnum":I
    const/4 v11, 0x0

    .line 3389
    .restart local v11    # "msgs":[Ljavax/mail/Message;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 3392
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v11, v0, [Ljavax/mail/Message;

    .end local v11    # "msgs":[Ljavax/mail/Message;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v18

    aput-object v18, v11, v17

    .line 3393
    .restart local v11    # "msgs":[Ljavax/mail/Message;
    const/16 v17, 0x0

    aget-object v17, v11, v17

    if-nez v17, :cond_a

    .line 3394
    const/4 v11, 0x0

    .line 3397
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/sun/mail/imap/MessageCache;->expungeMessage(I)V

    .line 3400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 3402
    if-eqz v11, :cond_3

    .line 3403
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    goto/16 :goto_0

    .line 3405
    .end local v11    # "msgs":[Ljavax/mail/Message;
    .end local v14    # "seqnum":I
    :cond_b
    const-string v17, "VANISHED"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 3411
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomStringList()[Ljava/lang/String;

    move-result-object v13

    .line 3412
    .local v13, "s":[Ljava/lang/String;
    if-nez v13, :cond_3

    .line 3413
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v15

    .line 3414
    .local v15, "uids":Ljava/lang/String;
    invoke-static {v15}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v16

    .line 3416
    .local v16, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;)J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 3417
    invoke-static/range {v16 .. v16}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object v8

    .line 3418
    .local v8, "luid":[J
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sun/mail/imap/IMAPFolder;->createMessagesForUIDs([J)[Ljavax/mail/Message;

    move-result-object v11

    .line 3419
    .restart local v11    # "msgs":[Ljavax/mail/Message;
    array-length v0, v11

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_c

    .line 3423
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 3424
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    goto/16 :goto_0

    .line 3419
    :cond_c
    aget-object v9, v11, v17

    .line 3420
    .local v9, "m":Ljavax/mail/Message;
    invoke-virtual {v9}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v19

    if-lez v19, :cond_d

    .line 3421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/sun/mail/imap/MessageCache;->expungeMessage(I)V

    .line 3419
    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 3428
    .end local v8    # "luid":[J
    .end local v9    # "m":Ljavax/mail/Message;
    .end local v11    # "msgs":[Ljavax/mail/Message;
    .end local v13    # "s":[Ljava/lang/String;
    .end local v15    # "uids":Ljava/lang/String;
    .end local v16    # "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_e
    const-string v17, "FETCH"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 3429
    sget-boolean v17, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v17, :cond_f

    instance-of v0, v7, Lcom/sun/mail/imap/protocol/FetchResponse;

    move/from16 v17, v0

    if-nez v17, :cond_f

    new-instance v17, Ljava/lang/AssertionError;

    const-string v18, "!ir instanceof FetchResponse"

    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v17

    .line 3430
    :cond_f
    check-cast v7, Lcom/sun/mail/imap/protocol/FetchResponse;

    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sun/mail/imap/IMAPFolder;->processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;

    move-result-object v10

    .line 3431
    .local v10, "msg":Ljavax/mail/Message;
    if-eqz v10, :cond_3

    .line 3433
    const/16 v17, 0x1

    .line 3432
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    goto/16 :goto_0

    .line 3435
    .end local v10    # "msg":Ljavax/mail/Message;
    .restart local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_10
    const-string v17, "RECENT"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3437
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    goto/16 :goto_0
.end method

.method handleResponses([Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # [Lcom/sun/mail/iap/Response;

    .prologue
    .line 3493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 3497
    return-void

    .line 3494
    :cond_0
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 3495
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponse(Lcom/sun/mail/iap/Response;)V

    .line 3493
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized hasNewMessages()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 814
    monitor-enter p0

    :try_start_0
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v9, :cond_2

    .line 816
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 819
    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {p0, v10}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    :try_start_2
    iget v10, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    if-lez v10, :cond_1

    :goto_0
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 863
    :cond_0
    :goto_1
    monitor-exit p0

    return v7

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_3
    new-instance v7, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v7

    .line 816
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 814
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 822
    :catch_1
    move-exception v5

    .line 823
    .local v5, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v5    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_1
    move v7, v8

    .line 825
    goto :goto_0

    .line 832
    :cond_2
    const/4 v3, 0x0

    .line 834
    .local v3, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_6
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v9, :cond_3

    iget-char v9, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v9, :cond_3

    .line 835
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v10, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 838
    .local v4, "lname":Ljava/lang/String;
    :goto_2
    new-instance v9, Lcom/sun/mail/imap/IMAPFolder$7;

    invoke-direct {v9, p0, v4}, Lcom/sun/mail/imap/IMAPFolder$7;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    check-cast v3, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 845
    .restart local v3    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-nez v3, :cond_4

    .line 846
    new-instance v7, Ljavax/mail/FolderNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v7

    .line 837
    .end local v4    # "lname":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .restart local v4    # "lname":Ljava/lang/String;
    goto :goto_2

    .line 848
    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v2

    .line 849
    .local v2, "i":I
    aget-object v9, v3, v2

    iget v9, v9, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    if-eq v9, v7, :cond_0

    .line 851
    aget-object v9, v3, v2

    iget v9, v9, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    move v7, v8

    .line 852
    goto :goto_1

    .line 856
    :cond_5
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v6

    .line 857
    .local v6, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v9, v6, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_7
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-gtz v9, :cond_0

    move v7, v8

    .line 860
    goto/16 :goto_1

    .line 861
    .end local v6    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_2
    move-exception v0

    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    move v7, v8

    .line 863
    goto/16 :goto_1

    .line 864
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catch_3
    move-exception v1

    .line 865
    .restart local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_8
    new-instance v7, Ljavax/mail/StoreClosedException;

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v7

    .line 866
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_4
    move-exception v5

    .line 867
    .restart local v5    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public id(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3258
    .local p1, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 3259
    const-string v0, "ID not supported"

    .line 3260
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$20;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$20;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/util/Map;)V

    .line 3259
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public idle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2943
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->idle(Z)V

    .line 2944
    return-void
.end method

.method public idle(Z)V
    .locals 4
    .param p1, "once"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2959
    monitor-enter p0

    .line 2968
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2969
    new-instance v2, Ljavax/mail/MessagingException;

    .line 2970
    const-string v3, "idle method not supported with SocketChannels"

    .line 2969
    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2959
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2972
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->startIdle(Lcom/sun/mail/imap/IdleManager;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3009
    :cond_1
    :goto_0
    return-void

    .line 2991
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3000
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I

    move-result v1

    .line 3001
    .local v1, "minidle":I
    if-lez v1, :cond_1

    .line 3003
    int-to-long v2, v1

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3004
    :catch_0
    move-exception v0

    .line 3006
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method idleAbort()V
    .locals 3

    .prologue
    .line 3202
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3203
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    .line 3204
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3205
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3202
    :cond_0
    monitor-exit v1

    .line 3208
    return-void

    .line 3202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method idleAbortWait()V
    .locals 5

    .prologue
    .line 3215
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3216
    :try_start_0
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v1, :cond_1

    .line 3217
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3218
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3223
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 3230
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "IDLE aborted"

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3215
    :cond_1
    monitor-exit v2

    .line 3233
    return-void

    .line 3226
    :catch_0
    move-exception v0

    .line 3228
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Exception in idleAbortWait"

    invoke-virtual {v1, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3215
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    .prologue
    .line 1515
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1517
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 1519
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1515
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1524
    :try_start_4
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v0

    .line 1515
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1520
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized isSubscribed()Z
    .locals 6

    .prologue
    .line 720
    monitor-enter p0

    const/4 v2, 0x0

    .line 722
    .local v2, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_0
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v4, :cond_0

    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v4, :cond_0

    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v5, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 728
    .local v3, "lname":Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$4;

    invoke-direct {v4, p0, v3}, Lcom/sun/mail/imap/IMAPFolder$4;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v2, v0
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    :goto_1
    if-eqz v2, :cond_1

    .line 738
    :try_start_2
    invoke-direct {p0, v2, v3}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v1

    .line 739
    .local v1, "i":I
    aget-object v4, v2, v1

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 741
    .end local v1    # "i":I
    :goto_2
    monitor-exit p0

    return v4

    .line 725
    .end local v3    # "lname":Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v3    # "lname":Ljava/lang/String;
    goto :goto_0

    .line 741
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 720
    .end local v3    # "lname":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 734
    .restart local v3    # "lname":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected keepConnectionAlive(Z)V
    .locals 8
    .param p1, "keepStoreAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    .line 3795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 3796
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 3797
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v1, :cond_0

    .line 3798
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    .line 3801
    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3802
    const/4 v0, 0x0

    .line 3804
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 3805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 3806
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3808
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3811
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_2
    return-void

    .line 3807
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v1

    move-object v2, v1

    .line 3808
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3809
    throw v2
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public listRights(Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2866
    const-string v0, "ACL not supported"

    .line 2867
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$16;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$16;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    .line 2866
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 624
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized moveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .locals 1
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1935
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1936
    monitor-exit p0

    return-void

    .line 1935
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)[Lcom/sun/mail/imap/AppendUID;
    .locals 1
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1962
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public myRights()Lcom/sun/mail/imap/Rights;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2883
    const-string v0, "ACL not supported"

    .line 2884
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$17;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$17;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2883
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method protected newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 1
    .param p1, "msgnum"    # I

    .prologue
    .line 1300
    new-instance v0, Lcom/sun/mail/imap/IMAPMessage;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;I)V

    return-object v0
.end method

.method public declared-synchronized open(ILcom/sun/mail/imap/ResyncData;)Ljava/util/List;
    .locals 20
    .param p1, "mode"    # I
    .param p2, "rd"    # Lcom/sun/mail/imap/ResyncData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/mail/imap/ResyncData;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavax/mail/event/MailEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 967
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 969
    const/4 v7, 0x0

    .line 971
    .local v7, "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v15, Lcom/sun/mail/imap/IMAPStore;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/sun/mail/imap/IMAPStore;->getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 973
    const/4 v9, 0x0

    .line 974
    .local v9, "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 982
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 991
    if-eqz p2, :cond_0

    .line 992
    :try_start_2
    sget-object v15, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_5

    .line 993
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v17, "CONDSTORE"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 994
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v17, "QRESYNC"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 995
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v17, "CONDSTORE"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 996
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v17, "CONDSTORE"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    .line 1006
    :cond_0
    :goto_0
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_6

    .line 1007
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    .line 1047
    :goto_1
    :try_start_3
    iget v15, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    move/from16 v0, p1

    if-eq v15, v0, :cond_1

    .line 1048
    const/4 v15, 0x2

    move/from16 v0, p1

    if-ne v0, v15, :cond_8

    iget v15, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    .line 1049
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v15, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v15}, Lcom/sun/mail/imap/IMAPStore;->allowReadOnlySelect()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1074
    :cond_1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 1075
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 1076
    iget v15, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    .line 1077
    iget-object v15, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->availableFlags:Ljavax/mail/Flags;

    .line 1078
    iget-object v15, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 1079
    iget v15, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 1080
    iget v15, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 1081
    iget-wide v0, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 1082
    iget-wide v0, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 1083
    iget-wide v0, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->highestmodseq:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 1086
    new-instance v17, Lcom/sun/mail/imap/MessageCache;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v15, Lcom/sun/mail/imap/IMAPStore;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/sun/mail/imap/MessageCache;-><init>(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IMAPStore;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    .line 1089
    iget-object v15, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    if-eqz v15, :cond_3

    .line 1090
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1091
    .end local v9    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .local v10, "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    :try_start_4
    iget-object v15, v7, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-result v17

    if-nez v17, :cond_9

    move-object v9, v10

    .line 974
    .end local v10    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local v9    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    :cond_3
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1117
    const/4 v15, 0x1

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1118
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1119
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 1122
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1124
    monitor-exit p0

    return-object v9

    .line 998
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v17, "QRESYNC"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 1010
    :catch_0
    move-exception v4

    .line 1019
    .local v4, "cex":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1021
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_7

    .line 1022
    new-instance v15, Ljavax/mail/MessagingException;

    .line 1023
    const-string v17, "folder cannot contain messages"

    .line 1022
    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1026
    :catchall_0
    move-exception v15

    .line 1028
    const/16 v17, 0x0

    :try_start_9
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1029
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1030
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 1032
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1033
    throw v15

    .line 974
    .end local v4    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    :catchall_1
    move-exception v15

    :goto_3
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 967
    .end local v7    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v9    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    :catchall_2
    move-exception v15

    monitor-exit p0

    throw v15

    .line 1001
    .restart local v7    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v9    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    :cond_5
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v17, "QRESYNC"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1002
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v17, "QRESYNC"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V
    :try_end_b
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 1035
    :catch_1
    move-exception v11

    .line 1038
    .local v11, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v15}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1042
    :goto_4
    const/4 v15, 0x0

    :try_start_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1043
    new-instance v15, Ljavax/mail/MessagingException;

    invoke-virtual {v11}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v11}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1009
    .end local v11    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_6
    :try_start_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_e
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v7

    goto/16 :goto_1

    .line 1024
    .restart local v4    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    :cond_7
    :try_start_f
    new-instance v15, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1054
    .end local v4    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    :cond_8
    :try_start_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v15}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1055
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
    :try_end_10
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1066
    :goto_5
    :try_start_11
    new-instance v15, Ljavax/mail/ReadOnlyFolderException;

    .line 1067
    const-string v17, "Cannot open in desired mode"

    .line 1066
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1056
    :catch_2
    move-exception v11

    .line 1059
    .restart local v11    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v15}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_12
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 1063
    const/4 v15, 0x0

    :try_start_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    goto :goto_5

    .end local v11    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_3
    move-exception v15

    goto :goto_5

    .line 1060
    .restart local v11    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_3
    move-exception v15

    .line 1063
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    goto :goto_5

    .line 1062
    :catchall_4
    move-exception v15

    .line 1063
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1064
    throw v15
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1091
    .end local v9    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local v11    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v10    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    :cond_9
    :try_start_14
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1092
    .local v5, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v17, "VANISHED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1094
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomStringList()[Ljava/lang/String;

    move-result-object v12

    .line 1096
    .local v12, "s":[Ljava/lang/String;
    if-eqz v12, :cond_2

    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1097
    const/16 v17, 0x0

    aget-object v17, v12, v17

    const-string v18, "EARLIER"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1099
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v13

    .line 1100
    .local v13, "uids":Ljava/lang/String;
    invoke-static {v13}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v14

    .line 1101
    .local v14, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v14, v0, v1}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;J)[J

    move-result-object v6

    .line 1102
    .local v6, "luid":[J
    if-eqz v6, :cond_2

    array-length v0, v6

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 1104
    new-instance v17, Lcom/sun/mail/imap/MessageVanishedEvent;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/sun/mail/imap/MessageVanishedEvent;-><init>(Ljavax/mail/Folder;[J)V

    .line 1103
    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 974
    .end local v5    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v6    # "luid":[J
    .end local v12    # "s":[Ljava/lang/String;
    .end local v13    # "uids":Ljava/lang/String;
    .end local v14    # "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    :catchall_5
    move-exception v15

    move-object v9, v10

    .end local v10    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local v9    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    goto/16 :goto_3

    .line 1105
    .end local v9    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local v5    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .restart local v10    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    :cond_a
    const-string v17, "FETCH"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1106
    sget-boolean v17, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v17, :cond_b

    instance-of v0, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    move/from16 v17, v0

    if-nez v17, :cond_b

    new-instance v15, Ljava/lang/AssertionError;

    .line 1107
    const-string v17, "!ir instanceof FetchResponse"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15

    .line 1108
    :cond_b
    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    .end local v5    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sun/mail/imap/IMAPFolder;->processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;

    move-result-object v8

    .line 1109
    .local v8, "msg":Ljavax/mail/Message;
    if-eqz v8, :cond_2

    .line 1110
    new-instance v17, Ljavax/mail/event/MessageChangedEvent;

    .line 1111
    const/16 v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Ljavax/mail/event/MessageChangedEvent;-><init>(Ljava/lang/Object;ILjavax/mail/Message;)V

    .line 1110
    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto/16 :goto_2

    .end local v8    # "msg":Ljavax/mail/Message;
    .end local v10    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local v9    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local v11    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_6
    move-exception v15

    goto/16 :goto_4

    .line 1039
    :catch_4
    move-exception v15

    goto/16 :goto_4
.end method

.method public declared-synchronized open(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 952
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->open(ILcom/sun/mail/imap/ResyncData;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    monitor-exit p0

    return-void

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected releaseProtocol(Z)V
    .locals 3
    .param p1, "returnToPool"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3768
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    .line 3769
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 3771
    if-eqz p1, :cond_1

    .line 3772
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3777
    :goto_0
    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 3779
    :cond_0
    return-void

    .line 3774
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 3775
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0
.end method

.method protected declared-synchronized releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 2
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .prologue
    .line 3751
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq p1, v0, :cond_0

    .line 3752
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3757
    :goto_0
    monitor-exit p0

    return-void

    .line 3755
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "releasing our protocol as store protocol?"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3751
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeACL(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2811
    const-string v0, "ACL not supported"

    .line 2812
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$15;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$15;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    .line 2811
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2819
    return-void
.end method

.method public removeRights(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2843
    const/16 v0, 0x2d

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2844
    return-void
.end method

.method public declared-synchronized renameTo(Ljavax/mail/Folder;)Z
    .locals 4
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 926
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 927
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 928
    invoke-virtual {p1}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-eq v2, v3, :cond_0

    .line 929
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t rename across Stores"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 932
    :cond_0
    :try_start_1
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$9;

    invoke-direct {v2, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$9;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Folder;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 939
    .local v0, "ret":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 945
    :goto_0
    monitor-exit p0

    return v1

    .line 942
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 943
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 944
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 945
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 8
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2241
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2244
    const/4 v2, 0x0

    .line 2246
    .local v2, "matchMsgs":[Ljavax/mail/Message;
    :try_start_1
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2247
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v3

    .line 2248
    .local v3, "matches":[I
    if-eqz v3, :cond_0

    .line 2249
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2246
    :cond_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2260
    .end local v2    # "matchMsgs":[Ljavax/mail/Message;
    .end local v3    # "matches":[I
    :goto_0
    monitor-exit p0

    return-object v2

    .line 2246
    .restart local v2    # "matchMsgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2253
    :catch_0
    move-exception v1

    .line 2255
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_5
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v2

    goto :goto_0

    .line 2256
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_1
    move-exception v5

    .line 2258
    .local v5, "sex":Ljavax/mail/search/SearchException;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v6, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPStore;->throwSearchException()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2259
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2241
    .end local v2    # "matchMsgs":[Ljavax/mail/Message;
    .end local v5    # "sex":Ljavax/mail/search/SearchException;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2260
    .restart local v2    # "matchMsgs":[Ljavax/mail/Message;
    .restart local v5    # "sex":Ljavax/mail/search/SearchException;
    :cond_1
    :try_start_6
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v2

    goto :goto_0

    .line 2261
    .end local v5    # "sex":Ljavax/mail/search/SearchException;
    :catch_2
    move-exception v0

    .line 2262
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 2263
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_3
    move-exception v4

    .line 2265
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 11
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .param p2, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2276
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2278
    array-length v8, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v8, :cond_0

    .line 2302
    .end local p2    # "msgs":[Ljavax/mail/Message;
    :goto_0
    monitor-exit p0

    return-object p2

    .line 2283
    .restart local p2    # "msgs":[Ljavax/mail/Message;
    :cond_0
    const/4 v2, 0x0

    .line 2285
    .local v2, "matchMsgs":[Ljavax/mail/Message;
    :try_start_1
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2286
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v5

    .line 2287
    .local v5, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v8, 0x0

    invoke-static {p2, v8}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v4

    .line 2288
    .local v4, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v4, :cond_1

    .line 2289
    new-instance v8, Ljavax/mail/MessageRemovedException;

    .line 2290
    const-string v10, "Messages have been removed"

    .line 2289
    invoke-direct {v8, v10}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2285
    .end local v4    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v5    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v8
    :try_end_3
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/mail/search/SearchException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2297
    :catch_0
    move-exception v1

    .line 2299
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_4
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object p2

    goto :goto_0

    .line 2291
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .restart local v4    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v5    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_1
    :try_start_5
    invoke-virtual {v5, v4, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v3

    .line 2292
    .local v3, "matches":[I
    if-eqz v3, :cond_2

    .line 2293
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2285
    :cond_2
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object p2, v2

    .line 2295
    goto :goto_0

    .line 2300
    .end local v3    # "matches":[I
    .end local v4    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v5    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_1
    move-exception v7

    .line 2302
    .local v7, "sex":Ljavax/mail/search/SearchException;
    :try_start_6
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object p2

    goto :goto_0

    .line 2303
    .end local v7    # "sex":Ljavax/mail/search/SearchException;
    :catch_2
    move-exception v0

    .line 2304
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v8, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2276
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v2    # "matchMsgs":[Ljavax/mail/Message;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2305
    .restart local v2    # "matchMsgs":[Ljavax/mail/Message;
    :catch_3
    move-exception v6

    .line 2307
    .local v6, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v8, Ljavax/mail/MessagingException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public declared-synchronized setFlags(IILjavax/mail/Flags;Z)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "flag"    # Ljavax/mail/Flags;
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1361
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1362
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Ljavax/mail/Message;

    .line 1363
    .local v2, "msgs":[Ljavax/mail/Message;
    const/4 v0, 0x0

    .line 1364
    .local v0, "i":I
    move v3, p1

    .local v3, "n":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-le v3, p2, :cond_0

    .line 1366
    invoke-virtual {p0, v2, p3, p4}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    monitor-exit p0

    return-void

    .line 1365
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 1361
    .end local v1    # "i":I
    .end local v2    # "msgs":[Ljavax/mail/Message;
    .end local v3    # "n":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setFlags([ILjavax/mail/Flags;Z)V
    .locals 3
    .param p1, "msgnums"    # [I
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1374
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1375
    array-length v2, p1

    new-array v1, v2, [Ljavax/mail/Message;

    .line 1376
    .local v1, "msgs":[Ljavax/mail/Message;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 1378
    invoke-virtual {p0, v1, p2, p3}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    monitor-exit p0

    return-void

    .line 1377
    :cond_0
    :try_start_1
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1374
    .end local v0    # "i":I
    .end local v1    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .locals 7
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1334
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1335
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->checkFlags(Ljavax/mail/Flags;)V

    .line 1337
    array-length v4, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_0

    .line 1354
    :goto_0
    monitor-exit p0

    return-void

    .line 1340
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1342
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1343
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v1

    .line 1344
    .local v1, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v1, :cond_1

    .line 1345
    new-instance v4, Ljavax/mail/MessageRemovedException;

    .line 1346
    const-string v6, "Messages have been removed"

    .line 1345
    invoke-direct {v4, v6}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1348
    .end local v1    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_3
    new-instance v4, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4

    .line 1340
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1334
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1347
    .restart local v1    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_1
    :try_start_5
    invoke-virtual {v2, v1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1340
    :try_start_6
    monitor-exit v5

    goto :goto_0

    .line 1350
    .end local v1    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_1
    move-exception v3

    .line 1351
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .locals 2
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2763
    const-string v0, "QUOTA not supported"

    .line 2764
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$13;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$13;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V

    .line 2763
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2771
    return-void
.end method

.method public declared-synchronized setSubscribed(Z)V
    .locals 1
    .param p1, "subscribe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$5;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$5;-><init>(Lcom/sun/mail/imap/IMAPFolder;Z)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    monitor-exit p0

    return-void

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startIdle(Lcom/sun/mail/imap/IdleManager;)Z
    .locals 4
    .param p1, "im"    # Lcom/sun/mail/imap/IdleManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3025
    sget-boolean v1, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3026
    :cond_0
    monitor-enter p0

    .line 3027
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 3028
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    if-eq p1, v1, :cond_1

    .line 3029
    new-instance v1, Ljavax/mail/MessagingException;

    .line 3030
    const-string v2, "Folder already being watched by another IdleManager"

    .line 3029
    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3026
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3031
    :cond_1
    :try_start_1
    const-string v1, "IDLE not supported"

    .line 3032
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$19;

    invoke-direct {v2, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$19;-><init>(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IdleManager;)V

    .line 3031
    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3062
    .local v0, "started":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "startIdle: return {0}"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3063
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method protected declared-synchronized throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    .locals 3
    .param p1, "cex"    # Lcom/sun/mail/iap/ConnectionException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;,
            Ljavax/mail/StoreClosedException;
        }
    .end annotation

    .prologue
    .line 3542
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getProtocol()Lcom/sun/mail/iap/Protocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq v0, v1, :cond_1

    .line 3543
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v0, :cond_2

    .line 3544
    :cond_1
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3546
    :cond_2
    :try_start_1
    new-instance v0, Ljavax/mail/StoreClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method waitIfIdle()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 3162
    sget-boolean v2, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3164
    :cond_0
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 3165
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3166
    .local v1, "im":Lcom/sun/mail/imap/IdleManager;
    if-eqz v1, :cond_3

    .line 3167
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v3, "waitIfIdle: request IdleManager to abort"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/IdleManager;->requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 3178
    .end local v1    # "im":Lcom/sun/mail/imap/IdleManager;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3179
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "waitIfIdle: wait to be not idle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3179
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3181
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 3182
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3183
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "waitIfIdle: wait done, idleState "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3184
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3183
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3163
    :cond_2
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-nez v2, :cond_0

    .line 3196
    return-void

    .line 3170
    .restart local v1    # "im":Lcom/sun/mail/imap/IdleManager;
    :cond_3
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v3, "waitIfIdle: abort IDLE"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3171
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3172
    const/4 v2, 0x2

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    goto :goto_0

    .line 3175
    .end local v1    # "im":Lcom/sun/mail/imap/IdleManager;
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string/jumbo v4, "waitIfIdle: idleState {0}"

    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3185
    :catch_0
    move-exception v0

    .line 3187
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 3193
    new-instance v2, Lcom/sun/mail/iap/ProtocolException;

    const-string v3, "Interrupted waitIfIdle"

    invoke-direct {v2, v3, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
