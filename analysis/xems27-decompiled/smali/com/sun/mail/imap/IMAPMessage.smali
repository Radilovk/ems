.class public Lcom/sun/mail/imap/IMAPMessage;
.super Ljavax/mail/internet/MimeMessage;
.source "IMAPMessage.java"

# interfaces
.implements Lcom/sun/mail/util/ReadableMime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;
    }
.end annotation


# static fields
.field static final EnvelopeCmd:Ljava/lang/String; = "ENVELOPE INTERNALDATE RFC822.SIZE"


# instance fields
.field private volatile bodyLoaded:Z

.field protected bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field private description:Ljava/lang/String;

.field protected envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

.field private volatile headersLoaded:Z

.field protected items:Ljava/util/Map;

.field private loadedHeaders:Ljava/util/Hashtable;

.field private volatile modseq:J

.field private peek:Ljava/lang/Boolean;

.field private receivedDate:Ljava/util/Date;

.field protected sectionId:Ljava/lang/String;

.field private size:I

.field private subject:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private volatile uid:J


# direct methods
.method protected constructor <init>(Lcom/sun/mail/imap/IMAPFolder;I)V
    .locals 2
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p2, "msgnum"    # I

    .line 139
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 102
    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->modseq:J

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 117
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    .line 141
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;

    .line 149
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 102
    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->modseq:J

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 117
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    .line 150
    return-void
.end method

.method private _getBodyStructure()Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    return-object v0
.end method

.method private _getEnvelope()Lcom/sun/mail/imap/protocol/ENVELOPE;
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    return-object v0
.end method

.method private _getFlags()Ljavax/mail/Flags;
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    return-object v0
.end method

.method private aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p1, "aa"    # [Ljavax/mail/internet/InternetAddress;

    .line 1596
    if-nez p1, :cond_0

    .line 1597
    const/4 v0, 0x0

    return-object v0

    .line 1599
    :cond_0
    invoke-virtual {p1}, [Ljavax/mail/internet/InternetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/internet/InternetAddress;

    return-object v0
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/ENVELOPE;
    .locals 0

    .line 1606
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getEnvelope()Lcom/sun/mail/imap/protocol/ENVELOPE;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPMessage;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    return p0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPMessage;)Ljavax/mail/Flags;
    .locals 0

    .line 1602
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getFlags()Ljavax/mail/Flags;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .locals 0

    .line 1610
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getBodyStructure()Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4(Lcom/sun/mail/imap/IMAPMessage;)Z
    .locals 0

    .line 1553
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->areHeadersLoaded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5(Lcom/sun/mail/imap/IMAPMessage;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    return p0
.end method

.method static synthetic access$6(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;)Z
    .locals 0

    .line 1567
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private areHeadersLoaded()Z
    .locals 1

    .line 1554
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    return v0
.end method

.method private isHeaderLoaded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1568
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    if-eqz v0, :cond_0

    .line 1569
    const/4 v0, 0x1

    return v0

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized loadBODYSTRUCTURE()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1449
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 1450
    monitor-exit p0

    return-void

    .line 1453
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1455
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1459
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1461
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1462
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    nop

    .line 1468
    if-eqz v2, :cond_1

    .line 1453
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1476
    monitor-exit p0

    return-void

    .line 1472
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1473
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Unable to load BODYSTRUCTURE"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1453
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1464
    :catch_0
    move-exception v1

    .line 1465
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1466
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1462
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 1463
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1453
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :goto_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 1448
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadEnvelope()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1389
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 1390
    monitor-exit p0

    return-void

    .line 1392
    :cond_0
    const/4 v0, 0x0

    .line 1395
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1397
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1399
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1401
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 1402
    .local v3, "seqnum":I
    const-string v4, "ENVELOPE INTERNALDATE RFC822.SIZE"

    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    move-object v0, v4

    .line 1404
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-lt v4, v5, :cond_2

    .line 1429
    .end local v4    # "i":I
    invoke-virtual {v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1430
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1431
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "seqnum":I
    nop

    .line 1395
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1440
    :try_start_4
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    .line 1442
    monitor-exit p0

    return-void

    .line 1441
    :cond_1
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Failed to load IMAP envelope"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1407
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "seqnum":I
    .restart local v4    # "i":I
    :cond_2
    :try_start_6
    aget-object v5, v0, v4

    if-eqz v5, :cond_8

    .line 1408
    aget-object v5, v0, v4

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v5, :cond_8

    .line 1409
    aget-object v5, v0, v4

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v5

    if-eq v5, v3, :cond_3

    .line 1410
    goto :goto_3

    .line 1412
    :cond_3
    aget-object v5, v0, v4

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1415
    .local v5, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v6

    .line 1416
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-lt v7, v6, :cond_4

    goto :goto_3

    .line 1417
    :cond_4
    invoke-virtual {v5, v7}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v8

    .line 1419
    .local v8, "item":Lcom/sun/mail/imap/protocol/Item;
    instance-of v9, v8, Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v9, :cond_5

    .line 1420
    move-object v9, v8

    check-cast v9, Lcom/sun/mail/imap/protocol/ENVELOPE;

    iput-object v9, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    goto :goto_2

    .line 1421
    :cond_5
    instance-of v9, v8, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    if-eqz v9, :cond_6

    .line 1422
    move-object v9, v8

    check-cast v9, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->getDate()Ljava/util/Date;

    move-result-object v9

    iput-object v9, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    goto :goto_2

    .line 1423
    :cond_6
    instance-of v9, v8, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    if-eqz v9, :cond_7

    .line 1424
    move-object v9, v8

    check-cast v9, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    iget v9, v9, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I

    iput v9, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1416
    .end local v8    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1404
    .end local v5    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v6    # "count":I
    .end local v7    # "j":I
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1395
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "seqnum":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1433
    :catch_0
    move-exception v2

    .line 1434
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1435
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    throw v3

    .line 1431
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "r":[Lcom/sun/mail/iap/Response;
    :catch_1
    move-exception v2

    .line 1432
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v3, Ljavax/mail/FolderClosedException;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    throw v3

    .line 1395
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "r":[Lcom/sun/mail/iap/Response;
    :goto_4
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1388
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadFlags()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1525
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 1526
    monitor-exit p0

    return-void

    .line 1529
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1531
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1535
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1537
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchFlags(I)Ljavax/mail/Flags;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    .line 1539
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    if-nez v2, :cond_1

    .line 1540
    new-instance v2, Ljavax/mail/Flags;

    invoke-direct {v2}, Ljavax/mail/Flags;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1529
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1548
    monitor-exit p0

    return-void

    .line 1529
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1543
    :catch_0
    move-exception v1

    .line 1544
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1545
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1541
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 1542
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1529
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :goto_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 1524
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1482
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 1483
    monitor-exit p0

    return-void

    .line 1485
    :cond_0
    const/4 v0, 0x0

    .line 1488
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1490
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1494
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1496
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    .line 1497
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 1498
    const-string v4, "HEADER"

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1497
    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v3

    .line 1499
    .local v3, "b":Lcom/sun/mail/imap/protocol/BODY;
    if-eqz v3, :cond_2

    .line 1500
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v4
    :try_end_3
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v4

    .line 1501
    .end local v3    # "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_0

    .line 1488
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1509
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1507
    :catch_1
    move-exception v2

    goto :goto_2

    .line 1502
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 1503
    const-string v4, "HEADER"

    .line 1502
    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v3
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1504
    .local v3, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v3, :cond_2

    .line 1505
    :try_start_5
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v4
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v4

    .line 1488
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    :cond_2
    :goto_0
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1515
    if-eqz v0, :cond_3

    .line 1517
    :try_start_7
    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1, v0}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 1518
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1519
    monitor-exit p0

    return-void

    .line 1516
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    :cond_3
    :try_start_8
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Cannot load header"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1488
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 1509
    :catch_2
    move-exception v2

    .line 1510
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :goto_1
    :try_start_9
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1511
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "is":Ljava/io/InputStream;
    throw v3

    .line 1507
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .line 1508
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    :goto_2
    new-instance v3, Ljavax/mail/FolderClosedException;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v0    # "is":Ljava/io/InputStream;
    throw v3

    .line 1488
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "is":Ljava/io/InputStream;
    :goto_3
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1481
    .end local v0    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setHeaderLoaded(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1578
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    return-void
.end method

.method private setHeadersLoaded(Z)V
    .locals 0
    .param p1, "loaded"    # Z

    .line 1561
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 1562
    return-void
.end method

.method private toSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 1586
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1587
    return-object p1

    .line 1589
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method _getModSeq()J
    .locals 2

    .line 262
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->modseq:J

    return-wide v0
.end method

.method _getSession()Ljavax/mail/Session;
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method _setFlags(Ljavax/mail/Flags;)V
    .locals 0
    .param p1, "flags"    # Ljavax/mail/Flags;

    .line 1624
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    .line 1625
    return-void
.end method

.method public addFrom([Ljavax/mail/Address;)V
    .locals 2
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 341
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 929
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 967
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 390
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkExpunged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;
        }
    .end annotation

    .line 276
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->expunged:Z

    if-nez v0, :cond_0

    .line 278
    return-void

    .line 277
    :cond_0
    new-instance v0, Ljavax/mail/MessageRemovedException;

    invoke-direct {v0}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v0
.end method

.method protected fetchItem(Lcom/sun/mail/imap/protocol/FetchItem;)Ljava/lang/Object;
    .locals 9
    .param p1, "fitem"    # Lcom/sun/mail/imap/protocol/FetchItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1324
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1325
    const/4 v1, 0x0

    .line 1328
    .local v1, "robj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1330
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1332
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 1333
    .local v3, "seqnum":I
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 1335
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-lt v5, v6, :cond_0

    .line 1353
    .end local v5    # "i":I
    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1354
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {v2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "seqnum":I
    .end local v4    # "r":[Lcom/sun/mail/iap/Response;
    nop

    .line 1361
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 1338
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "seqnum":I
    .restart local v4    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v5    # "i":I
    :cond_0
    :try_start_2
    aget-object v6, v4, v5

    if-eqz v6, :cond_2

    .line 1339
    aget-object v6, v4, v5

    instance-of v6, v6, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v6, :cond_2

    .line 1340
    aget-object v6, v4, v5

    check-cast v6, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v6

    if-eq v6, v3, :cond_1

    .line 1341
    goto :goto_1

    .line 1343
    :cond_1
    aget-object v6, v4, v5

    check-cast v6, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1344
    .local v6, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/FetchResponse;->getExtensionItems()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/IMAPMessage;->handleExtensionFetchItems(Ljava/util/Map;)V

    .line 1345
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPMessage;->items:Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 1346
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPMessage;->items:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1347
    .local v7, "o":Ljava/lang/Object;
    if-eqz v7, :cond_2

    .line 1348
    move-object v1, v7

    .line 1335
    .end local v6    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v7    # "o":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1324
    .end local v1    # "robj":Ljava/lang/Object;
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "seqnum":I
    .end local v4    # "r":[Lcom/sun/mail/iap/Response;
    .end local v5    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1357
    .restart local v1    # "robj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1358
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1359
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "fitem":Lcom/sun/mail/imap/protocol/FetchItem;
    throw v3

    .line 1355
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local p1    # "fitem":Lcom/sun/mail/imap/protocol/FetchItem;
    :catch_1
    move-exception v2

    .line 1356
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v3, Ljavax/mail/FolderClosedException;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "fitem":Lcom/sun/mail/imap/protocol/FetchItem;
    throw v3

    .line 1324
    .end local v1    # "robj":Ljava/lang/Object;
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local p1    # "fitem":Lcom/sun/mail/imap/protocol/FetchItem;
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method protected forceCheckExpunged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;,
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    goto :goto_0

    .line 289
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 294
    :catch_0
    move-exception v1

    .line 289
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->expunged:Z

    if-nez v0, :cond_0

    .line 300
    return-void

    .line 299
    :cond_0
    new-instance v0, Ljavax/mail/MessageRemovedException;

    invoke-direct {v0}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v0

    .line 292
    :catch_1
    move-exception v1

    .line 293
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_2
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 289
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 974
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 975
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 976
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 942
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 943
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 594
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 595
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getContentID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 596
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 597
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 513
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 514
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getContentLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 516
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 519
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 609
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getContentMD5()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 612
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 691
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 692
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 693
    :cond_0
    const/4 v0, 0x0

    .line 694
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v1

    .line 697
    .local v1, "pk":Z
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 699
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 703
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 705
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 706
    new-instance v4, Lcom/sun/mail/imap/IMAPInputStream;

    const-string v6, "TEXT"

    invoke-direct {p0, v6}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 707
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->ignoreBodyStructureSize()Z

    move-result v7

    if-nez v7, :cond_1

    .line 708
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v5, v5, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    goto :goto_0

    :cond_1
    nop

    .line 706
    :goto_0
    invoke-direct {v4, p0, v6, v5, v1}, Lcom/sun/mail/imap/IMAPInputStream;-><init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 710
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 712
    if-eqz v1, :cond_3

    .line 713
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    const-string v5, "TEXT"

    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v4

    .local v4, "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_1

    .line 715
    .end local v4    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :cond_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    const-string v5, "TEXT"

    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v4

    .line 716
    .restart local v4    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :goto_1
    if-eqz v4, :cond_5

    .line 717
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v5

    move-object v0, v5

    .line 718
    .end local v4    # "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_2

    .line 719
    :cond_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    const-string v5, "TEXT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v4

    .line 720
    .local v4, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v4, :cond_5

    .line 721
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v5
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v5

    .line 697
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v4    # "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    :cond_5
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 731
    if-eqz v0, :cond_6

    .line 734
    return-object v0

    .line 732
    :cond_6
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No content"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 697
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 725
    :catch_0
    move-exception v3

    .line 726
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 727
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "pk":Z
    throw v4

    .line 723
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "pk":Z
    :catch_1
    move-exception v3

    .line 724
    .local v3, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v4, Ljavax/mail/FolderClosedException;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "pk":Z
    throw v4

    .line 697
    .end local v3    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "pk":Z
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public declared-synchronized getContentType()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 549
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 550
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 551
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 554
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 555
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 557
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 558
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    .line 560
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 742
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 744
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-nez v0, :cond_3

    .line 745
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 746
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 748
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 749
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 748
    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 750
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    .line 756
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isMulti()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    new-instance v0, Ljavax/activation/DataHandler;

    .line 758
    new-instance v1, Lcom/sun/mail/imap/IMAPMultipartDataSource;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 759
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    .line 758
    invoke-direct {v1, p0, v2, v3, p0}, Lcom/sun/mail/imap/IMAPMultipartDataSource;-><init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    .line 757
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    .line 760
    goto :goto_1

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isNested()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->isREV1()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v0, :cond_3

    .line 766
    new-instance v0, Ljavax/activation/DataHandler;

    .line 767
    new-instance v1, Lcom/sun/mail/imap/IMAPNestedMessage;

    .line 768
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 769
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 770
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "1"

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 767
    :goto_0
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sun/mail/imap/IMAPNestedMessage;-><init>(Lcom/sun/mail/imap/IMAPMessage;Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Lcom/sun/mail/imap/protocol/ENVELOPE;Ljava/lang/String;)V

    .line 771
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    .line 775
    :cond_3
    :goto_1
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 624
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 625
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 628
    return-object v0

    .line 630
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 631
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 632
    const/4 v0, 0x0

    return-object v0

    .line 635
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    goto :goto_0

    :catch_0
    move-exception v0

    .line 637
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    .line 640
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 568
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 569
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getDisposition()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 571
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 582
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 583
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 584
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 586
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getFetchBlockSize()I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getFetchBlockSize()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 665
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 666
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 667
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 669
    :cond_0
    const/4 v0, 0x0

    .line 670
    .local v0, "filename":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 672
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_1

    .line 673
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_2

    .line 675
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    :cond_2
    return-object v0
.end method

.method public declared-synchronized getFlags()Ljavax/mail/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1003
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1004
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadFlags()V

    .line 1005
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1002
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrom()[Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 319
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 322
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->from:[Ljavax/mail/internet/InternetAddress;

    .line 331
    .local v0, "a":[Ljavax/mail/internet/InternetAddress;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    .line 333
    :cond_2
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 914
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 917
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 918
    const/4 v0, 0x0

    return-object v0

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 859
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 861
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 865
    :cond_0
    const/4 v0, 0x0

    .line 868
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 870
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 874
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 876
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 877
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 878
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HEADER.FIELDS ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 877
    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v3

    .line 880
    .local v3, "b":Lcom/sun/mail/imap/protocol/BODY;
    if-eqz v3, :cond_2

    .line 881
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v4

    move-object v0, v4

    .line 882
    .end local v3    # "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_0

    .line 883
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 884
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HEADER.LINES ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 883
    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v3

    .line 885
    .local v3, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v3, :cond_2

    .line 886
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v4
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 868
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    if-nez v0, :cond_3

    .line 899
    const/4 v1, 0x0

    return-object v1

    .line 901
    :cond_3
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v1, :cond_4

    .line 902
    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 903
    :cond_4
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    .line 904
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->setHeaderLoaded(Ljava/lang/String;)V

    .line 906
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v1, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 868
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 890
    :catch_0
    move-exception v2

    .line 891
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 892
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local p1    # "name":Ljava/lang/String;
    throw v3

    .line 888
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 889
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v3, Ljavax/mail/FolderClosedException;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local p1    # "name":Ljava/lang/String;
    throw v3

    .line 868
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local p1    # "name":Ljava/lang/String;
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getInReplyTo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 535
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 536
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "In-Reply-To"

    const-string v1, " "

    invoke-super {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 539
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getItem(Lcom/sun/mail/imap/protocol/FetchItem;)Ljava/lang/Object;
    .locals 2
    .param p1, "fitem"    # Lcom/sun/mail/imap/protocol/FetchItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->items:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->items:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1380
    .local v0, "item":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 1381
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->fetchItem(Lcom/sun/mail/imap/protocol/FetchItem;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 1382
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 1378
    .end local v0    # "item":Ljava/lang/Object;
    .end local p1    # "fitem":Lcom/sun/mail/imap/protocol/FetchItem;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLineCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 504
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 505
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 984
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 985
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 986
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 951
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 952
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 953
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageCacheLock()Ljava/lang/Object;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 652
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 653
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 654
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getMessageID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 656
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeStream()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v1

    .line 795
    .local v1, "pk":Z
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 797
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 799
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 801
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 802
    new-instance v4, Lcom/sun/mail/imap/IMAPInputStream;

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-direct {v4, p0, v6, v5, v1}, Lcom/sun/mail/imap/IMAPInputStream;-><init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 804
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 806
    if-eqz v1, :cond_1

    .line 807
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v4

    .local v4, "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_0

    .line 809
    .end local v4    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v4

    .line 810
    .restart local v4    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :goto_0
    if-eqz v4, :cond_3

    .line 811
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v5

    move-object v0, v5

    .line 812
    .end local v4    # "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_1

    .line 813
    :cond_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v4

    .line 814
    .local v4, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v4, :cond_3

    .line 815
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v5
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v5

    .line 795
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v4    # "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 825
    if-eqz v0, :cond_4

    .line 831
    return-object v0

    .line 826
    :cond_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 829
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No content"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 795
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 819
    :catch_0
    move-exception v3

    .line 820
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 821
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "pk":Z
    throw v4

    .line 817
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "pk":Z
    :catch_1
    move-exception v3

    .line 818
    .local v3, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v4, Ljavax/mail/FolderClosedException;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "pk":Z
    throw v4

    .line 795
    .end local v3    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "pk":Z
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public declared-synchronized getModSeq()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 241
    :try_start_0
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->modseq:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 242
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->modseq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 244
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 247
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 248
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchMODSEQ(I)Lcom/sun/mail/imap/protocol/MODSEQ;

    move-result-object v2

    .line 250
    .local v2, "ms":Lcom/sun/mail/imap/protocol/MODSEQ;
    if-eqz v2, :cond_1

    .line 251
    iget-wide v3, v2, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    iput-wide v3, p0, Lcom/sun/mail/imap/IMAPMessage;->modseq:J
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v2    # "ms":Lcom/sun/mail/imap/protocol/MODSEQ;
    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    :try_start_4
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->modseq:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 244
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 252
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 253
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 244
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 240
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 994
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 995
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 996
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 961
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 962
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 963
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPeek()Z
    .locals 1

    monitor-enter p0

    .line 1057
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->peek:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getPeek()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1060
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->peek:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 1056
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 166
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 167
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz v0, :cond_0

    .line 170
    return-object v0

    .line 168
    :cond_0
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-direct {v1, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v1
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 471
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 473
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 474
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 475
    const/4 v0, 0x0

    return-object v0

    .line 477
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .locals 1
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 369
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    return-object v0

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 373
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->to:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0

    .line 375
    :cond_1
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->cc:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0

    .line 377
    :cond_2
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->bcc:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0

    .line 380
    :cond_3
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 398
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v0

    return-object v0

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 407
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0

    .line 408
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 349
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 350
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getSender()Ljavax/mail/Address;

    move-result-object v0

    return-object v0

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 352
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 355
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 454
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 457
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 458
    const/4 v0, 0x0

    return-object v0

    .line 460
    :cond_1
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method protected getSequenceNumber()I
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/MessageCache;->seqnumOf(I)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 489
    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 491
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 421
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 425
    return-object v0

    .line 427
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 428
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 429
    const/4 v0, 0x0

    return-object v0

    .line 435
    :cond_2
    nop

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    goto :goto_0

    :catch_0
    move-exception v0

    .line 438
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    .line 441
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    return-object v0
.end method

.method protected getUID()J
    .locals 2

    .line 224
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    return-wide v0
.end method

.method protected handleExtensionFetchItems(Ljava/util/Map;)V
    .locals 1
    .param p1, "extensionItems"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1304
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->items:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->items:Ljava/util/Map;

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->items:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1307
    return-void
.end method

.method protected handleFetchItem(Lcom/sun/mail/imap/protocol/Item;[Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "item"    # Lcom/sun/mail/imap/protocol/Item;
    .param p2, "hdrs"    # [Ljava/lang/String;
    .param p3, "allHeaders"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1190
    instance-of v0, p1, Ljavax/mail/Flags;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1191
    move-object v0, p1

    check-cast v0, Ljavax/mail/Flags;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    goto/16 :goto_7

    .line 1193
    :cond_0
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v0, :cond_1

    .line 1194
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/ENVELOPE;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    goto/16 :goto_7

    .line 1195
    :cond_1
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    if-eqz v0, :cond_2

    .line 1196
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    goto/16 :goto_7

    .line 1197
    :cond_2
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    if-eqz v0, :cond_3

    .line 1198
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    goto/16 :goto_7

    .line 1199
    :cond_3
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/MODSEQ;

    if-eqz v0, :cond_4

    .line 1200
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/MODSEQ;

    iget-wide v2, v0, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPMessage;->modseq:J

    goto/16 :goto_7

    .line 1203
    :cond_4
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-eqz v0, :cond_5

    .line 1204
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    goto/16 :goto_7

    .line 1206
    :cond_5
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/UID;

    if-eqz v0, :cond_7

    .line 1207
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/UID;

    .line 1208
    .local v0, "u":Lcom/sun/mail/imap/protocol/UID;
    iget-wide v2, v0, Lcom/sun/mail/imap/protocol/UID;->uid:J

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 1210
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v2, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v2, v2, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v2, :cond_6

    .line 1211
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v2, Lcom/sun/mail/imap/IMAPFolder;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1212
    :cond_6
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v2, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v2, v2, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    iget-wide v3, v0, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    .end local v0    # "u":Lcom/sun/mail/imap/protocol/UID;
    goto/16 :goto_7

    .line 1216
    :cond_7
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/RFC822DATA;

    if-nez v0, :cond_9

    .line 1217
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/BODY;

    if-eqz v0, :cond_8

    goto :goto_0

    .line 1286
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 1220
    :cond_9
    :goto_0
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/RFC822DATA;

    if-eqz v0, :cond_a

    .line 1222
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    .line 1221
    nop

    .line 1223
    .local v0, "headerStream":Ljava/io/InputStream;
    move-object v2, p1

    check-cast v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/RFC822DATA;->isHeader()Z

    move-result v2

    .line 1224
    .local v2, "isHeader":Z
    goto :goto_1

    .line 1226
    .end local v0    # "headerStream":Ljava/io/InputStream;
    .end local v2    # "isHeader":Z
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/BODY;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    .line 1225
    nop

    .line 1227
    .restart local v0    # "headerStream":Ljava/io/InputStream;
    move-object v2, p1

    check-cast v2, Lcom/sun/mail/imap/protocol/BODY;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/BODY;->isHeader()Z

    move-result v2

    .line 1230
    .restart local v2    # "isHeader":Z
    :goto_1
    if-nez v2, :cond_b

    .line 1235
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1236
    :catch_0
    move-exception v3

    :goto_2
    nop

    .line 1239
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->parse(Ljava/io/InputStream;)V

    .line 1240
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    .line 1241
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPMessage;->setHeadersLoaded(Z)V

    .line 1242
    goto :goto_7

    .line 1244
    :cond_b
    new-instance v3, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v3}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    .line 1248
    .local v3, "h":Ljavax/mail/internet/InternetHeaders;
    if-eqz v0, :cond_c

    .line 1249
    invoke-virtual {v3, v0}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    .line 1250
    :cond_c
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v4, :cond_10

    if-eqz p3, :cond_d

    goto :goto_4

    .line 1267
    :cond_d
    invoke-virtual {v3}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v4

    .line 1268
    .local v4, "e":Ljava/util/Enumeration;
    nop

    :cond_e
    :goto_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_5

    .line 1269
    :cond_f
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/Header;

    .line 1270
    .local v5, "he":Ljavax/mail/Header;
    invoke-virtual {v5}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1271
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 1272
    invoke-virtual {v5}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 1271
    invoke-virtual {v6, v7, v8}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1251
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v5    # "he":Ljavax/mail/Header;
    :cond_10
    :goto_4
    iput-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 1277
    :goto_5
    if-eqz p3, :cond_11

    .line 1278
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPMessage;->setHeadersLoaded(Z)V

    goto :goto_7

    .line 1281
    :cond_11
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_6
    array-length v5, p2

    if-lt v4, v5, :cond_12

    .line 1285
    .end local v0    # "headerStream":Ljava/io/InputStream;
    .end local v2    # "isHeader":Z
    .end local v3    # "h":Ljavax/mail/internet/InternetHeaders;
    .end local v4    # "k":I
    nop

    .line 1287
    :goto_7
    return v1

    .line 1282
    .restart local v0    # "headerStream":Ljava/io/InputStream;
    .restart local v2    # "isHeader":Z
    .restart local v3    # "h":Ljavax/mail/internet/InternetHeaders;
    .restart local v4    # "k":I
    :cond_12
    aget-object v5, p2, v4

    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPMessage;->setHeaderLoaded(Ljava/lang/String;)V

    .line 1281
    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method

.method protected ignoreBodyStructureSize()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->ignoreBodyStructureSize()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized invalidateHeaders()V
    .locals 3

    monitor-enter p0

    .line 1071
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 1072
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 1073
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 1074
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 1075
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 1076
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    .line 1077
    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    .line 1078
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    .line 1079
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    .line 1080
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    .line 1081
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    .line 1082
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->content:[B

    .line 1083
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->contentStream:Ljava/io/InputStream;

    .line 1084
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    monitor-exit p0

    return-void

    .line 1070
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isREV1()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 180
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v1

    return v1

    .line 181
    :cond_0
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-direct {v1, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v1
.end method

.method public declared-synchronized isSet(Ljavax/mail/Flags$Flag;)Z
    .locals 1
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1013
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1014
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadFlags()V

    .line 1015
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1012
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    .end local p1    # "flag":Ljavax/mail/Flags$Flag;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 934
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 601
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .locals 2
    .param p1, "languages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 524
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 2
    .param p1, "md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 616
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 2
    .param p1, "content"    # Ljavax/activation/DataHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 780
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 645
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 2
    .param p1, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 575
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setExpunged(Z)V
    .locals 0
    .param p1, "set"    # Z

    .line 271
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->setExpunged(Z)V

    .line 272
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 680
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .locals 5
    .param p1, "flag"    # Ljavax/mail/Flags;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1024
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1026
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1027
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1028
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(ILjavax/mail/Flags;Z)V
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    nop

    .line 1024
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1035
    monitor-exit p0

    return-void

    .line 1024
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v1

    .line 1032
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "flag":Ljavax/mail/Flags;
    .end local p2    # "set":Z
    throw v2

    .line 1029
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local p1    # "flag":Ljavax/mail/Flags;
    .restart local p2    # "set":Z
    :catch_1
    move-exception v1

    .line 1030
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "flag":Ljavax/mail/Flags;
    .end local p2    # "set":Z
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1024
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local p1    # "flag":Ljavax/mail/Flags;
    .restart local p2    # "set":Z
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 1023
    .end local p1    # "flag":Ljavax/mail/Flags;
    .end local p2    # "set":Z
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFrom(Ljavax/mail/Address;)V
    .locals 2
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 337
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 924
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setMessageNumber(I)V
    .locals 0
    .param p1, "msgnum"    # I

    .line 213
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->setMessageNumber(I)V

    .line 214
    return-void
.end method

.method setModSeq(J)V
    .locals 0
    .param p1, "modseq"    # J

    .line 266
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPMessage;->modseq:J

    .line 267
    return-void
.end method

.method public declared-synchronized setPeek(Z)V
    .locals 1
    .param p1, "peek"    # Z

    monitor-enter p0

    .line 1046
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->peek:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    monitor-exit p0

    return-void

    .line 1045
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPMessage;
    .end local p1    # "peek":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 385
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .locals 2
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 413
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSender(Ljavax/mail/Address;)V
    .locals 2
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 360
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "d"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 464
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 446
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setUID(J)V
    .locals 0
    .param p1, "uid"    # J

    .line 228
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 229
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 839
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bodyLoaded:Z

    if-eqz v0, :cond_0

    .line 840
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 841
    return-void

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMimeStream()Ljava/io/InputStream;

    move-result-object v0

    .line 846
    .local v0, "is":Ljava/io/InputStream;
    const/16 v1, 0x4000

    :try_start_0
    new-array v1, v1, [B

    .line 848
    .local v1, "bytes":[B
    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .local v3, "count":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 850
    .end local v1    # "bytes":[B
    .end local v3    # "count":I
    nop

    .line 851
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 853
    return-void

    .line 849
    .restart local v1    # "bytes":[B
    .restart local v3    # "count":I
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 850
    .end local v1    # "bytes":[B
    .end local v3    # "count":I
    :catchall_0
    move-exception v1

    .line 851
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 852
    throw v1
.end method
