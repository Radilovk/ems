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
.field static final synthetic $assertionsDisabled:Z = false

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
    .locals 0

    .line 178
    nop

    .line 268
    return-void
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V
    .locals 3
    .param p1, "li"    # Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "store"    # Lcom/sun/mail/imap/IMAPStore;

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

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 416
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 417
    :cond_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 418
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 419
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "store"    # Lcom/sun/mail/imap/IMAPStore;
    .param p4, "isNamespace"    # Ljava/lang/Boolean;

    .line 370
    invoke-direct {p0, p3}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 193
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    .line 205
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 269
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 272
    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 274
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 275
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 277
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 278
    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 279
    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 280
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 282
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 283
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    .line 285
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    .line 371
    if-eqz p1, :cond_2

    .line 373
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 374
    iput-char p2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 375
    new-instance v2, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 376
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v4

    const-string v5, "DEBUG IMAP"

    invoke-direct {v2, v3, v5, v4}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V

    .line 375
    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 377
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getConnectionPoolLogger()Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

    .line 390
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 391
    const v2, 0xffff

    if-eq p2, v2, :cond_0

    if-eqz p2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 393
    .local v2, "i":I
    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 395
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 400
    .end local v2    # "i":I
    :cond_0
    if-eqz p4, :cond_1

    .line 401
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 402
    :cond_1
    return-void

    .line 372
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Folder name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPFolder;)I
    .locals 0

    .line 269
    iget p0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return p0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/IdleManager;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    return-object p0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPFolder;I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return-void
.end method

.method static synthetic access$3(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IdleManager;)V
    .locals 0

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

    .line 500
    nop

    .line 501
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 511
    return-void

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot change flags on READ_ONLY folder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanup(Z)V
    .locals 2
    .param p1, "returnToPool"    # Z

    .line 1499
    nop

    .line 1500
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    .line 1502
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1503
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1504
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

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
    .locals 6
    .param p1, "expunge"    # Z
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1402
    nop

    .line 1403
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1410
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1411
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1412
    const-string v2, "This operation is not allowed on a closed folder"

    .line 1411
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "expunge":Z
    .end local p2    # "force":Z
    throw v1

    .line 1415
    .restart local p1    # "expunge":Z
    .restart local p2    # "force":Z
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 1421
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v1, :cond_2

    .line 1422
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 1424
    :cond_2
    const/4 v1, 0x1

    .line 1426
    .local v1, "reuseProtocol":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 1427
    if-eqz p2, :cond_3

    .line 1428
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "forcing folder {0} to close"

    .line 1429
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 1428
    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1430
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_8

    .line 1431
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 1432
    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1434
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 1435
    const-string v3, "pool is full, not adding an Authenticated connection"

    .line 1434
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1438
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_4

    .line 1439
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1441
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_8

    .line 1442
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V

    .line 1443
    goto :goto_2

    .line 1447
    :cond_5
    if-nez p1, :cond_7

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 1449
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_6

    .line 1450
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v3, "UNSELECT"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1451
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unselect()V

    goto :goto_2

    .line 1461
    :cond_6
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_8

    .line 1462
    const/4 v2, 0x1

    .line 1464
    .local v2, "selected":Z
    :try_start_3
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_3
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1466
    goto :goto_1

    :catch_0
    move-exception v3

    .line 1469
    .local v3, "ex":Lcom/sun/mail/iap/CommandFailedException;
    const/4 v2, 0x0

    .line 1471
    .end local v3    # "ex":Lcom/sun/mail/iap/CommandFailedException;
    :goto_1
    if-eqz v2, :cond_8

    :try_start_4
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v3, :cond_8

    .line 1472
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
    :try_end_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1475
    .end local v2    # "selected":Z
    goto :goto_2

    :catch_1
    move-exception v2

    .line 1476
    .local v2, "pex2":Lcom/sun/mail/iap/ProtocolException;
    const/4 v1, 0x0

    .line 1478
    .end local v2    # "pex2":Lcom/sun/mail/iap/ProtocolException;
    goto :goto_2

    .line 1479
    :cond_7
    :try_start_5
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_8

    .line 1480
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
    :try_end_5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1487
    :cond_8
    :goto_2
    :try_start_6
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v2, :cond_9

    .line 1488
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1403
    .end local v1    # "reuseProtocol":Z
    :cond_9
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1491
    return-void

    .line 1485
    .restart local v1    # "reuseProtocol":Z
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1483
    :catch_2
    move-exception v2

    .line 1484
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v1    # "reuseProtocol":Z
    .end local p1    # "expunge":Z
    .end local p2    # "force":Z
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1487
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v1    # "reuseProtocol":Z
    .restart local p1    # "expunge":Z
    .restart local p2    # "force":Z
    :goto_3
    :try_start_8
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v3, :cond_a

    .line 1488
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1489
    :cond_a
    nop

    .end local p1    # "expunge":Z
    .end local p2    # "force":Z
    throw v2

    .line 1403
    .end local v1    # "reuseProtocol":Z
    .restart local p1    # "expunge":Z
    .restart local p2    # "force":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method private declared-synchronized copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    .locals 5
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .param p3, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1973
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1975
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 1976
    monitor-exit p0

    return-void

    .line 1979
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v0, v1, :cond_4

    .line 1980
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1982
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1983
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v2

    .line 1984
    .local v2, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-eqz v2, :cond_2

    .line 1987
    if-eqz p3, :cond_1

    .line 1988
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->move([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V

    goto :goto_0

    .line 1990
    :cond_1
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1991
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    nop

    .line 1980
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1985
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_2
    :try_start_4
    new-instance v3, Ljavax/mail/MessageRemovedException;

    .line 1986
    const-string v4, "Messages have been removed"

    .line 1985
    invoke-direct {v3, v4}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v3
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1980
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2001
    :catch_0
    move-exception v1

    .line 2002
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 1999
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catch_1
    move-exception v1

    .line 2000
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 1991
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catch_2
    move-exception v1

    .line 1992
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRYCREATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1993
    new-instance v2, Ljavax/mail/FolderNotFoundException;

    .line 1994
    nop

    .line 1995
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1993
    invoke-direct {v2, p2, v3}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 1998
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :cond_3
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1980
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 2006
    :cond_4
    if-nez p3, :cond_5

    .line 2010
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2011
    :goto_2
    monitor-exit p0

    return-void

    .line 2007
    :cond_5
    :try_start_8
    new-instance v0, Ljavax/mail/MessagingException;

    .line 2008
    const-string v1, "Move between stores not supported"

    .line 2007
    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1972
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;
    .locals 17
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .param p3, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 2038
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2040
    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2041
    monitor-exit p0

    return-object v3

    .line 2044
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v4, v1, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-eq v0, v4, :cond_2

    .line 2045
    new-instance v0, Ljavax/mail/MessagingException;

    .line 2046
    if-eqz p3, :cond_1

    .line 2047
    const-string v3, "can\'t moveUIDMessages to a different store"

    goto :goto_0

    .line 2048
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    const-string v3, "can\'t copyUIDMessages to a different store"

    .line 2045
    :goto_0
    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2052
    :cond_2
    new-instance v0, Ljavax/mail/FetchProfile;

    invoke-direct {v0}, Ljavax/mail/FetchProfile;-><init>()V

    move-object v4, v0

    .line 2053
    .local v4, "fp":Ljavax/mail/FetchProfile;
    sget-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v4, v0}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 2054
    invoke-virtual {v1, v2, v4}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 2057
    iget-object v5, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2059
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 2061
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-static {v2, v3}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v3

    .line 2062
    .local v3, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-eqz v3, :cond_8

    .line 2066
    if-eqz p3, :cond_3

    .line 2067
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v6

    .local v6, "cuid":Lcom/sun/mail/imap/CopyUID;
    goto :goto_1

    .line 2069
    .end local v6    # "cuid":Lcom/sun/mail/imap/CopyUID;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v6

    .line 2111
    .restart local v6    # "cuid":Lcom/sun/mail/imap/CopyUID;
    :goto_1
    iget-object v7, v6, Lcom/sun/mail/imap/CopyUID;->src:[Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-static {v7}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object v7

    .line 2112
    .local v7, "srcuids":[J
    iget-object v8, v6, Lcom/sun/mail/imap/CopyUID;->dst:[Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-static {v8}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object v8

    .line 2115
    .local v8, "dstuids":[J
    invoke-virtual {v1, v7}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesByUID([J)[Ljavax/mail/Message;

    move-result-object v9

    .line 2116
    .local v9, "srcmsgs":[Ljavax/mail/Message;
    array-length v10, v2

    new-array v10, v10, [Lcom/sun/mail/imap/AppendUID;

    .line 2117
    .local v10, "result":[Lcom/sun/mail/imap/AppendUID;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    array-length v12, v2
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v11, v12, :cond_4

    .line 2130
    .end local v11    # "i":I
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v10

    .line 2118
    .restart local v11    # "i":I
    :cond_4
    move v12, v11

    .line 2120
    .local v12, "j":I
    :goto_3
    :try_start_4
    aget-object v13, v2, v11

    aget-object v14, v9, v12

    if-ne v13, v14, :cond_5

    .line 2121
    new-instance v13, Lcom/sun/mail/imap/AppendUID;

    .line 2122
    iget-wide v14, v6, Lcom/sun/mail/imap/CopyUID;->uidvalidity:J

    move-object/from16 v16, v3

    .end local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .local v16, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    aget-wide v2, v8, v12

    invoke-direct {v13, v14, v15, v2, v3}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V

    .line 2121
    aput-object v13, v10, v11

    .line 2123
    goto :goto_4

    .line 2125
    .end local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_5
    move-object/from16 v16, v3

    .end local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    add-int/lit8 v12, v12, 0x1

    .line 2126
    array-length v2, v9

    if-lt v12, v2, :cond_6

    .line 2127
    const/4 v2, 0x0

    move v12, v2

    .line 2128
    :cond_6
    if-ne v12, v11, :cond_7

    .line 2117
    .end local v12    # "j":I
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    goto :goto_2

    .line 2128
    .restart local v12    # "j":I
    :cond_7
    move-object/from16 v2, p1

    move-object/from16 v3, v16

    goto :goto_3

    .line 2063
    .end local v6    # "cuid":Lcom/sun/mail/imap/CopyUID;
    .end local v7    # "srcuids":[J
    .end local v8    # "dstuids":[J
    .end local v9    # "srcmsgs":[Ljavax/mail/Message;
    .end local v10    # "result":[Lcom/sun/mail/imap/AppendUID;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_8
    move-object/from16 v16, v3

    .end local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    new-instance v2, Ljavax/mail/MessageRemovedException;

    .line 2064
    const-string v3, "Messages have been removed"

    .line 2063
    invoke-direct {v2, v3}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2057
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v4    # "fp":Ljavax/mail/FetchProfile;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catchall_0
    move-exception v0

    move-object/from16 v6, p2

    goto :goto_5

    .line 2141
    :catch_0
    move-exception v0

    .line 2142
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 2139
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v4    # "fp":Ljavax/mail/FetchProfile;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catch_1
    move-exception v0

    .line 2140
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 2131
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v4    # "fp":Ljavax/mail/FetchProfile;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catch_2
    move-exception v0

    .line 2132
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRYCREATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 2133
    new-instance v2, Ljavax/mail/FolderNotFoundException;

    .line 2134
    nop

    .line 2135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " does not exist"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2133
    move-object/from16 v6, p2

    :try_start_6
    invoke-direct {v2, v6, v3}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 2138
    .restart local v4    # "fp":Ljavax/mail/FetchProfile;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :cond_9
    move-object/from16 v6, p2

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 2057
    .end local v0    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .restart local v4    # "fp":Ljavax/mail/FetchProfile;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :goto_5
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 2037
    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createHeaderCommand([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "hdrs"    # [Ljava/lang/String;

    .line 1310
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BODY.PEEK[HEADER.FIELDS ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v0, "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 1313
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "RFC822.HEADER.LINES ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1315
    .restart local v0    # "sb":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_2

    .line 1321
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1322
    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1324
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1326
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1316
    .restart local v1    # "i":I
    :cond_2
    if-lez v1, :cond_3

    .line 1317
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1318
    :cond_3
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1315
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private createMessagesForUIDs([J)[Ljavax/mail/Message;
    .locals 6
    .param p1, "uids"    # [J

    .line 2637
    array-length v0, p1

    new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;

    .line 2638
    .local v0, "msgs":[Lcom/sun/mail/imap/IMAPMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 2650
    .end local v1    # "i":I
    return-object v0

    .line 2639
    .restart local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 2640
    .local v2, "m":Lcom/sun/mail/imap/IMAPMessage;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v3, :cond_1

    .line 2641
    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    .line 2642
    :cond_1
    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 2644
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2645
    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 2646
    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 2648
    :cond_2
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aput-object v2, v0, v1

    .line 2638
    .end local v2    # "m":Lcom/sun/mail/imap/IMAPMessage;
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method private declared-synchronized doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "subscribed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 632
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    new-array v0, v1, [Ljavax/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 635
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 637
    .local v0, "c":C
    nop

    .line 638
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/sun/mail/imap/IMAPFolder$2;-><init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V

    .line 637
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 648
    .local v2, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-nez v2, :cond_1

    .line 649
    new-array v1, v1, [Ljavax/mail/Folder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 662
    :cond_1
    const/4 v3, 0x0

    .line 664
    .local v3, "start":I
    :try_start_2
    array-length v4, v2

    if-lez v4, :cond_2

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 665
    const/4 v3, 0x1

    .line 667
    :cond_2
    array-length v1, v2

    sub-int/2addr v1, v3

    new-array v1, v1, [Lcom/sun/mail/imap/IMAPFolder;

    .line 668
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v4, Lcom/sun/mail/imap/IMAPStore;

    .line 669
    .local v4, "st":Lcom/sun/mail/imap/IMAPStore;
    move v5, v3

    .local v5, "i":I
    :goto_0
    array-length v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v5, v6, :cond_3

    .line 671
    .end local v5    # "i":I
    monitor-exit p0

    return-object v1

    .line 670
    .restart local v5    # "i":I
    :cond_3
    sub-int v6, v5, v3

    :try_start_3
    aget-object v7, v2, v5

    invoke-virtual {v4, v7}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v7

    aput-object v7, v1, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 669
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 628
    .end local v0    # "c":C
    .end local v1    # "folders":[Lcom/sun/mail/imap/IMAPFolder;
    .end local v2    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v3    # "start":I
    .end local v4    # "st":Lcom/sun/mail/imap/IMAPStore;
    .end local v5    # "i":I
    .end local p1    # "pattern":Ljava/lang/String;
    .end local p2    # "subscribed":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
    .locals 2
    .param p1, "li"    # [Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "lname"    # Ljava/lang/String;

    .line 600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 601
    :cond_0
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 602
    nop

    .line 604
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 608
    const/4 v0, 0x0

    .line 610
    :cond_1
    return v0

    .line 600
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getStatus()Lcom/sun/mail/imap/protocol/Status;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1708
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStatusCacheTimeout()I

    move-result v0

    .line 1711
    .local v0, "statusCacheTimeout":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    if-eqz v1, :cond_0

    .line 1712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 1713
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    return-object v1

    .line 1715
    :cond_0
    const/4 v1, 0x0

    .line 1718
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v1, v2

    .line 1719
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v2

    .line 1721
    .local v2, "s":Lcom/sun/mail/imap/protocol/Status;
    if-lez v0, :cond_1

    .line 1722
    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 1723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1725
    :cond_1
    nop

    .line 1727
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1725
    return-object v2

    .line 1726
    .end local v2    # "s":Lcom/sun/mail/imap/protocol/Status;
    :catchall_0
    move-exception v2

    .line 1727
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1728
    throw v2
.end method

.method private isDirectory()Z
    .locals 1

    .line 3868
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;
    .locals 9
    .param p1, "fr"    # Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 3448
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0

    .line 3449
    .local v0, "msg":Lcom/sun/mail/imap/IMAPMessage;
    if-eqz v0, :cond_4

    .line 3450
    const/4 v1, 0x0

    .line 3452
    .local v1, "notify":Z
    const-class v2, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/UID;

    .line 3453
    .local v2, "uid":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/sun/mail/imap/protocol/UID;->uid:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 3454
    iget-wide v3, v2, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 3455
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 3456
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 3457
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    iget-wide v4, v2, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3458
    const/4 v1, 0x1

    .line 3461
    :cond_1
    const-class v3, Lcom/sun/mail/imap/protocol/MODSEQ;

    invoke-virtual {p1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/protocol/MODSEQ;

    .line 3462
    .local v3, "modseq":Lcom/sun/mail/imap/protocol/MODSEQ;
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->_getModSeq()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 3463
    iget-wide v4, v3, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    invoke-virtual {v0, v4, v5}, Lcom/sun/mail/imap/IMAPMessage;->setModSeq(J)V

    .line 3470
    const/4 v1, 0x1

    .line 3474
    :cond_2
    const-class v4, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-virtual {p1, v4}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/FLAGS;

    .line 3475
    .local v4, "flags":Lcom/sun/mail/imap/protocol/FLAGS;
    if-eqz v4, :cond_3

    .line 3476
    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/IMAPMessage;->_setFlags(Ljavax/mail/Flags;)V

    .line 3477
    const/4 v1, 0x1

    .line 3480
    :cond_3
    if-nez v1, :cond_4

    .line 3481
    const/4 v0, 0x0

    .line 3483
    .end local v1    # "notify":Z
    .end local v2    # "uid":Lcom/sun/mail/imap/protocol/UID;
    .end local v3    # "modseq":Lcom/sun/mail/imap/protocol/MODSEQ;
    .end local v4    # "flags":Lcom/sun/mail/imap/protocol/FLAGS;
    :cond_4
    return-object v0
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

    .line 2894
    nop

    .line 2895
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$18;

    invoke-direct {v0, p0, p2, p1}, Lcom/sun/mail/imap/IMAPFolder$18;-><init>(Lcom/sun/mail/imap/IMAPFolder;CLcom/sun/mail/imap/ACL;)V

    .line 2894
    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

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

    .line 2799
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2800
    return-void
.end method

.method public declared-synchronized addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/MessageCountListener;

    monitor-enter p0

    .line 2380
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

    .line 2379
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "l":Ljavax/mail/event/MessageCountListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMessages([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 9
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1868
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1869
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/internet/MimeMessage;

    .line 1870
    .local v0, "rmsgs":[Ljavax/mail/Message;
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;

    move-result-object v1

    .line 1871
    .local v1, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    .line 1883
    .end local v2    # "i":I
    monitor-exit p0

    return-object v0

    .line 1872
    .restart local v2    # "i":I
    :cond_0
    :try_start_1
    aget-object v3, v1, v2

    .line 1873
    .local v3, "auid":Lcom/sun/mail/imap/AppendUID;
    if-eqz v3, :cond_1

    .line 1874
    iget-wide v4, v3, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 1876
    :try_start_2
    iget-wide v4, v3, Lcom/sun/mail/imap/AppendUID;->uid:J

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1877
    goto :goto_1

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_0
    move-exception v4

    .line 1871
    .end local v3    # "auid":Lcom/sun/mail/imap/AppendUID;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1867
    .end local v0    # "rmsgs":[Ljavax/mail/Message;
    .end local v1    # "uids":[Lcom/sun/mail/imap/AppendUID;
    .end local v2    # "i":I
    .end local p1    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addRights(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2831
    const/16 v0, 0x2b

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2832
    return-void
.end method

.method public declared-synchronized appendMessages([Ljavax/mail/Message;)V
    .locals 9
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1747
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1754
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v0

    .line 1756
    .local v0, "maxsize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    .line 1784
    .end local v1    # "i":I
    monitor-exit p0

    return-void

    .line 1757
    .restart local v1    # "i":I
    :cond_0
    :try_start_1
    aget-object v2, p1, v1

    .line 1758
    .local v2, "m":Ljavax/mail/Message;
    invoke-virtual {v2}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v3

    .line 1759
    .local v3, "d":Ljava/util/Date;
    if-nez v3, :cond_1

    .line 1760
    invoke-virtual {v2}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v4

    move-object v3, v4

    .line 1761
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    move-object v4, v3

    .line 1762
    .local v4, "dd":Ljava/util/Date;
    invoke-virtual {v2}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1767
    .local v5, "f":Ljavax/mail/Flags;
    :try_start_2
    new-instance v6, Lcom/sun/mail/imap/MessageLiteral;

    .line 1768
    invoke-virtual {v2}, Ljavax/mail/Message;->getSize()I

    move-result v7

    if-le v7, v0, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move v7, v0

    .line 1767
    :goto_1
    invoke-direct {v6, v2, v7}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1769
    .local v6, "mos":Lcom/sun/mail/imap/MessageLiteral;
    nop

    .line 1776
    :try_start_3
    new-instance v7, Lcom/sun/mail/imap/IMAPFolder$10;

    invoke-direct {v7, p0, v5, v4, v6}, Lcom/sun/mail/imap/IMAPFolder$10;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    goto :goto_2

    .line 1772
    .end local v6    # "mos":Lcom/sun/mail/imap/MessageLiteral;
    :catch_0
    move-exception v6

    .line 1773
    .local v6, "mrex":Ljavax/mail/MessageRemovedException;
    nop

    .line 1756
    .end local v2    # "m":Ljavax/mail/Message;
    .end local v3    # "d":Ljava/util/Date;
    .end local v4    # "dd":Ljava/util/Date;
    .end local v5    # "f":Ljavax/mail/Flags;
    .end local v6    # "mrex":Ljavax/mail/MessageRemovedException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1769
    .restart local v2    # "m":Ljavax/mail/Message;
    .restart local v3    # "d":Ljava/util/Date;
    .restart local v4    # "dd":Ljava/util/Date;
    .restart local v5    # "f":Ljavax/mail/Flags;
    :catch_1
    move-exception v6

    .line 1770
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljavax/mail/MessagingException;

    .line 1771
    const-string v8, "IOException while appending messages"

    .line 1770
    invoke-direct {v7, v8, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1746
    .end local v0    # "maxsize":I
    .end local v1    # "i":I
    .end local v2    # "m":Ljavax/mail/Message;
    .end local v3    # "d":Ljava/util/Date;
    .end local v4    # "dd":Ljava/util/Date;
    .end local v5    # "f":Ljavax/mail/Flags;
    .end local v6    # "ex":Ljava/io/IOException;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;
    .locals 9
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1806
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1813
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v0

    .line 1815
    .local v0, "maxsize":I
    array-length v1, p1

    new-array v1, v1, [Lcom/sun/mail/imap/AppendUID;

    .line 1816
    .local v1, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    .line 1844
    .end local v2    # "i":I
    monitor-exit p0

    return-object v1

    .line 1817
    .restart local v2    # "i":I
    :cond_0
    :try_start_1
    aget-object v3, p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1822
    .local v3, "m":Ljavax/mail/Message;
    :try_start_2
    new-instance v4, Lcom/sun/mail/imap/MessageLiteral;

    .line 1823
    invoke-virtual {v3}, Ljavax/mail/Message;->getSize()I

    move-result v5

    if-le v5, v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v5, v0

    .line 1822
    :goto_1
    invoke-direct {v4, v3, v5}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1824
    .local v4, "mos":Lcom/sun/mail/imap/MessageLiteral;
    nop

    .line 1831
    :try_start_3
    invoke-virtual {v3}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v5

    .line 1832
    .local v5, "d":Ljava/util/Date;
    if-nez v5, :cond_2

    .line 1833
    invoke-virtual {v3}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v6

    move-object v5, v6

    .line 1834
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_2
    move-object v6, v5

    .line 1835
    .local v6, "dd":Ljava/util/Date;
    invoke-virtual {v3}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v7

    .line 1836
    .local v7, "f":Ljavax/mail/Flags;
    new-instance v8, Lcom/sun/mail/imap/IMAPFolder$11;

    invoke-direct {v8, p0, v7, v6, v4}, Lcom/sun/mail/imap/IMAPFolder$11;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/mail/imap/AppendUID;

    .line 1842
    .local v8, "auid":Lcom/sun/mail/imap/AppendUID;
    aput-object v8, v1, v2

    goto :goto_2

    .line 1827
    .end local v4    # "mos":Lcom/sun/mail/imap/MessageLiteral;
    .end local v5    # "d":Ljava/util/Date;
    .end local v6    # "dd":Ljava/util/Date;
    .end local v7    # "f":Ljavax/mail/Flags;
    .end local v8    # "auid":Lcom/sun/mail/imap/AppendUID;
    :catch_0
    move-exception v4

    .line 1828
    .local v4, "mrex":Ljavax/mail/MessageRemovedException;
    nop

    .line 1816
    .end local v3    # "m":Ljavax/mail/Message;
    .end local v4    # "mrex":Ljavax/mail/MessageRemovedException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1824
    .restart local v3    # "m":Ljavax/mail/Message;
    :catch_1
    move-exception v4

    .line 1825
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljavax/mail/MessagingException;

    .line 1826
    const-string v6, "IOException while appending messages"

    .line 1825
    invoke-direct {v5, v6, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1805
    .end local v0    # "maxsize":I
    .end local v1    # "uids":[Lcom/sun/mail/imap/AppendUID;
    .end local v2    # "i":I
    .end local v3    # "m":Ljavax/mail/Message;
    .end local v4    # "ex":Ljava/io/IOException;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected checkClosed()V
    .locals 2

    .line 440
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 444
    return-void

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 442
    nop

    .line 441
    const-string v1, "This operation is not allowed on an open folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkExists()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 430
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    :goto_0
    return-void
.end method

.method protected checkOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 451
    nop

    .line 452
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_1

    .line 453
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 455
    nop

    .line 454
    const-string v1, "This operation is not allowed on a closed folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    new-instance v0, Ljavax/mail/FolderClosedException;

    .line 459
    nop

    .line 458
    const-string v1, "Lost folder connection to server"

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    return-void
.end method

.method protected checkRange(I)V
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 471
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 474
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v0, :cond_0

    .line 475
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    nop

    .line 480
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v0, :cond_1

    .line 493
    return-void

    .line 492
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgno":I
    throw v2

    .line 483
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local p1    # "msgno":I
    :catch_1
    move-exception v1

    .line 485
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "msgno":I
    throw v2

    .line 480
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local p1    # "msgno":I
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 472
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "message number < 1"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close(Z)V
    .locals 1
    .param p1, "expunge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1385
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    monitor-exit p0

    return-void

    .line 1384
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "expunge":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    monitor-enter p0

    .line 1892
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1893
    monitor-exit p0

    return-void

    .line 1891
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    monitor-enter p0

    .line 1917
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1917
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized create(I)Z
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "c":C
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 768
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v1

    move v0, v1

    .line 769
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    move v1, v0

    .line 770
    .local v1, "sep":C
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$6;

    invoke-direct {v2, p0, p1, v1}, Lcom/sun/mail/imap/IMAPFolder$6;-><init>(Lcom/sun/mail/imap/IMAPFolder;IC)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    .local v2, "ret":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 799
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 804
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v3

    .line 805
    .local v3, "retb":Z
    if-eqz v3, :cond_2

    .line 806
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    :cond_2
    monitor-exit p0

    return v3

    .line 765
    .end local v0    # "c":C
    .end local v1    # "sep":C
    .end local v2    # "ret":Ljava/lang/Object;
    .end local v3    # "retb":Z
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(Z)Z
    .locals 3
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 890
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 892
    if-eqz p1, :cond_1

    .line 894
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->list()[Ljavax/mail/Folder;

    move-result-object v0

    .line 895
    .local v0, "f":[Ljavax/mail/Folder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 896
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljavax/mail/Folder;->delete(Z)Z

    .line 895
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 901
    .end local v0    # "f":[Ljavax/mail/Folder;
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    :goto_1
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$8;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$8;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 910
    monitor-exit p0

    return v1

    .line 913
    :cond_2
    :try_start_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 914
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 917
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 889
    .end local v0    # "ret":Ljava/lang/Object;
    .end local p1    # "recurse":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 3
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3677
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3681
    :catch_0
    move-exception v0

    .line 3682
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 3678
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 3680
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 3684
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 3
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3705
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3711
    :catch_0
    move-exception v0

    .line 3712
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 3708
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 3710
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 3714
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    return-object v0

    .line 3706
    :catch_2
    move-exception v1

    .line 3707
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    return-object v0
.end method

.method public doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 3
    .param p1, "err"    # Ljava/lang/String;
    .param p2, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3690
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3696
    :catch_0
    move-exception v0

    .line 3697
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 3693
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 3695
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 3699
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    const/4 v0, 0x0

    return-object v0

    .line 3691
    :catch_2
    move-exception v0

    .line 3692
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-direct {v1, p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 2
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3719
    monitor-enter p0

    .line 3725
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    .line 3726
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3727
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v1

    .line 3726
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "cmd":Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    :try_start_4
    throw v1

    .line 3719
    .restart local p1    # "cmd":Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    :cond_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3733
    const/4 v0, 0x0

    .line 3736
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    move-object v0, v1

    .line 3737
    invoke-interface {p1, v0}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3739
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3737
    return-object v1

    .line 3738
    :catchall_1
    move-exception v1

    .line 3739
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3740
    throw v1

    .line 3719
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public declared-synchronized exists()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 555
    const/4 v0, 0x0

    .line 557
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v1, :cond_0

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v1, :cond_0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "lname":Ljava/lang/String;
    goto :goto_0

    .line 560
    .end local v1    # "lname":Ljava/lang/String;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 562
    .restart local v1    # "lname":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$1;

    invoke-direct {v2, p0, v1}, Lcom/sun/mail/imap/IMAPFolder$1;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v0, v2

    .line 568
    if-eqz v0, :cond_4

    .line 569
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v2

    .line 570
    .local v2, "i":I
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 571
    aget-object v3, v0, v2

    iget-char v3, v3, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v3, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 572
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 573
    .local v3, "len":I
    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-lez v3, :cond_1

    .line 574
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v6, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-ne v4, v6, :cond_1

    .line 575
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 577
    :cond_1
    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 578
    aget-object v4, v0, v2

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v4, :cond_2

    .line 579
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 580
    :cond_2
    aget-object v4, v0, v2

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 581
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 582
    :cond_3
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 583
    aget-object v4, v0, v2

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 584
    .end local v2    # "i":I
    .end local v3    # "len":I
    goto :goto_1

    .line 585
    :cond_4
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 586
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 589
    :goto_1
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 554
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v1    # "lname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge()[Ljavax/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2151
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2151
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 10
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2166
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2168
    if-eqz p1, :cond_0

    .line 2170
    new-instance v0, Ljavax/mail/FetchProfile;

    invoke-direct {v0}, Ljavax/mail/FetchProfile;-><init>()V

    .line 2171
    .local v0, "fp":Ljavax/mail/FetchProfile;
    sget-object v1, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 2172
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 2176
    .end local v0    # "fp":Ljavax/mail/FetchProfile;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2177
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2179
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 2180
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz p1, :cond_1

    .line 2181
    invoke-static {p1}, Lcom/sun/mail/imap/Utility;->toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V

    goto :goto_0

    .line 2183
    :cond_1
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->expunge()V
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2184
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    nop

    .line 2197
    :goto_0
    :try_start_3
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 2201
    if-eqz p1, :cond_2

    .line 2202
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/MessageCache;->removeExpungedMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .local v2, "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    goto :goto_1

    .line 2204
    .end local v2    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v2}, Lcom/sun/mail/imap/MessageCache;->removeExpungedMessages()[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2205
    .restart local v2    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :goto_1
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v3, :cond_5

    .line 2206
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-lt v3, v4, :cond_3

    goto :goto_3

    .line 2207
    :cond_3
    aget-object v4, v2, v3

    .line 2209
    .local v4, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v5

    .line 2210
    .local v5, "uid":J
    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_4

    .line 2211
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v5    # "uid":J
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2216
    .end local v3    # "i":I
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v3}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 2176
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2220
    :try_start_4
    array-length v0, v2

    if-lez v0, :cond_6

    .line 2221
    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2222
    :cond_6
    monitor-exit p0

    return-object v2

    .line 2196
    .end local v2    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 2193
    :catch_0
    move-exception v2

    .line 2195
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    throw v3

    .line 2191
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    :catch_1
    move-exception v2

    .line 2192
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v3, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    throw v3

    .line 2184
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    :catch_2
    move-exception v2

    .line 2186
    .local v2, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    .line 2187
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 2188
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot expunge READ_ONLY folder: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2187
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    throw v3

    .line 2190
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    :cond_7
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2197
    .end local v2    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    :goto_4
    :try_start_6
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 2198
    nop

    .end local p1    # "msgs":[Ljavax/mail/Message;
    throw v2

    .line 2176
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2165
    .end local p1    # "msgs":[Ljavax/mail/Message;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 22
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    .line 1132
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v0

    .line 1135
    .local v3, "command":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .line 1136
    .local v0, "first":Z
    const/4 v4, 0x0

    .line 1138
    .local v4, "allHeaders":Z
    sget-object v5, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getEnvelopeCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1140
    const/4 v0, 0x0

    .line 1142
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    sget-object v5, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1143
    if-eqz v0, :cond_1

    const-string v5, "FLAGS"

    goto :goto_0

    :cond_1
    const-string v5, " FLAGS"

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1144
    const/4 v0, 0x0

    .line 1146
    :cond_2
    sget-object v5, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1147
    if-eqz v0, :cond_3

    const-string v5, "BODYSTRUCTURE"

    goto :goto_1

    :cond_3
    const-string v5, " BODYSTRUCTURE"

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1148
    const/4 v0, 0x0

    .line 1150
    :cond_4
    sget-object v5, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1151
    if-eqz v0, :cond_5

    const-string v5, "UID"

    goto :goto_2

    :cond_5
    const-string v5, " UID"

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1152
    const/4 v0, 0x0

    .line 1154
    :cond_6
    sget-object v5, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1155
    const/4 v4, 0x1

    .line 1156
    iget-object v5, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1157
    if-eqz v0, :cond_7

    .line 1158
    const-string v5, "BODY.PEEK[HEADER]"

    goto :goto_3

    :cond_7
    const-string v5, " BODY.PEEK[HEADER]"

    .line 1157
    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1158
    goto :goto_5

    .line 1160
    :cond_8
    if-eqz v0, :cond_9

    const-string v5, "RFC822.HEADER"

    goto :goto_4

    :cond_9
    const-string v5, " RFC822.HEADER"

    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1161
    :goto_5
    const/4 v0, 0x0

    .line 1163
    :cond_a
    sget-object v5, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->MESSAGE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1164
    const/4 v4, 0x1

    .line 1165
    iget-object v5, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1166
    if-eqz v0, :cond_b

    const-string v5, "BODY.PEEK[]"

    goto :goto_6

    :cond_b
    const-string v5, " BODY.PEEK[]"

    :goto_6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 1168
    :cond_c
    if-eqz v0, :cond_d

    const-string v5, "RFC822"

    goto :goto_7

    :cond_d
    const-string v5, " RFC822"

    :goto_7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1169
    :goto_8
    const/4 v0, 0x0

    .line 1171
    :cond_e
    sget-object v5, Ljavax/mail/FetchProfile$Item;->SIZE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1172
    sget-object v5, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_9

    :cond_f
    move v5, v0

    goto :goto_b

    .line 1173
    :cond_10
    :goto_9
    if-eqz v0, :cond_11

    const-string v5, "RFC822.SIZE"

    goto :goto_a

    :cond_11
    const-string v5, " RFC822.SIZE"

    :goto_a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1174
    const/4 v0, 0x0

    move v5, v0

    .line 1178
    .end local v0    # "first":Z
    .local v5, "first":Z
    :goto_b
    const/4 v0, 0x0

    .line 1179
    .local v0, "hdrs":[Ljava/lang/String;
    if-nez v4, :cond_14

    .line 1180
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1181
    array-length v6, v0

    if-lez v6, :cond_13

    .line 1182
    if-nez v5, :cond_12

    .line 1183
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1184
    :cond_12
    invoke-direct {v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->createHeaderCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    :cond_13
    move-object v6, v0

    goto :goto_c

    .line 1179
    :cond_14
    move-object v6, v0

    .line 1191
    .end local v0    # "hdrs":[Ljava/lang/String;
    .local v6, "hdrs":[Ljava/lang/String;
    :goto_c
    iget-object v0, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getFetchItems()[Lcom/sun/mail/imap/protocol/FetchItem;

    move-result-object v0

    move-object v7, v0

    .line 1192
    .local v7, "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v8, v7

    if-lt v0, v8, :cond_21

    .line 1201
    .end local v0    # "i":I
    new-instance v0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;

    invoke-direct {v0, v2, v7}, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;-><init>(Ljavax/mail/FetchProfile;[Lcom/sun/mail/imap/protocol/FetchItem;)V

    .line 1200
    move-object v8, v0

    .line 1204
    .local v8, "condition":Lcom/sun/mail/imap/Utility$Condition;
    iget-object v9, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1208
    move-object/from16 v10, p1

    :try_start_1
    invoke-static {v10, v8}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v0

    .line 1210
    .local v11, "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v11, :cond_15

    .line 1212
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 1204
    .end local v11    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    :catchall_0
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v19, v8

    goto/16 :goto_14

    .line 1214
    .restart local v11    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_15
    const/4 v12, 0x0

    .line 1215
    .local v12, "r":[Lcom/sun/mail/iap/Response;
    :try_start_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v0

    .line 1218
    .local v13, "v":Ljava/util/Vector;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v11, v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v12, v0

    .line 1219
    goto :goto_e

    :catch_0
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v19, v8

    goto/16 :goto_13

    .line 1223
    :catch_1
    move-exception v0

    .line 1224
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v14, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v3    # "command":Ljava/lang/StringBuffer;
    .end local v4    # "allHeaders":Z
    .end local v5    # "first":Z
    .end local v6    # "hdrs":[Ljava/lang/String;
    .end local v7    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v8    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "fp":Ljavax/mail/FetchProfile;
    throw v14

    .line 1221
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v3    # "command":Ljava/lang/StringBuffer;
    .restart local v4    # "allHeaders":Z
    .restart local v5    # "first":Z
    .restart local v6    # "hdrs":[Ljava/lang/String;
    .restart local v7    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v8    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "fp":Ljavax/mail/FetchProfile;
    :catch_2
    move-exception v0

    .line 1227
    :goto_e
    if-nez v12, :cond_16

    .line 1228
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    .line 1230
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    :try_start_7
    array-length v14, v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-lt v0, v14, :cond_18

    .line 1267
    .end local v0    # "i":I
    :try_start_8
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1268
    .local v0, "size":I
    if-eqz v0, :cond_17

    .line 1269
    new-array v14, v0, [Lcom/sun/mail/iap/Response;

    .line 1270
    .local v14, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {v13, v14}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1271
    invoke-virtual {v1, v14}, Lcom/sun/mail/imap/IMAPFolder;->handleResponses([Lcom/sun/mail/iap/Response;)V

    .line 1204
    .end local v0    # "size":I
    .end local v11    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v12    # "r":[Lcom/sun/mail/iap/Response;
    .end local v13    # "v":Ljava/util/Vector;
    .end local v14    # "responses":[Lcom/sun/mail/iap/Response;
    :cond_17
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1275
    monitor-exit p0

    return-void

    .line 1231
    .local v0, "i":I
    .restart local v11    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v12    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v13    # "v":Ljava/util/Vector;
    :cond_18
    :try_start_9
    aget-object v14, v12, v0

    if-nez v14, :cond_19

    .line 1232
    move/from16 v18, v5

    move-object/from16 v19, v8

    goto :goto_11

    .line 1233
    :cond_19
    aget-object v14, v12, v0

    instance-of v14, v14, Lcom/sun/mail/imap/protocol/FetchResponse;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez v14, :cond_1a

    .line 1234
    :try_start_a
    aget-object v14, v12, v0

    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1235
    move/from16 v18, v5

    move-object/from16 v19, v8

    goto :goto_11

    .line 1239
    :cond_1a
    :try_start_b
    aget-object v14, v12, v0

    check-cast v14, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1241
    .local v14, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v14}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v15

    .line 1243
    .local v15, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v14}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move/from16 v17, v16

    .line 1244
    .local v17, "count":I
    const/16 v16, 0x0

    .line 1246
    .local v16, "unsolicitedFlags":Z
    const/16 v18, 0x0

    move/from16 v21, v18

    move/from16 v18, v5

    move/from16 v5, v21

    .local v5, "j":I
    .local v18, "first":Z
    :goto_10
    move-object/from16 v19, v8

    move/from16 v8, v17

    .end local v17    # "count":I
    .local v8, "count":I
    .local v19, "condition":Lcom/sun/mail/imap/Utility$Condition;
    if-lt v5, v8, :cond_1d

    .line 1257
    .end local v5    # "j":I
    if-eqz v15, :cond_1b

    .line 1258
    :try_start_c
    invoke-virtual {v14}, Lcom/sun/mail/imap/protocol/FetchResponse;->getExtensionItems()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/sun/mail/imap/IMAPMessage;->handleExtensionFetchItems(Ljava/util/Map;)V

    .line 1262
    :cond_1b
    if-eqz v16, :cond_1c

    .line 1263
    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1230
    .end local v8    # "count":I
    .end local v14    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v15    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v16    # "unsolicitedFlags":Z
    :cond_1c
    :goto_11
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v18

    move-object/from16 v8, v19

    goto :goto_f

    .line 1247
    .restart local v5    # "j":I
    .restart local v8    # "count":I
    .restart local v14    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .restart local v15    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v16    # "unsolicitedFlags":Z
    :cond_1d
    invoke-virtual {v14, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v17

    move-object/from16 v20, v17

    .line 1249
    .local v20, "item":Lcom/sun/mail/imap/protocol/Item;
    move/from16 v17, v0

    move-object/from16 v0, v20

    move/from16 v20, v8

    .end local v8    # "count":I
    .local v0, "item":Lcom/sun/mail/imap/protocol/Item;
    .local v17, "i":I
    .local v20, "count":I
    instance-of v8, v0, Ljavax/mail/Flags;

    if-eqz v8, :cond_1f

    .line 1250
    sget-object v8, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v8}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 1251
    if-nez v15, :cond_1f

    .line 1253
    :cond_1e
    const/4 v8, 0x1

    .line 1254
    .end local v16    # "unsolicitedFlags":Z
    .local v8, "unsolicitedFlags":Z
    move/from16 v16, v8

    goto :goto_12

    .end local v8    # "unsolicitedFlags":Z
    .restart local v16    # "unsolicitedFlags":Z
    :cond_1f
    if-eqz v15, :cond_20

    .line 1255
    invoke-virtual {v15, v0, v6, v4}, Lcom/sun/mail/imap/IMAPMessage;->handleFetchItem(Lcom/sun/mail/imap/protocol/Item;[Ljava/lang/String;Z)Z

    .line 1246
    .end local v0    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_20
    :goto_12
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v17

    move-object/from16 v8, v19

    move/from16 v17, v20

    goto :goto_10

    .line 1219
    .end local v14    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v15    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v16    # "unsolicitedFlags":Z
    .end local v17    # "i":I
    .end local v18    # "first":Z
    .end local v19    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .end local v20    # "count":I
    .local v5, "first":Z
    .local v8, "condition":Lcom/sun/mail/imap/Utility$Condition;
    :catch_3
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v19, v8

    .line 1220
    .end local v5    # "first":Z
    .end local v8    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v18    # "first":Z
    .restart local v19    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    :goto_13
    new-instance v5, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v1, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v3    # "command":Ljava/lang/StringBuffer;
    .end local v4    # "allHeaders":Z
    .end local v6    # "hdrs":[Ljava/lang/String;
    .end local v7    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v18    # "first":Z
    .end local v19    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "fp":Ljavax/mail/FetchProfile;
    throw v5

    .line 1204
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v11    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v12    # "r":[Lcom/sun/mail/iap/Response;
    .end local v13    # "v":Ljava/util/Vector;
    .restart local v3    # "command":Ljava/lang/StringBuffer;
    .restart local v4    # "allHeaders":Z
    .restart local v5    # "first":Z
    .restart local v6    # "hdrs":[Ljava/lang/String;
    .restart local v7    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v8    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "fp":Ljavax/mail/FetchProfile;
    :catchall_1
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v19, v8

    .end local v5    # "first":Z
    .end local v8    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .restart local v18    # "first":Z
    .restart local v19    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    :goto_14
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_14

    .line 1193
    .end local v18    # "first":Z
    .end local v19    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .local v0, "i":I
    .restart local v5    # "first":Z
    :cond_21
    move-object/from16 v10, p1

    move/from16 v18, v5

    .end local v5    # "first":Z
    .restart local v18    # "first":Z
    aget-object v5, v7, v0

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchItem;->getFetchProfileItem()Ljavax/mail/FetchProfile$Item;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1194
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_22

    .line 1195
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1196
    :cond_22
    aget-object v5, v7, v0

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1192
    :cond_23
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v18

    goto/16 :goto_d

    .line 1131
    .end local v0    # "i":I
    .end local v3    # "command":Ljava/lang/StringBuffer;
    .end local v4    # "allHeaders":Z
    .end local v6    # "hdrs":[Ljava/lang/String;
    .end local v7    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v18    # "first":Z
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "fp":Ljavax/mail/FetchProfile;
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1394
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    monitor-exit p0

    return-void

    .line 1393
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
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

    .line 2781
    nop

    .line 2782
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$14;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$14;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2781
    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

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

    monitor-enter p0

    .line 2913
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 2914
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2915
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    .line 2916
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 2912
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 3240
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1679
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1680
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1682
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 1687
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    :try_start_1
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    .line 1688
    .local v0, "f":Ljavax/mail/Flags;
    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1690
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1691
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    new-instance v3, Ljavax/mail/search/FlagTerm;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 1692
    .local v2, "matches":[I
    array-length v3, v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    .line 1690
    .end local v2    # "matches":[I
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "f":Ljavax/mail/Flags;
    :try_start_5
    throw v2
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1696
    .restart local v0    # "f":Ljavax/mail/Flags;
    :catch_0
    move-exception v1

    .line 1698
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1694
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 1695
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1678
    .end local v0    # "f":Ljavax/mail/Flags;
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getEnvelopeCommand()Ljava/lang/String;
    .locals 1

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

    monitor-enter p0

    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Cannot contain subfolders"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    :goto_0
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

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 877
    .end local v0    # "c":C
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHighestModSeq()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2662
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 2663
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 2665
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    const/4 v0, 0x0

    .line 2666
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v1, 0x0

    .line 2669
    .local v1, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v0, v2

    .line 2670
    const-string v2, "CONDSTORE"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2672
    const-string v2, "HIGHESTMODSEQ"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2673
    .local v2, "item":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v3
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 2674
    .end local v2    # "item":[Ljava/lang/String;
    nop

    .line 2683
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 2671
    :cond_1
    :try_start_3
    new-instance v2, Lcom/sun/mail/iap/BadCommandException;

    const-string v3, "CONDSTORE not supported"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v2
    :try_end_3
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2682
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 2680
    :catch_0
    move-exception v2

    .line 2681
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3

    .line 2677
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_1
    move-exception v2

    .line 2679
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2683
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2684
    :goto_0
    nop

    .line 2686
    iget-wide v2, v1, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-wide v2

    .line 2674
    :catch_2
    move-exception v2

    .line 2676
    .local v2, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_6
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Cannot obtain HIGHESTMODSEQ"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2683
    .end local v2    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_1
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2684
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2661
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .locals 1
    .param p1, "msgnum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1736
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1737
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->checkRange(I)V

    .line 1739
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1735
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "msgnum":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 3
    .param p1, "seqnum"    # I

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

    const-string v2, " outside range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v2}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3830
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 3832
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 3834
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->getMessageBySeqnum(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getMessageByUID(J)Ljavax/mail/Message;
    .locals 4
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2468
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2470
    const/4 v0, 0x0

    .line 2473
    .local v0, "m":Lcom/sun/mail/imap/IMAPMessage;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2474
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2476
    .local v2, "l":Ljava/lang/Long;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v3, :cond_0

    .line 2478
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    move-object v0, v3

    .line 2479
    if-eqz v0, :cond_1

    .line 2480
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2482
    :cond_0
    :try_start_3
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2486
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumber(J)V

    .line 2488
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v3, :cond_2

    .line 2490
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    move-object v0, v3

    .line 2491
    if-eqz v0, :cond_2

    .line 2492
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2473
    .end local v2    # "l":Ljava/lang/Long;
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2501
    monitor-exit p0

    return-object v0

    .line 2473
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local p1    # "uid":J
    :try_start_6
    throw v2
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local p1    # "uid":J
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2497
    :catch_0
    move-exception v1

    .line 2498
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 2495
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 2496
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2467
    .end local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local p1    # "uid":J
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1540
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1541
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1545
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1546
    .local v0, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v1, v0, Lcom/sun/mail/imap/protocol/Status;->total:I
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return v1

    .line 1565
    .end local v0    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_0
    move-exception v0

    .line 1566
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1563
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 1564
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1547
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v0

    .line 1550
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v1, 0x0

    .line 1553
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v1, v2

    .line 1554
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1555
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1556
    iget v3, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I
    :try_end_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1561
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1556
    monitor-exit p0

    return v3

    .line 1560
    .end local v2    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1557
    :catch_3
    move-exception v2

    .line 1559
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1561
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_0
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1562
    throw v2

    .line 1571
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1574
    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1575
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return v1

    .line 1571
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 1578
    :catch_4
    move-exception v1

    .line 1579
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_9
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1576
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_5
    move-exception v1

    .line 1577
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1571
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :goto_1
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1539
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;
    .locals 7
    .param p1, "seqnums"    # [I

    .line 3848
    array-length v0, p1

    new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;

    .line 3849
    .local v0, "msgs":[Lcom/sun/mail/imap/IMAPMessage;
    const/4 v1, 0x0

    .line 3851
    .local v1, "nulls":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_3

    .line 3856
    .end local v2    # "i":I
    if-lez v1, :cond_2

    .line 3857
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [Lcom/sun/mail/imap/IMAPMessage;

    .line 3858
    .local v2, "nmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v0

    if-lt v3, v5, :cond_0

    .line 3862
    .end local v3    # "i":I
    .end local v4    # "j":I
    move-object v0, v2

    goto :goto_2

    .line 3859
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_0
    aget-object v5, v0, v3

    if-eqz v5, :cond_1

    .line 3860
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aget-object v6, v0, v3

    aput-object v6, v2, v4

    move v4, v5

    .line 3858
    .end local v5    # "j":I
    .restart local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3864
    .end local v2    # "nmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_2
    :goto_2
    return-object v0

    .line 3852
    .local v2, "i":I
    :cond_3
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v3

    aput-object v3, v0, v2

    .line 3853
    aget-object v3, v0, v2

    if-nez v3, :cond_4

    .line 3854
    add-int/lit8 v1, v1, 0x1

    .line 3851
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized getMessagesByUID(JJ)[Ljavax/mail/Message;
    .locals 7
    .param p1, "start"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2511
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2516
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2517
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 2518
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2521
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers(JJ)[J

    move-result-object v1

    .line 2523
    .local v1, "ua":[J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2525
    .local v2, "ma":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Message;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_1

    .line 2530
    .end local v3    # "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Message;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljavax/mail/Message;

    move-object v1, v3

    .line 2516
    .end local v2    # "ma":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Message;>;"
    .local v1, "msgs":[Ljavax/mail/Message;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2538
    monitor-exit p0

    return-object v1

    .line 2526
    .local v1, "ua":[J
    .restart local v2    # "ma":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Message;>;"
    .restart local v3    # "i":I
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Message;

    .line 2527
    .local v4, "m":Ljavax/mail/Message;
    if-eqz v4, :cond_2

    .line 2528
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2525
    .end local v4    # "m":Ljavax/mail/Message;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2516
    .end local v1    # "ua":[J
    .end local v2    # "ma":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Message;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v1

    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p1    # "start":J
    .end local p3    # "end":J
    :try_start_5
    throw v1
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "start":J
    .restart local p3    # "end":J
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 2534
    :catch_0
    move-exception v0

    .line 2535
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2532
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2533
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2510
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local p1    # "start":J
    .end local p3    # "end":J
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesByUID([J)[Ljavax/mail/Message;
    .locals 7
    .param p1, "uids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2550
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2553
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2554
    move-object v1, p1

    .line 2555
    .local v1, "unavailUids":[J
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v2, :cond_3

    .line 2556
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 2558
    .local v2, "v":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-lt v3, v4, :cond_1

    .line 2564
    .end local v3    # "i":I
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 2565
    .local v3, "vsize":I
    new-array v4, v3, [J

    move-object v1, v4

    .line 2566
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v3, :cond_0

    .line 2568
    .end local v2    # "v":Ljava/util/Vector;
    .end local v3    # "vsize":I
    .end local v4    # "i":I
    goto :goto_2

    .line 2567
    .restart local v2    # "v":Ljava/util/Vector;
    .restart local v3    # "vsize":I
    .restart local v4    # "i":I
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v1, v4

    .line 2566
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2559
    .end local v4    # "i":I
    .local v3, "i":I
    :cond_1
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v5, p1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v6, v5

    .local v6, "l":Ljava/lang/Long;
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2561
    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2558
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2569
    .end local v2    # "v":Ljava/util/Vector;
    .end local v3    # "i":I
    .end local v6    # "l":Ljava/lang/Long;
    :cond_3
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2571
    :goto_2
    array-length v2, v1

    if-lez v2, :cond_4

    .line 2573
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers([J)V

    .line 2577
    :cond_4
    array-length v2, p1

    new-array v2, v2, [Ljavax/mail/Message;

    .line 2578
    .local v2, "msgs":[Ljavax/mail/Message;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v4, p1

    if-lt v3, v4, :cond_5

    .line 2580
    .end local v3    # "i":I
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 2579
    .restart local v3    # "i":I
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v5, p1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Message;

    aput-object v4, v2, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2578
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2553
    .end local v1    # "unavailUids":[J
    .end local v2    # "msgs":[Ljavax/mail/Message;
    .end local v3    # "i":I
    :catchall_0
    move-exception v1

    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p1    # "uids":[J
    :try_start_5
    throw v1
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "uids":[J
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 2584
    :catch_0
    move-exception v0

    .line 2585
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2582
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2583
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2549
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local p1    # "uids":[J
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesByUIDChangedSince(JJJ)[Ljavax/mail/Message;
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "modseq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2706
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2709
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2710
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 2711
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const-string v2, "CONDSTORE"

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2715
    move-object v2, v1

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidfetchChangedSince(JJJ)[I

    move-result-object v2

    .line 2716
    .local v2, "nums":[I
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 2712
    .end local v2    # "nums":[I
    :cond_0
    :try_start_3
    new-instance v2, Lcom/sun/mail/iap/BadCommandException;

    const-string v3, "CONDSTORE not supported"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    .end local p1    # "start":J
    .end local p3    # "end":J
    .end local p5    # "modseq":J
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2709
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "start":J
    .restart local p3    # "end":J
    .restart local p5    # "modseq":J
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p1    # "start":J
    .end local p3    # "end":J
    .end local p5    # "modseq":J
    :try_start_5
    throw v1
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "start":J
    .restart local p3    # "end":J
    .restart local p5    # "modseq":J
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 2720
    :catch_0
    move-exception v0

    .line 2721
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2718
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2719
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2705
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local p1    # "start":J
    .end local p3    # "end":J
    .end local p5    # "modseq":J
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 520
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

    .line 525
    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_0
    move-exception v0

    .line 527
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNewMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1589
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1590
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1594
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1595
    .local v0, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v1, v0, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return v1

    .line 1614
    .end local v0    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_0
    move-exception v0

    .line 1615
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1612
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 1613
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1596
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v0

    .line 1599
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v1, 0x0

    .line 1602
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v1, v2

    .line 1603
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1604
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1605
    iget v3, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I
    :try_end_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1610
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1605
    monitor-exit p0

    return v3

    .line 1609
    .end local v2    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1606
    :catch_3
    move-exception v2

    .line 1608
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1610
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_0
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1611
    throw v2

    .line 1620
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1623
    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1624
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return v1

    .line 1620
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 1627
    :catch_4
    move-exception v1

    .line 1628
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_9
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1625
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_5
    move-exception v1

    .line 1626
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1620
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :goto_1
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1588
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParent()Ljavax/mail/Folder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 541
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 543
    .local v0, "c":C
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    move v2, v1

    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 544
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    .line 545
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 544
    invoke-virtual {v1, v3, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 547
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sun/mail/imap/DefaultFolder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v1, v3}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 540
    .end local v0    # "c":C
    .end local v2    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPermanentFlags()Ljavax/mail/Flags;
    .locals 1

    monitor-enter p0

    .line 1531
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1532
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1533
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1530
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
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

    .line 3559
    nop

    .line 3560
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 3564
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    .line 3566
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object v0

    .line 3565
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQuota()[Ljavax/mail/Quota;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2743
    nop

    .line 2744
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$12;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$12;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2743
    const-string v1, "QUOTA not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/Quota;

    return-object v0
.end method

.method public declared-synchronized getSeparator()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 678
    :try_start_0
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    .line 679
    const/4 v0, 0x0

    .line 681
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$3;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$3;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v0, v1

    .line 694
    if-eqz v0, :cond_0

    .line 695
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-char v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    goto :goto_0

    .line 697
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    const/16 v1, 0x2f

    iput-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 699
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSortedMessages([Lcom/sun/mail/imap/SortTerm;)[Ljavax/mail/Message;
    .locals 1
    .param p1, "term"    # [Lcom/sun/mail/imap/SortTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2326
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->getSortedMessages([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2326
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "term":[Lcom/sun/mail/imap/SortTerm;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSortedMessages([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 4
    .param p1, "term"    # [Lcom/sun/mail/imap/SortTerm;
    .param p2, "sterm"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2346
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2349
    const/4 v0, 0x0

    .line 2351
    .local v0, "matchMsgs":[Ljavax/mail/Message;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2352
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->sort([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 2353
    .local v2, "matches":[I
    if-eqz v2, :cond_0

    .line 2354
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v3

    move-object v0, v3

    .line 2351
    .end local v2    # "matches":[I
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2356
    monitor-exit p0

    return-object v0

    .line 2351
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p1    # "term":[Lcom/sun/mail/imap/SortTerm;
    .end local p2    # "sterm":Ljavax/mail/search/SearchTerm;
    :try_start_4
    throw v2
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "term":[Lcom/sun/mail/imap/SortTerm;
    .restart local p2    # "sterm":Ljavax/mail/search/SearchTerm;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2366
    .end local v0    # "matchMsgs":[Ljavax/mail/Message;
    :catch_0
    move-exception v0

    .line 2368
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2364
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2365
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 2361
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v0

    .line 2363
    .local v0, "sex":Ljavax/mail/search/SearchException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljavax/mail/search/SearchException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2358
    .end local v0    # "sex":Ljavax/mail/search/SearchException;
    :catch_3
    move-exception v0

    .line 2360
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2345
    .end local v0    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .end local p1    # "term":[Lcom/sun/mail/imap/SortTerm;
    .end local p2    # "sterm":Ljavax/mail/search/SearchTerm;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getStatusItem(Ljava/lang/String;)J
    .locals 6
    .param p1, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3281
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 3282
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 3284
    const/4 v0, 0x0

    .line 3285
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v3, 0x0

    .line 3287
    .local v3, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    move-object v0, v4

    .line 3288
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 3289
    .local v4, "items":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    move-object v3, v5

    .line 3290
    invoke-virtual {v3, p1}, Lcom/sun/mail/imap/protocol/Status;->getItem(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3301
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3290
    return-wide v1

    .line 3300
    .end local v4    # "items":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 3298
    :catch_0
    move-exception v1

    .line 3299
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_1
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local p1    # "item":Ljava/lang/String;
    throw v2

    .line 3296
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "status":Lcom/sun/mail/imap/protocol/Status;
    .restart local p1    # "item":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3297
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/StoreClosedException;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local p1    # "item":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3301
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "status":Lcom/sun/mail/imap/protocol/Status;
    .restart local p1    # "item":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3302
    throw v1

    .line 3291
    :catch_2
    move-exception v4

    .line 3301
    .local v4, "bex":Lcom/sun/mail/iap/BadCommandException;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3295
    return-wide v1

    .line 3304
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local v4    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :cond_0
    return-wide v1
.end method

.method protected declared-synchronized getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 3522
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "getStoreProtocol() borrowing a connection"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 3523
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3521
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
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

    monitor-enter p0

    .line 706
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    .line 710
    goto :goto_0

    .line 711
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 713
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)J
    .locals 8
    .param p1, "message"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2594
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 2598
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2600
    instance-of v0, p1, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v0, :cond_3

    .line 2602
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/IMAPMessage;

    .line 2605
    .local v0, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v3, v1

    .local v3, "uid":J
    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_0

    .line 2606
    monitor-exit p0

    return-wide v3

    .line 2608
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2610
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 2611
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 2612
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchUID(I)Lcom/sun/mail/imap/protocol/UID;

    move-result-object v5

    .line 2614
    .local v5, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v5, :cond_2

    .line 2615
    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J

    move-wide v3, v6

    .line 2616
    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 2619
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v6, :cond_1

    .line 2620
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2621
    :cond_1
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2608
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "u":Lcom/sun/mail/imap/protocol/UID;
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2630
    monitor-exit p0

    return-wide v3

    .line 2608
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2625
    :catch_0
    move-exception v2

    .line 2626
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v3    # "uid":J
    .end local p1    # "message":Ljavax/mail/Message;
    throw v5

    .line 2623
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v3    # "uid":J
    .restart local p1    # "message":Ljavax/mail/Message;
    :catch_1
    move-exception v2

    .line 2624
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v5, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v3    # "uid":J
    .end local p1    # "message":Ljavax/mail/Message;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2608
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v3    # "uid":J
    .restart local p1    # "message":Ljavax/mail/Message;
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2601
    .end local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v3    # "uid":J
    :cond_3
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "message is not an IMAPMessage"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2595
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2596
    const-string v1, "Message does not belong to this folder"

    .line 2595
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2593
    .end local p1    # "message":Ljavax/mail/Message;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUIDNext()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2437
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 2438
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 2440
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    const/4 v0, 0x0

    .line 2441
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v1, 0x0

    .line 2444
    .local v1, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v0, v2

    .line 2445
    const-string v2, "UIDNEXT"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2446
    .local v2, "item":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v3
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 2447
    .end local v2    # "item":[Ljava/lang/String;
    nop

    .line 2456
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 2455
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 2453
    :catch_0
    move-exception v2

    .line 2454
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3

    .line 2450
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_1
    move-exception v2

    .line 2452
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2456
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2457
    :goto_0
    nop

    .line 2459
    iget-wide v2, v1, Lcom/sun/mail/imap/protocol/Status;->uidnext:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-wide v2

    .line 2447
    :catch_2
    move-exception v2

    .line 2449
    .local v2, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Cannot obtain UIDNext"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2456
    .end local v2    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_1
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2457
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2436
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIDValidity()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2392
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 2393
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 2395
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    const/4 v0, 0x0

    .line 2396
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v1, 0x0

    .line 2399
    .local v1, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v0, v2

    .line 2400
    const-string v2, "UIDVALIDITY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2401
    .local v2, "item":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v3
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 2402
    .end local v2    # "item":[Ljava/lang/String;
    nop

    .line 2411
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 2410
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 2408
    :catch_0
    move-exception v2

    .line 2409
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3

    .line 2405
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_1
    move-exception v2

    .line 2407
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2411
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2412
    :goto_0
    nop

    .line 2414
    iget-wide v2, v1, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-wide v2

    .line 2402
    :catch_2
    move-exception v2

    .line 2404
    .local v2, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Cannot obtain UIDValidity"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2411
    .end local v2    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_1
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2412
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2391
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1638
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1639
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1643
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1644
    .local v0, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v1, v0, Lcom/sun/mail/imap/protocol/Status;->unseen:I
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v1

    .line 1652
    .end local v0    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1650
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 1651
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1645
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v0

    .line 1649
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 1659
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :cond_0
    :try_start_3
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    .line 1660
    .local v0, "f":Ljavax/mail/Flags;
    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1662
    :try_start_4
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1663
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    new-instance v3, Ljavax/mail/search/FlagTerm;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 1664
    .local v2, "matches":[I
    array-length v3, v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v3

    .line 1662
    .end local v2    # "matches":[I
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "f":Ljavax/mail/Flags;
    :try_start_7
    throw v2
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1668
    .restart local v0    # "f":Ljavax/mail/Flags;
    :catch_3
    move-exception v1

    .line 1670
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_8
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1666
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_4
    move-exception v1

    .line 1667
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1637
    .end local v0    # "f":Ljavax/mail/Flags;
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method handleIdle(Z)Z
    .locals 9
    .param p1, "once"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3080
    const/4 v0, 0x0

    .line 3082
    .local v0, "r":Lcom/sun/mail/iap/Response;
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 3084
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3085
    :try_start_1
    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-ne v2, v4, :cond_3

    .line 3093
    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 3094
    .local v2, "ex":Ljava/lang/Exception;
    instance-of v5, v2, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_3

    .line 3095
    move-object v5, v2

    check-cast v5, Ljava/io/InterruptedIOException;

    .line 3096
    iget v5, v5, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 3095
    if-nez v5, :cond_3

    .line 3097
    instance-of v5, v2, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_1

    .line 3098
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 3099
    const-string v5, "handleIdle: ignoring socket timeout"

    .line 3098
    invoke-virtual {v3, v5}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3100
    const/4 v0, 0x0

    .line 3101
    goto :goto_0

    .line 3102
    :cond_1
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "handleIdle: interrupting IDLE"

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3103
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3104
    .local v5, "im":Lcom/sun/mail/imap/IdleManager;
    if-eqz v5, :cond_2

    .line 3105
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 3106
    const-string v6, "handleIdle: request IdleManager to abort"

    .line 3105
    invoke-virtual {v3, v6}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {v5, p0}, Lcom/sun/mail/imap/IdleManager;->requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 3108
    goto :goto_0

    .line 3109
    :cond_2
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "handleIdle: abort IDLE"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3110
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3111
    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3115
    .end local v5    # "im":Lcom/sun/mail/imap/IdleManager;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 3118
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x1

    .line 3120
    .local v2, "done":Z
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v7, :cond_7

    .line 3121
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_4

    goto :goto_3

    .line 3123
    :cond_4
    const/4 v2, 0x0

    .line 3124
    nop

    .line 3125
    if-eqz v2, :cond_5

    .line 3126
    :try_start_3
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v8, "handleIdle: set to RUNNING"

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3127
    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3128
    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3129
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 3132
    :cond_5
    if-eqz p1, :cond_6

    .line 3133
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v5, v4, :cond_6

    .line 3135
    :try_start_4
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 3136
    :catch_0
    move-exception v5

    :goto_1
    nop

    .line 3141
    :try_start_5
    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3084
    .end local v2    # "done":Z
    :cond_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3152
    :goto_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasResponse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3153
    return v4

    .line 3125
    .restart local v2    # "done":Z
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 3126
    :try_start_6
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "handleIdle: set to RUNNING"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3127
    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3128
    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3129
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_8
    monitor-exit v1

    .line 3122
    return v6

    .line 3124
    :catchall_0
    move-exception v3

    .line 3125
    if-eqz v2, :cond_9

    .line 3126
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "handleIdle: set to RUNNING"

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3127
    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3128
    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3129
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 3131
    :cond_9
    nop

    .end local v0    # "r":Lcom/sun/mail/iap/Response;
    .end local p1    # "once":Z
    throw v3

    .line 3084
    .end local v2    # "done":Z
    .restart local v0    # "r":Lcom/sun/mail/iap/Response;
    .restart local p1    # "once":Z
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "r":Lcom/sun/mail/iap/Response;
    .end local p1    # "once":Z
    :try_start_7
    throw v2
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_1

    .line 3148
    .restart local v0    # "r":Lcom/sun/mail/iap/Response;
    .restart local p1    # "once":Z
    :catch_1
    move-exception v1

    .line 3149
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 3145
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_2
    move-exception v1

    .line 3147
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .locals 12
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 3320
    nop

    .line 3325
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3326
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 3332
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3333
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_2

    .line 3334
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 3335
    :cond_2
    return-void

    .line 3336
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3338
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 3339
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4

    .line 3340
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    .line 3341
    .local v0, "s":Ljava/lang/String;
    const-string v1, "HIGHESTMODSEQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3342
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 3344
    .end local v0    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->reset()V

    .line 3345
    return-void

    .line 3346
    :cond_5
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3347
    return-void

    .line 3351
    :cond_6
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v0, :cond_7

    .line 3354
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNEXPECTED RESPONSE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 3355
    return-void

    .line 3358
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 3360
    .local v0, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v2, "EXISTS"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 3361
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v1

    .line 3362
    .local v1, "exists":I
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-gt v1, v2, :cond_8

    .line 3364
    return-void

    .line 3366
    :cond_8
    sub-int v4, v1, v2

    .line 3367
    .local v4, "count":I
    new-array v5, v4, [Ljavax/mail/Message;

    .line 3370
    .local v5, "msgs":[Ljavax/mail/Message;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    add-int/2addr v2, v3

    invoke-virtual {v6, v4, v2}, Lcom/sun/mail/imap/MessageCache;->addMessages(II)V

    .line 3371
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 3372
    .local v2, "oldtotal":I
    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 3373
    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 3376
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz v3, :cond_12

    .line 3377
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_9

    .line 3381
    .end local v3    # "i":I
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    .line 3384
    .end local v1    # "exists":I
    .end local v2    # "oldtotal":I
    .end local v4    # "count":I
    .end local v5    # "msgs":[Ljavax/mail/Message;
    goto/16 :goto_3

    .line 3378
    .restart local v1    # "exists":I
    .restart local v2    # "oldtotal":I
    .restart local v3    # "i":I
    .restart local v4    # "count":I
    .restart local v5    # "msgs":[Ljavax/mail/Message;
    :cond_9
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v6

    aput-object v6, v5, v3

    .line 3377
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3384
    .end local v1    # "exists":I
    .end local v2    # "oldtotal":I
    .end local v3    # "i":I
    .end local v4    # "count":I
    .end local v5    # "msgs":[Ljavax/mail/Message;
    :cond_a
    const-string v2, "EXPUNGE"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3387
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v2

    .line 3388
    .local v2, "seqnum":I
    const/4 v4, 0x0

    .line 3389
    .local v4, "msgs":[Ljavax/mail/Message;
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz v5, :cond_b

    .line 3392
    new-array v5, v3, [Ljavax/mail/Message;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v6

    aput-object v6, v5, v1

    move-object v4, v5

    .line 3393
    aget-object v5, v4, v1

    if-nez v5, :cond_b

    .line 3394
    const/4 v4, 0x0

    .line 3397
    :cond_b
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v5, v2}, Lcom/sun/mail/imap/MessageCache;->expungeMessage(I)V

    .line 3400
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 3402
    if-eqz v4, :cond_12

    .line 3403
    invoke-virtual {p0, v1, v4}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    .line 3405
    .end local v2    # "seqnum":I
    .end local v4    # "msgs":[Ljavax/mail/Message;
    goto/16 :goto_3

    :cond_c
    const-string v2, "VANISHED"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3411
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomStringList()[Ljava/lang/String;

    move-result-object v2

    .line 3412
    .local v2, "s":[Ljava/lang/String;
    if-nez v2, :cond_12

    .line 3413
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    .line 3414
    .local v4, "uids":Ljava/lang/String;
    invoke-static {v4}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v5

    .line 3416
    .local v5, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    int-to-long v6, v6

    invoke-static {v5}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v7, v6

    iput v7, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 3417
    invoke-static {v5}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object v6

    .line 3418
    .local v6, "luid":[J
    invoke-direct {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->createMessagesForUIDs([J)[Ljavax/mail/Message;

    move-result-object v7

    .line 3419
    .local v7, "msgs":[Ljavax/mail/Message;
    array-length v8, v7

    :goto_1
    if-lt v1, v8, :cond_d

    .line 3423
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz v1, :cond_12

    .line 3424
    invoke-virtual {p0, v3, v7}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    .line 3428
    .end local v2    # "s":[Ljava/lang/String;
    .end local v4    # "uids":Ljava/lang/String;
    .end local v5    # "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    .end local v6    # "luid":[J
    .end local v7    # "msgs":[Ljavax/mail/Message;
    goto :goto_3

    .line 3419
    .restart local v2    # "s":[Ljava/lang/String;
    .restart local v4    # "uids":Ljava/lang/String;
    .restart local v5    # "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    .restart local v6    # "luid":[J
    .restart local v7    # "msgs":[Ljavax/mail/Message;
    :cond_d
    aget-object v9, v7, v1

    .line 3420
    .local v9, "m":Ljavax/mail/Message;
    invoke-virtual {v9}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v10

    if-lez v10, :cond_e

    .line 3421
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v9}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sun/mail/imap/MessageCache;->expungeMessage(I)V

    .line 3419
    .end local v9    # "m":Ljavax/mail/Message;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3428
    .end local v2    # "s":[Ljava/lang/String;
    .end local v4    # "uids":Ljava/lang/String;
    .end local v5    # "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    .end local v6    # "luid":[J
    .end local v7    # "msgs":[Ljavax/mail/Message;
    :cond_f
    const-string v1, "FETCH"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3429
    nop

    .line 3430
    move-object v1, v0

    check-cast v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;

    move-result-object v1

    .line 3431
    .local v1, "msg":Ljavax/mail/Message;
    if-eqz v1, :cond_12

    .line 3432
    nop

    .line 3433
    nop

    .line 3432
    invoke-virtual {p0, v3, v1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    .end local v1    # "msg":Ljavax/mail/Message;
    goto :goto_2

    .line 3435
    :cond_10
    const-string v1, "RECENT"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3437
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    goto :goto_3

    .line 3435
    :cond_11
    :goto_2
    nop

    .line 3439
    :cond_12
    :goto_3
    return-void
.end method

.method handleResponses([Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # [Lcom/sun/mail/iap/Response;

    .line 3493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 3497
    .end local v0    # "i":I
    return-void

    .line 3494
    .restart local v0    # "i":I
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 814
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 819
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    nop

    .line 825
    :try_start_2
    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 816
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 822
    :catch_0
    move-exception v1

    .line 823
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 820
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 821
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 816
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 832
    :cond_1
    const/4 v0, 0x0

    .line 834
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v3, :cond_2

    iget-char v3, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v3, :cond_2

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "lname":Ljava/lang/String;
    goto :goto_1

    .line 837
    .end local v3    # "lname":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 838
    .restart local v3    # "lname":Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$7;

    invoke-direct {v4, p0, v3}, Lcom/sun/mail/imap/IMAPFolder$7;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v0, v4

    .line 845
    if-eqz v0, :cond_6

    .line 848
    invoke-direct {p0, v0, v3}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v4

    .line 849
    .local v4, "i":I
    aget-object v5, v0, v4

    iget v5, v5, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v5, v2, :cond_3

    .line 850
    monitor-exit p0

    return v2

    .line 851
    :cond_3
    :try_start_6
    aget-object v5, v0, v4

    iget v5, v5, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 852
    monitor-exit p0

    return v1

    .line 856
    :cond_4
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 857
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v6, v5, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_7
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-lez v6, :cond_5

    .line 858
    monitor-exit p0

    return v2

    .line 860
    :cond_5
    monitor-exit p0

    return v1

    .line 866
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_2
    move-exception v1

    .line 867
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_8
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 864
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_3
    move-exception v1

    .line 865
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/StoreClosedException;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 861
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_4
    move-exception v2

    .line 863
    .local v2, "bex":Lcom/sun/mail/iap/BadCommandException;
    monitor-exit p0

    return v1

    .line 846
    .end local v2    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v4    # "i":I
    :cond_6
    :try_start_9
    new-instance v1, Ljavax/mail/FolderNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " not found"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 813
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v3    # "lname":Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public id(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
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

    .line 3258
    .local p1, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 3259
    nop

    .line 3260
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$20;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$20;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/util/Map;)V

    .line 3259
    const-string v1, "ID not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

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

    .line 2943
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->idle(Z)V

    .line 2944
    return-void
.end method

.method public idle(Z)V
    .locals 3
    .param p1, "once"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2959
    monitor-enter p0

    .line 2968
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2969
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    .line 2970
    const-string v1, "idle method not supported with SocketChannels"

    .line 2969
    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local p1    # "once":Z
    throw v0

    .line 2959
    .restart local p1    # "once":Z
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2972
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->startIdle(Lcom/sun/mail/imap/IdleManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2973
    return-void

    .line 2991
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3000
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I

    move-result v0

    .line 3001
    .local v0, "minidle":I
    if-lez v0, :cond_3

    .line 3003
    int-to-long v1, v0

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3004
    goto :goto_1

    :catch_0
    move-exception v1

    .line 3006
    .local v1, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 3009
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    :goto_1
    return-void

    .line 2959
    .end local v0    # "minidle":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method idleAbort()V
    .locals 3

    .line 3202
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3203
    :try_start_0
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v1, :cond_0

    .line 3204
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3205
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3202
    :cond_0
    monitor-exit v0

    .line 3208
    return-void

    .line 3202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method idleAbortWait()V
    .locals 5

    .line 3215
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3216
    :try_start_0
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

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

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 3226
    goto :goto_0

    :catch_0
    move-exception v1

    .line 3228
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Exception in idleAbortWait"

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3230
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "IDLE aborted"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3215
    :cond_1
    monitor-exit v0

    .line 3233
    return-void

    .line 3215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    monitor-enter p0

    .line 1515
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1517
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 1519
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1520
    :goto_0
    goto :goto_1

    .line 1515
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1520
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1515
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1524
    :try_start_4
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return v0

    .line 1515
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_1
    move-exception v1

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1514
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSubscribed()Z
    .locals 4

    monitor-enter p0

    .line 720
    const/4 v0, 0x0

    .line 722
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v1, :cond_0

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v1, :cond_0

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "lname":Ljava/lang/String;
    goto :goto_0

    .line 725
    .end local v1    # "lname":Ljava/lang/String;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    .restart local v1    # "lname":Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$4;

    invoke-direct {v2, p0, v1}, Lcom/sun/mail/imap/IMAPFolder$4;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_1

    .line 734
    :catch_0
    move-exception v2

    :goto_1
    nop

    .line 737
    if-eqz v0, :cond_1

    .line 738
    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v2

    .line 739
    .local v2, "i":I
    aget-object v3, v0, v2

    iget-boolean v3, v3, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    .line 741
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 719
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v1    # "lname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected keepConnectionAlive(Z)V
    .locals 8
    .param p1, "keepStoreAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3796
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 3797
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    .line 3798
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    .line 3801
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3802
    const/4 v0, 0x0

    .line 3804
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    move-object v0, v1

    .line 3805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

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

    goto :goto_0

    .line 3807
    :catchall_0
    move-exception v1

    .line 3808
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v2, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3809
    throw v1

    .line 3811
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_2
    :goto_0
    return-void
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

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

    .line 2866
    nop

    .line 2867
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$16;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$16;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    .line 2866
    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

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

    monitor-enter p0

    .line 1935
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1936
    monitor-exit p0

    return-void

    .line 1934
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    monitor-enter p0

    .line 1962
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1962
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public myRights()Lcom/sun/mail/imap/Rights;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2883
    nop

    .line 2884
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$17;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$17;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2883
    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method protected newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 1
    .param p1, "msgnum"    # I

    .line 1300
    new-instance v0, Lcom/sun/mail/imap/IMAPMessage;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;I)V

    return-object v0
.end method

.method public declared-synchronized open(ILcom/sun/mail/imap/ResyncData;)Ljava/util/List;
    .locals 13
    .param p1, "mode"    # I
    .param p2, "rd"    # Lcom/sun/mail/imap/ResyncData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/mail/imap/ResyncData;",
            ")",
            "Ljava/util/List<",
            "Ljavax/mail/event/MailEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 967
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 969
    const/4 v0, 0x0

    .line 971
    .local v0, "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/IMAPStore;->getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 973
    const/4 v1, 0x0

    .line 974
    .local v1, "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 982
    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 991
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    .line 992
    :try_start_2
    sget-object v6, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    if-ne p2, v6, :cond_1

    .line 993
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "CONDSTORE"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 994
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "QRESYNC"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 995
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "CONDSTORE"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 996
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "CONDSTORE"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_0
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "QRESYNC"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    .line 1000
    goto :goto_0

    .line 1001
    :cond_1
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "QRESYNC"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1002
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "QRESYNC"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    goto :goto_0

    .line 974
    :catchall_0
    move-exception v3

    goto/16 :goto_a

    .line 1035
    :catch_0
    move-exception v3

    goto/16 :goto_6

    .line 1010
    :catch_1
    move-exception v6

    goto/16 :goto_9

    .line 1006
    :cond_2
    :goto_0
    if-ne p1, v5, :cond_3

    .line 1007
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v6
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v6

    goto :goto_1

    .line 1009
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v6
    :try_end_3
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v0, v6

    .line 1010
    nop

    .line 1047
    :goto_1
    :try_start_4
    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eq v6, p1, :cond_5

    .line 1048
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    :try_start_5
    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-ne v6, v5, :cond_4

    .line 1049
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v6, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPStore;->allowReadOnlySelect()Z

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_4

    .line 1051
    goto :goto_3

    .line 1054
    :cond_4
    :try_start_6
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1055
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
    :try_end_6
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1056
    goto :goto_2

    .line 1065
    :catchall_1
    move-exception v3

    goto :goto_2

    .line 1056
    :catch_2
    move-exception v3

    .line 1059
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_7
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1060
    nop

    .line 1063
    :try_start_8
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1064
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    goto :goto_2

    .line 1062
    .restart local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_2
    move-exception v5

    .line 1063
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1064
    nop

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v5

    .line 1060
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :catch_3
    move-exception v5

    .line 1063
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1066
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :goto_2
    :try_start_9
    new-instance v3, Ljavax/mail/ReadOnlyFolderException;

    .line 1067
    const-string v4, "Cannot open in desired mode"

    .line 1066
    invoke-direct {v3, p0, v4}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1074
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :cond_5
    :goto_3
    :try_start_a
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 1075
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 1076
    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    .line 1077
    iget-object v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->availableFlags:Ljavax/mail/Flags;

    .line 1078
    iget-object v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 1079
    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 1080
    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 1081
    iget-wide v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 1082
    iget-wide v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 1083
    iget-wide v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->highestmodseq:J

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 1086
    new-instance v6, Lcom/sun/mail/imap/MessageCache;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v7, Lcom/sun/mail/imap/IMAPStore;

    iget v8, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-direct {v6, p0, v7, v8}, Lcom/sun/mail/imap/MessageCache;-><init>(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IMAPStore;I)V

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    .line 1089
    iget-object v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v6, :cond_a

    .line 1090
    :try_start_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 1091
    iget-object v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1092
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v8, "VANISHED"

    invoke-virtual {v7, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1094
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomStringList()[Ljava/lang/String;

    move-result-object v8

    .line 1096
    .local v8, "s":[Ljava/lang/String;
    if-eqz v8, :cond_6

    array-length v9, v8

    if-ne v9, v5, :cond_6

    .line 1097
    aget-object v9, v8, v4

    const-string v10, "EARLIER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1098
    goto :goto_4

    .line 1099
    :cond_8
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v9

    .line 1100
    .local v9, "uids":Ljava/lang/String;
    invoke-static {v9}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v10

    .line 1101
    .local v10, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    iget-wide v11, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    invoke-static {v10, v11, v12}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;J)[J

    move-result-object v11

    .line 1102
    .local v11, "luid":[J
    if-eqz v11, :cond_6

    array-length v12, v11

    if-lez v12, :cond_6

    .line 1103
    nop

    .line 1104
    new-instance v12, Lcom/sun/mail/imap/MessageVanishedEvent;

    invoke-direct {v12, p0, v11}, Lcom/sun/mail/imap/MessageVanishedEvent;-><init>(Ljavax/mail/Folder;[J)V

    .line 1103
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    nop

    .end local v8    # "s":[Ljava/lang/String;
    .end local v9    # "uids":Ljava/lang/String;
    .end local v10    # "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    .end local v11    # "luid":[J
    goto :goto_4

    :cond_9
    const-string v8, "FETCH"

    invoke-virtual {v7, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1106
    nop

    .line 1108
    move-object v8, v7

    check-cast v8, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {p0, v8}, Lcom/sun/mail/imap/IMAPFolder;->processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;

    move-result-object v8

    .line 1109
    .local v8, "msg":Ljavax/mail/Message;
    if-eqz v8, :cond_6

    .line 1110
    new-instance v9, Ljavax/mail/event/MessageChangedEvent;

    .line 1111
    invoke-direct {v9, p0, v5, v8}, Ljavax/mail/event/MessageChangedEvent;-><init>(Ljava/lang/Object;ILjavax/mail/Message;)V

    .line 1110
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 974
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v8    # "msg":Ljavax/mail/Message;
    :cond_a
    :goto_5
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1117
    :try_start_d
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1118
    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1119
    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 1122
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1124
    monitor-exit p0

    return-object v1

    .line 1035
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_4
    move-exception v3

    .line 1038
    .restart local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :goto_6
    :try_start_e
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1039
    :goto_7
    goto :goto_8

    .line 1041
    :catchall_3
    move-exception v5

    goto :goto_8

    .line 1039
    :catch_5
    move-exception v5

    goto :goto_7

    .line 1042
    :goto_8
    :try_start_f
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1043
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1010
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :catch_6
    move-exception v6

    .line 1019
    .local v6, "cex":Lcom/sun/mail/iap/CommandFailedException;
    :goto_9
    :try_start_10
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1021
    iget v7, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/2addr v7, v5

    if-nez v7, :cond_b

    .line 1022
    new-instance v7, Ljavax/mail/MessagingException;

    .line 1023
    const-string v8, "folder cannot contain messages"

    .line 1022
    invoke-direct {v7, v8}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local v6    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v7

    .line 1024
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local v6    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :cond_b
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local v6    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1026
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local v6    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :catchall_4
    move-exception v7

    .line 1028
    :try_start_11
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1029
    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1030
    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 1032
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1033
    nop

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v7

    .line 974
    .end local v6    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :catchall_5
    move-exception v3

    :goto_a
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 966
    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized open(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 952
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->open(ILcom/sun/mail/imap/ResyncData;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    monitor-exit p0

    return-void

    .line 951
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "mode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected releaseProtocol(Z)V
    .locals 3
    .param p1, "returnToPool"    # Z

    .line 3768
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    .line 3769
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 3771
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3772
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1, p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    .line 3774
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 3775
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3777
    :goto_0
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 3779
    :cond_1
    return-void
.end method

.method protected declared-synchronized releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 2
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    monitor-enter p0

    .line 3751
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq p1, v0, :cond_0

    .line 3752
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    .line 3755
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "releasing our protocol as store protocol?"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3757
    :goto_0
    monitor-exit p0

    return-void

    .line 3750
    .end local p1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeACL(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2811
    nop

    .line 2812
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$15;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$15;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    .line 2811
    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

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

    .line 2843
    const/16 v0, 0x2d

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2844
    return-void
.end method

.method public declared-synchronized renameTo(Ljavax/mail/Folder;)Z
    .locals 2
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 926
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 927
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 928
    invoke-virtual {p1}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v0, v1, :cond_1

    .line 932
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$9;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$9;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Folder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 940
    monitor-exit p0

    return v1

    .line 942
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 943
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 944
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 929
    .end local v0    # "ret":Ljava/lang/Object;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    :try_start_2
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t rename across Stores"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 925
    .end local p1    # "f":Ljavax/mail/Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 4
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2241
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2244
    const/4 v0, 0x0

    .line 2246
    .local v0, "matchMsgs":[Ljavax/mail/Message;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2247
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 2248
    .local v2, "matches":[I
    if-eqz v2, :cond_0

    .line 2249
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v3

    move-object v0, v3

    .line 2246
    .end local v2    # "matches":[I
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2251
    monitor-exit p0

    return-object v0

    .line 2246
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p1    # "term":Ljavax/mail/search/SearchTerm;
    :try_start_4
    throw v2
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "term":Ljavax/mail/search/SearchTerm;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2263
    .end local v0    # "matchMsgs":[Ljavax/mail/Message;
    :catch_0
    move-exception v0

    .line 2265
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2261
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2262
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 2256
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v0

    .line 2258
    .local v0, "sex":Ljavax/mail/search/SearchException;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->throwSearchException()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2260
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-object v1

    .line 2259
    :cond_1
    :try_start_6
    throw v0

    .line 2253
    .end local v0    # "sex":Ljavax/mail/search/SearchException;
    :catch_3
    move-exception v0

    .line 2255
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object v1

    .line 2240
    .end local v0    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .end local p1    # "term":Ljavax/mail/search/SearchTerm;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 6
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .param p2, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2276
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2278
    array-length v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 2280
    monitor-exit p0

    return-object p2

    .line 2283
    :cond_0
    const/4 v0, 0x0

    .line 2285
    .local v0, "matchMsgs":[Ljavax/mail/Message;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2286
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 2287
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v3, 0x0

    invoke-static {p2, v3}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v3

    .line 2288
    .local v3, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-eqz v3, :cond_2

    .line 2291
    invoke-virtual {v2, v3, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v4

    .line 2292
    .local v4, "matches":[I
    if-eqz v4, :cond_1

    .line 2293
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v5

    move-object v0, v5

    .line 2285
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v4    # "matches":[I
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2295
    monitor-exit p0

    return-object v0

    .line 2289
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_2
    :try_start_3
    new-instance v4, Ljavax/mail/MessageRemovedException;

    .line 2290
    const-string v5, "Messages have been removed"

    .line 2289
    invoke-direct {v4, v5}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "matchMsgs":[Ljavax/mail/Message;
    .end local p1    # "term":Ljavax/mail/search/SearchTerm;
    .end local p2    # "msgs":[Ljavax/mail/Message;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2285
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v0    # "matchMsgs":[Ljavax/mail/Message;
    .restart local p1    # "term":Ljavax/mail/search/SearchTerm;
    .restart local p2    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p1    # "term":Ljavax/mail/search/SearchTerm;
    .end local p2    # "msgs":[Ljavax/mail/Message;
    :try_start_5
    throw v2
    :try_end_5
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "term":Ljavax/mail/search/SearchTerm;
    .restart local p2    # "msgs":[Ljavax/mail/Message;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2305
    .end local v0    # "matchMsgs":[Ljavax/mail/Message;
    :catch_0
    move-exception v0

    .line 2307
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2303
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2304
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 2300
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v0

    .line 2302
    .local v0, "sex":Ljavax/mail/search/SearchException;
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object v1

    .line 2297
    .end local v0    # "sex":Ljavax/mail/search/SearchException;
    :catch_3
    move-exception v0

    .line 2299
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_7
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-object v1

    .line 2275
    .end local v0    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .end local p1    # "term":Ljavax/mail/search/SearchTerm;
    .end local p2    # "msgs":[Ljavax/mail/Message;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
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

    monitor-enter p0

    .line 1361
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1362
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljavax/mail/Message;

    .line 1363
    .local v0, "msgs":[Ljavax/mail/Message;
    const/4 v1, 0x0

    .line 1364
    .local v1, "i":I
    move v2, p1

    .local v2, "n":I
    :goto_0
    if-le v2, p2, :cond_0

    .line 1366
    .end local v2    # "n":I
    invoke-virtual {p0, v0, p3, p4}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    monitor-exit p0

    return-void

    .line 1365
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local v2    # "n":I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    .line 1360
    .end local v0    # "msgs":[Ljavax/mail/Message;
    .end local v2    # "n":I
    .end local v3    # "i":I
    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "flag":Ljavax/mail/Flags;
    .end local p4    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    monitor-enter p0

    .line 1374
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1375
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/Message;

    .line 1376
    .local v0, "msgs":[Ljavax/mail/Message;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 1378
    .end local v1    # "i":I
    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    monitor-exit p0

    return-void

    .line 1377
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local v1    # "i":I
    :cond_0
    :try_start_1
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1373
    .end local v0    # "msgs":[Ljavax/mail/Message;
    .end local v1    # "i":I
    .end local p1    # "msgnums":[I
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .locals 5
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1334
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1335
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->checkFlags(Ljavax/mail/Flags;)V

    .line 1337
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 1338
    monitor-exit p0

    return-void

    .line 1340
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1342
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1343
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v2

    .line 1344
    .local v2, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-eqz v2, :cond_1

    .line 1347
    invoke-virtual {v1, v2, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1348
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    nop

    .line 1340
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1354
    monitor-exit p0

    return-void

    .line 1345
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_1
    :try_start_4
    new-instance v3, Ljavax/mail/MessageRemovedException;

    .line 1346
    const-string v4, "Messages have been removed"

    .line 1345
    invoke-direct {v3, v4}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    throw v3
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1340
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "flag":Ljavax/mail/Flags;
    .restart local p3    # "value":Z
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1350
    :catch_0
    move-exception v1

    .line 1351
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    throw v2

    .line 1348
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "flag":Ljavax/mail/Flags;
    .restart local p3    # "value":Z
    :catch_1
    move-exception v1

    .line 1349
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1340
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "flag":Ljavax/mail/Flags;
    .restart local p3    # "value":Z
    :goto_0
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 1333
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .locals 2
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2763
    nop

    .line 2764
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$13;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$13;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V

    .line 2763
    const-string v1, "QUOTA not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

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

    monitor-enter p0

    .line 749
    :try_start_0
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$5;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$5;-><init>(Lcom/sun/mail/imap/IMAPFolder;Z)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    monitor-exit p0

    return-void

    .line 748
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "subscribe":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method startIdle(Lcom/sun/mail/imap/IdleManager;)Z
    .locals 4
    .param p1, "im"    # Lcom/sun/mail/imap/IdleManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3025
    nop

    .line 3026
    monitor-enter p0

    .line 3027
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 3028
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3029
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    .line 3030
    const-string v1, "Folder already being watched by another IdleManager"

    .line 3029
    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local p1    # "im":Lcom/sun/mail/imap/IdleManager;
    throw v0

    .line 3031
    .restart local p1    # "im":Lcom/sun/mail/imap/IdleManager;
    :cond_1
    :goto_0
    const-string v0, "IDLE not supported"

    .line 3032
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$19;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$19;-><init>(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IdleManager;)V

    .line 3031
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

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

    return v1

    .line 3026
    .end local v0    # "started":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    monitor-enter p0

    .line 3542
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getProtocol()Lcom/sun/mail/iap/Protocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq v0, v1, :cond_1

    .line 3543
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
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

    .line 3546
    :cond_2
    new-instance v0, Ljavax/mail/StoreClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3541
    .end local p1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method waitIfIdle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3162
    nop

    .line 3163
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-nez v0, :cond_1

    .line 3196
    return-void

    .line 3164
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3165
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3166
    .local v0, "im":Lcom/sun/mail/imap/IdleManager;
    if-eqz v0, :cond_2

    .line 3167
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "waitIfIdle: request IdleManager to abort"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/IdleManager;->requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 3169
    goto :goto_1

    .line 3170
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "waitIfIdle: abort IDLE"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3171
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3172
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3174
    .end local v0    # "im":Lcom/sun/mail/imap/IdleManager;
    goto :goto_1

    .line 3175
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "waitIfIdle: idleState {0}"

    invoke-virtual {v0, v1, v3, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3178
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3179
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "waitIfIdle: wait to be not idle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3179
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3181
    :cond_4
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 3182
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3183
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "waitIfIdle: wait done, idleState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3184
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3183
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3185
    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 3187
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3193
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Interrupted waitIfIdle"

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
