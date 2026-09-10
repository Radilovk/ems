.class public Lcom/sun/mail/imap/MessageCache;
.super Ljava/lang/Object;
.source "MessageCache.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final SLOP:I = 0x40


# instance fields
.field private folder:Lcom/sun/mail/imap/IMAPFolder;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private messages:[Lcom/sun/mail/imap/IMAPMessage;

.field private seqnums:[I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 58
    nop

    .line 94
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 7
    .param p1, "size"    # I
    .param p2, "debug"    # Z

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->folder:Lcom/sun/mail/imap/IMAPFolder;

    .line 113
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 115
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "messagecache"

    const-string v4, "DEBUG IMAP MC"

    move-object v1, v0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    .line 113
    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    .line 116
    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create DEBUG cache of size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 118
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/MessageCache;->ensureCapacity(II)V

    .line 119
    return-void
.end method

.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IMAPStore;I)V
    .locals 4
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p2, "store"    # Lcom/sun/mail/imap/IMAPStore;
    .param p3, "size"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/sun/mail/imap/MessageCache;->folder:Lcom/sun/mail/imap/IMAPFolder;

    .line 101
    iget-object v0, p1, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 102
    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPStore;->getMessageCacheDebug()Z

    move-result v1

    .line 101
    const-string v2, "messagecache"

    const-string v3, "DEBUG IMAP MC"

    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    .line 103
    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create cache of size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 105
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/sun/mail/imap/MessageCache;->ensureCapacity(II)V

    .line 106
    return-void
.end method

.method private ensureCapacity(II)V
    .locals 6
    .param p1, "newsize"    # I
    .param p2, "newSeqNum"    # I

    .line 398
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    if-nez v0, :cond_0

    .line 399
    add-int/lit8 v0, p1, 0x40

    new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;

    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    goto/16 :goto_2

    .line 400
    :cond_0
    array-length v0, v0

    if-ge v0, p1, :cond_4

    .line 401
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expand capacity to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 403
    :cond_1
    add-int/lit8 v0, p1, 0x40

    new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;

    .line 404
    .local v0, "newm":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    .line 406
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v1, :cond_8

    .line 407
    add-int/lit8 v2, p1, 0x40

    new-array v2, v2, [I

    .line 408
    .local v2, "news":[I
    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget v1, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_3

    .line 411
    .end local v1    # "i":I
    iput-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 412
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 413
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "message "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    const-string v4, " has sequence number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 416
    .end local v0    # "newm":[Lcom/sun/mail/imap/IMAPMessage;
    .end local v2    # "news":[I
    :cond_2
    goto :goto_2

    .line 410
    .restart local v0    # "newm":[Lcom/sun/mail/imap/IMAPMessage;
    .restart local v1    # "i":I
    .restart local v2    # "news":[I
    :cond_3
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "newSeqNum":I
    .local v3, "newSeqNum":I
    aput p2, v2, v1

    .line 409
    add-int/lit8 v1, v1, 0x1

    move p2, v3

    goto :goto_0

    .line 416
    .end local v0    # "newm":[Lcom/sun/mail/imap/IMAPMessage;
    .end local v1    # "i":I
    .end local v2    # "news":[I
    .end local v3    # "newSeqNum":I
    .restart local p2    # "newSeqNum":I
    :cond_4
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-ge p1, v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 419
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shrink capacity to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 420
    :cond_5
    add-int/lit8 v0, p1, 0x1

    .local v0, "msgnum":I
    :goto_1
    iget v1, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-le v0, v1, :cond_6

    goto :goto_2

    .line 421
    :cond_6
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 422
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v1, :cond_7

    .line 423
    add-int/lit8 v2, v0, -0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 420
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    .end local v0    # "msgnum":I
    :cond_8
    :goto_2
    iput p1, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    .line 427
    return-void
.end method

.method private msgnumOf(I)I
    .locals 4
    .param p1, "seqnum"    # I

    .line 450
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-nez v0, :cond_0

    .line 451
    return p1

    .line 452
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 453
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad seqnum "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 455
    :cond_1
    return v0

    .line 457
    :cond_2
    move v1, p1

    .local v1, "msgnum":I
    :goto_0
    iget v2, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-le v1, v2, :cond_3

    goto :goto_1

    .line 458
    :cond_3
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v3, v1, -0x1

    aget v3, v2, v3

    if-ne v3, p1, :cond_4

    .line 459
    return v1

    .line 460
    :cond_4
    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-le v2, p1, :cond_5

    .line 461
    nop

    .line 463
    .end local v1    # "msgnum":I
    :goto_1
    return v0

    .line 457
    .restart local v1    # "msgnum":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private shrink(II)V
    .locals 5
    .param p1, "newend"    # I
    .param p2, "oldend"    # I

    .line 350
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    .line 351
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size now "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 353
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 354
    iput-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    .line 355
    iput-object v1, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 356
    goto :goto_1

    :cond_1
    const/16 v2, 0x40

    const/4 v3, 0x0

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_2

    .line 358
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "reallocate array"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 359
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    add-int/lit8 v1, v0, 0x40

    new-array v1, v1, [Lcom/sun/mail/imap/IMAPMessage;

    .line 360
    .local v1, "newm":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iput-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    .line 362
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v0, :cond_4

    .line 363
    iget v2, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    add-int/lit8 v4, v2, 0x40

    new-array v4, v4, [I

    .line 364
    .local v4, "news":[I
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iput-object v4, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 367
    .end local v1    # "newm":[Lcom/sun/mail/imap/IMAPMessage;
    .end local v4    # "news":[I
    goto :goto_1

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "clean "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 371
    :cond_3
    move v0, p1

    .local v0, "msgnum":I
    :goto_0
    if-lt v0, p2, :cond_5

    .line 377
    .end local v0    # "msgnum":I
    :cond_4
    :goto_1
    return-void

    .line 372
    .restart local v0    # "msgnum":I
    :cond_5
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v4, v0, -0x1

    aput-object v1, v2, v4

    .line 373
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v2, :cond_6

    .line 374
    add-int/lit8 v4, v0, -0x1

    aput v3, v2, v4

    .line 371
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addMessages(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "newSeqNum"    # I

    .line 387
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " messages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 390
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lcom/sun/mail/imap/MessageCache;->ensureCapacity(II)V

    .line 391
    return-void
.end method

.method public expungeMessage(I)V
    .locals 7
    .param p1, "seqnum"    # I

    .line 181
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/MessageCache;->msgnumOf(I)I

    move-result v0

    .line 182
    .local v0, "msgnum":I
    if-gez v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expunge no seqnum "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    .line 188
    .local v1, "msg":Lcom/sun/mail/imap/IMAPMessage;
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 189
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expunge existing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 191
    :cond_2
    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 193
    :cond_3
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 194
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "create seqnums array"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 196
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_5

    .line 198
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v3, v0, -0x1

    aput v4, v2, v3

    .line 199
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    array-length v4, v3

    if-le v2, v4, :cond_4

    .line 201
    .end local v2    # "i":I
    goto :goto_3

    .line 200
    .restart local v2    # "i":I
    :cond_4
    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v2, -0x1

    aput v5, v3, v4

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    :cond_5
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v5, v2, -0x1

    aput v2, v3, v5

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "i":I
    :cond_6
    add-int/lit8 v5, v0, -0x1

    aput v4, v3, v5

    .line 203
    add-int/lit8 v3, v0, 0x1

    .local v3, "i":I
    :goto_2
    iget-object v4, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    array-length v5, v4

    if-le v3, v5, :cond_7

    .line 209
    .end local v3    # "i":I
    :goto_3
    return-void

    .line 204
    .restart local v3    # "i":I
    :cond_7
    nop

    .line 205
    add-int/lit8 v5, v3, -0x1

    aget v5, v4, v5

    if-lez v5, :cond_8

    .line 206
    add-int/lit8 v5, v3, -0x1

    aget v6, v4, v5

    sub-int/2addr v6, v2

    aput v6, v4, v5

    .line 203
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public getMessage(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 5
    .param p1, "msgnum"    # I

    .line 139
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    iget v1, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-gt p1, v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 143
    .local v1, "msg":Lcom/sun/mail/imap/IMAPMessage;
    if-nez v1, :cond_1

    .line 144
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "create message number "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->folder:Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/IMAPFolder;->newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v3, p1, -0x1

    aput-object v1, v2, v3

    .line 149
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/MessageCache;->seqnumOf(I)I

    move-result v2

    if-gtz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "it\'s expunged!"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 154
    :cond_1
    return-object v1

    .line 140
    .end local v1    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message number ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") out of bounds ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessageBySeqnum(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 4
    .param p1, "seqnum"    # I

    .line 166
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/MessageCache;->msgnumOf(I)I

    move-result v0

    .line 167
    .local v0, "msgnum":I
    if-gez v0, :cond_1

    .line 168
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no message seqnum "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 170
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 172
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v1

    return-object v1
.end method

.method public removeExpungedMessages()[Lcom/sun/mail/imap/IMAPMessage;
    .locals 7

    .line 218
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "remove expunged messages"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "mlist":Ljava/util/List;
    const/4 v1, 0x1

    .line 230
    .local v1, "oldnum":I
    const/4 v2, 0x1

    .line 231
    .local v2, "newnum":I
    nop

    :goto_0
    iget v3, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-le v1, v3, :cond_1

    .line 248
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 249
    invoke-direct {p0, v2, v1}, Lcom/sun/mail/imap/MessageCache;->shrink(II)V

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sun/mail/imap/IMAPMessage;

    .line 252
    .local v3, "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v4, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    iget-object v4, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 254
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 255
    return-object v3

    .line 233
    .end local v3    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/MessageCache;->seqnumOf(I)I

    move-result v3

    if-gtz v3, :cond_2

    .line 234
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v3

    .line 235
    .local v3, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v3    # "m":Lcom/sun/mail/imap/IMAPMessage;
    goto :goto_1

    .line 238
    :cond_2
    if-eq v2, v1, :cond_3

    .line 240
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, v3, v5

    aput-object v5, v3, v4

    .line 241
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_3

    .line 242
    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Lcom/sun/mail/imap/IMAPMessage;->setMessageNumber(I)V

    .line 244
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 246
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeExpungedMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/IMAPMessage;
    .locals 10
    .param p1, "msgs"    # [Ljavax/mail/Message;

    .line 268
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "remove expunged messages"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v0, "mlist":Ljava/util/List;
    array-length v1, p1

    new-array v1, v1, [I

    .line 277
    .local v1, "mnum":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_9

    .line 279
    .end local v2    # "i":I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 295
    const/4 v2, 0x1

    .line 296
    .local v2, "oldnum":I
    const/4 v3, 0x1

    .line 297
    .local v3, "newnum":I
    const/4 v4, 0x0

    .line 298
    .local v4, "mnumi":I
    const/4 v5, 0x0

    .line 299
    .local v5, "keepSeqnums":Z
    nop

    :goto_1
    iget v6, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-le v2, v6, :cond_2

    .line 334
    if-nez v5, :cond_0

    .line 335
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 336
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/sun/mail/imap/MessageCache;->shrink(II)V

    .line 338
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/sun/mail/imap/IMAPMessage;

    .line 339
    .local v6, "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v7, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 340
    iget-object v7, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "return "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 341
    :cond_1
    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 342
    return-object v6

    .line 305
    .end local v6    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :cond_2
    array-length v6, v1

    if-ge v4, v6, :cond_4

    .line 306
    aget v6, v1, v4

    if-ne v2, v6, :cond_4

    .line 307
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/MessageCache;->seqnumOf(I)I

    move-result v6

    if-gtz v6, :cond_4

    .line 308
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v6

    .line 309
    .local v6, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    nop

    :goto_2
    array-length v7, v1

    if-ge v4, v7, :cond_8

    aget v7, v1, v4

    if-le v7, v2, :cond_3

    .line 317
    .end local v6    # "m":Lcom/sun/mail/imap/IMAPMessage;
    goto :goto_3

    .line 316
    .restart local v6    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 319
    .end local v6    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_4
    if-eq v3, v2, :cond_6

    .line 321
    iget-object v6, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v8, v2, -0x1

    aget-object v8, v6, v8

    aput-object v8, v6, v7

    .line 322
    add-int/lit8 v7, v3, -0x1

    aget-object v7, v6, v7

    if-eqz v7, :cond_5

    .line 323
    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, v3}, Lcom/sun/mail/imap/IMAPMessage;->setMessageNumber(I)V

    .line 324
    :cond_5
    iget-object v6, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v6, :cond_6

    .line 325
    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v8, v2, -0x1

    aget v8, v6, v8

    aput v8, v6, v7

    .line 327
    :cond_6
    iget-object v6, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v6, :cond_7

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    if-eq v6, v3, :cond_7

    .line 328
    const/4 v5, 0x1

    .line 329
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 331
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 278
    .end local v3    # "newnum":I
    .end local v4    # "mnumi":I
    .end local v5    # "keepSeqnums":Z
    .local v2, "i":I
    :cond_9
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v3

    aput v3, v1, v2

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public seqnumOf(I)I
    .locals 4
    .param p1, "msgnum"    # I

    .line 436
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-nez v0, :cond_0

    .line 437
    return p1

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgnum "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is seqnum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public size()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    return v0
.end method
