.class public Lcom/sun/mail/imap/MessageCache;
.super Ljava/lang/Object;
.source "MessageCache.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SLOP:I = 0x40


# instance fields
.field private folder:Lcom/sun/mail/imap/IMAPFolder;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private messages:[Lcom/sun/mail/imap/IMAPMessage;

.field private seqnums:[I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/imap/MessageCache;->$assertionsDisabled:Z

    .line 94
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(IZ)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "debug"    # Z

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->folder:Lcom/sun/mail/imap/IMAPFolder;

    .line 113
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "messagecache"

    .line 115
    const-string v3, "DEBUG IMAP MC"

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    .line 113
    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    .line 116
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

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

    move-result-object v1

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

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/sun/mail/imap/MessageCache;->folder:Lcom/sun/mail/imap/IMAPFolder;

    .line 101
    iget-object v0, p1, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "messagecache"

    const-string v2, "DEBUG IMAP MC"

    .line 102
    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPStore;->getMessageCacheDebug()Z

    move-result v3

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    .line 103
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

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

    move-result-object v1

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
    .locals 9
    .param p1, "newsize"    # I
    .param p2, "newSeqNum"    # I

    .prologue
    const/4 v8, 0x0

    .line 398
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    if-nez v5, :cond_1

    .line 399
    add-int/lit8 v5, p1, 0x40

    new-array v5, v5, [Lcom/sun/mail/imap/IMAPMessage;

    iput-object v5, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    .line 426
    :cond_0
    :goto_0
    iput p1, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    .line 427
    return-void

    .line 400
    :cond_1
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    array-length v5, v5

    if-ge v5, p1, :cond_4

    .line 401
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 402
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "expand capacity to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 403
    :cond_2
    add-int/lit8 v5, p1, 0x40

    new-array v3, v5, [Lcom/sun/mail/imap/IMAPMessage;

    .line 404
    .local v3, "newm":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    iget-object v6, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    array-length v6, v6

    invoke-static {v5, v8, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iput-object v3, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    .line 406
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v5, :cond_0

    .line 407
    add-int/lit8 v5, p1, 0x40

    new-array v4, v5, [I

    .line 408
    .local v4, "news":[I
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    iget-object v6, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    array-length v6, v6

    invoke-static {v5, v8, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    .local v0, "i":I
    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_3

    .line 411
    iput-object v4, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 412
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 413
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "message "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 414
    const-string v7, " has sequence number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v8, p1, -0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 413
    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_3
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "newSeqNum":I
    .local v2, "newSeqNum":I
    aput p2, v4, v0

    .line 409
    add-int/lit8 v0, v0, 0x1

    move p2, v2

    .end local v2    # "newSeqNum":I
    .restart local p2    # "newSeqNum":I
    goto :goto_1

    .line 416
    .end local v0    # "i":I
    .end local v3    # "newm":[Lcom/sun/mail/imap/IMAPMessage;
    .end local v4    # "news":[I
    :cond_4
    iget v5, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-ge p1, v5, :cond_0

    .line 418
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 419
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "shrink capacity to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 420
    :cond_5
    add-int/lit8 v1, p1, 0x1

    .local v1, "msgnum":I
    :goto_2
    iget v5, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-gt v1, v5, :cond_0

    .line 421
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 422
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v5, :cond_6

    .line 423
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v6, v1, -0x1

    const/4 v7, -0x1

    aput v7, v5, v6

    .line 420
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private msgnumOf(I)I
    .locals 5
    .param p1, "seqnum"    # I

    .prologue
    const/4 v1, -0x1

    .line 450
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-nez v2, :cond_0

    .line 463
    .end local p1    # "seqnum":I
    :goto_0
    return p1

    .line 452
    .restart local p1    # "seqnum":I
    :cond_0
    const/4 v2, 0x1

    if-ge p1, v2, :cond_2

    .line 453
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bad seqnum "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    :cond_1
    move p1, v1

    .line 455
    goto :goto_0

    .line 457
    :cond_2
    move v0, p1

    .local v0, "msgnum":I
    :goto_1
    iget v2, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-le v0, v2, :cond_4

    :cond_3
    move p1, v1

    .line 463
    goto :goto_0

    .line 458
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-ne v2, p1, :cond_5

    move p1, v0

    .line 459
    goto :goto_0

    .line 460
    :cond_5
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-gt v2, p1, :cond_3

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private shrink(II)V
    .locals 8
    .param p1, "newend"    # I
    .param p2, "oldend"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 350
    add-int/lit8 v3, p1, -0x1

    iput v3, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    .line 351
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "size now "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 353
    :cond_0
    iget v3, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-nez v3, :cond_2

    .line 354
    iput-object v7, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    .line 355
    iput-object v7, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 356
    :cond_2
    iget v3, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    const/16 v4, 0x40

    if-le v3, v4, :cond_3

    iget v3, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    iget-object v4, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_3

    .line 358
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "reallocate array"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 359
    iget v3, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    add-int/lit8 v3, v3, 0x40

    new-array v1, v3, [Lcom/sun/mail/imap/IMAPMessage;

    .line 360
    .local v1, "newm":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    iget v4, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    invoke-static {v3, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iput-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    .line 362
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v3, :cond_1

    .line 363
    iget v3, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    add-int/lit8 v3, v3, 0x40

    new-array v2, v3, [I

    .line 364
    .local v2, "news":[I
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    iget v4, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iput-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    goto :goto_0

    .line 368
    .end local v1    # "newm":[Lcom/sun/mail/imap/IMAPMessage;
    .end local v2    # "news":[I
    :cond_3
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 369
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clean "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 371
    :cond_4
    move v0, p1

    .local v0, "msgnum":I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 372
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v4, v0, -0x1

    aput-object v7, v3, v4

    .line 373
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v3, :cond_5

    .line 374
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v4, v0, -0x1

    aput v6, v3, v4

    .line 371
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addMessages(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "newSeqNum"    # I

    .prologue
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

    move-result-object v1

    const-string v2, " messages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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
    .locals 8
    .param p1, "seqnum"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/MessageCache;->msgnumOf(I)I

    move-result v2

    .line 182
    .local v2, "msgnum":I
    if-gez v2, :cond_1

    .line 183
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expunge no seqnum "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v4, v2, -0x1

    aget-object v1, v3, v4

    .line 188
    .local v1, "msg":Lcom/sun/mail/imap/IMAPMessage;
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

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 191
    :cond_2
    invoke-virtual {v1, v7}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 193
    :cond_3
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-nez v3, :cond_5

    .line 194
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "create seqnums array"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 196
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_4

    .line 198
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v4, v2, -0x1

    aput v6, v3, v4

    .line 199
    add-int/lit8 v0, v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    array-length v3, v3

    if-gt v0, v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v0, -0x1

    aput v5, v3, v4

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_4
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v4, v0, -0x1

    aput v0, v3, v4

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v4, v2, -0x1

    aput v6, v3, v4

    .line 203
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    array-length v3, v3

    if-gt v0, v3, :cond_0

    .line 204
    sget-boolean v3, Lcom/sun/mail/imap/MessageCache;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    if-ne v3, v7, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 205
    :cond_6
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    if-lez v3, :cond_7

    .line 206
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v4, v0, -0x1

    aget v5, v3, v4

    add-int/lit8 v5, v5, -0x1

    aput v5, v3, v4

    .line 203
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getMessage(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 5
    .param p1, "msgnum"    # I

    .prologue
    const/4 v4, 0x1

    .line 139
    if-lt p1, v4, :cond_0

    iget v1, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-le p1, v1, :cond_1

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message number ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") out of bounds ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v1, v2

    .line 143
    .local v0, "msg":Lcom/sun/mail/imap/IMAPMessage;
    if-nez v0, :cond_3

    .line 144
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create message number "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->folder:Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/IMAPFolder;->newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v2, p1, -0x1

    aput-object v0, v1, v2

    .line 149
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/MessageCache;->seqnumOf(I)I

    move-result v1

    if-gtz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "it\'s expunged!"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 154
    :cond_3
    return-object v0
.end method

.method public getMessageBySeqnum(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 4
    .param p1, "seqnum"    # I

    .prologue
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

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 170
    :cond_0
    const/4 v1, 0x0

    .line 172
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v1

    goto :goto_0
.end method

.method public removeExpungedMessages()[Lcom/sun/mail/imap/IMAPMessage;
    .locals 9

    .prologue
    .line 218
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "remove expunged messages"

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v1, "mlist":Ljava/util/List;
    const/4 v3, 0x1

    .line 230
    .local v3, "oldnum":I
    const/4 v2, 0x1

    .line 231
    .local v2, "newnum":I
    :goto_0
    iget v5, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-le v3, v5, :cond_1

    .line 248
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 249
    invoke-direct {p0, v2, v3}, Lcom/sun/mail/imap/MessageCache;->shrink(II)V

    .line 251
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Lcom/sun/mail/imap/IMAPMessage;

    .line 252
    .local v4, "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "return "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 254
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 255
    return-object v4

    .line 233
    .end local v4    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/MessageCache;->seqnumOf(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 234
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0

    .line 235
    .local v0, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    :cond_2
    if-eq v2, v3, :cond_3

    .line 240
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v6, v2, -0x1

    iget-object v7, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v8, v3, -0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 241
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_3

    .line 242
    iget-object v5, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, v2}, Lcom/sun/mail/imap/IMAPMessage;->setMessageNumber(I)V

    .line 244
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public removeExpungedMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/IMAPMessage;
    .locals 13
    .param p1, "msgs"    # [Ljavax/mail/Message;

    .prologue
    .line 268
    iget-object v9, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v10, "remove expunged messages"

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v3, "mlist":Ljava/util/List;
    array-length v9, p1

    new-array v4, v9, [I

    .line 277
    .local v4, "mnum":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v9, p1

    if-lt v0, v9, :cond_2

    .line 279
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 295
    const/4 v7, 0x1

    .line 296
    .local v7, "oldnum":I
    const/4 v6, 0x1

    .line 297
    .local v6, "newnum":I
    const/4 v5, 0x0

    .line 298
    .local v5, "mnumi":I
    const/4 v1, 0x0

    .line 299
    .local v1, "keepSeqnums":Z
    :goto_1
    iget v9, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-le v7, v9, :cond_3

    .line 334
    if-nez v1, :cond_0

    .line 335
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 336
    :cond_0
    invoke-direct {p0, v6, v7}, Lcom/sun/mail/imap/MessageCache;->shrink(II)V

    .line 338
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v8, v9, [Lcom/sun/mail/imap/IMAPMessage;

    .line 339
    .local v8, "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v9, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 340
    iget-object v9, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "return "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 341
    :cond_1
    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 342
    return-object v8

    .line 278
    .end local v1    # "keepSeqnums":Z
    .end local v5    # "mnumi":I
    .end local v6    # "newnum":I
    .end local v7    # "oldnum":I
    .end local v8    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :cond_2
    aget-object v9, p1, v0

    invoke-virtual {v9}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v9

    aput v9, v4, v0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .restart local v1    # "keepSeqnums":Z
    .restart local v5    # "mnumi":I
    .restart local v6    # "newnum":I
    .restart local v7    # "oldnum":I
    :cond_3
    array-length v9, v4

    if-ge v5, v9, :cond_6

    .line 306
    aget v9, v4, v5

    if-ne v7, v9, :cond_6

    .line 307
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/MessageCache;->seqnumOf(I)I

    move-result v9

    if-gtz v9, :cond_6

    .line 308
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 309
    .local v2, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :goto_2
    array-length v9, v4

    if-ge v5, v9, :cond_4

    aget v9, v4, v5

    if-le v9, v7, :cond_5

    .line 331
    .end local v2    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 316
    .restart local v2    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 319
    .end local v2    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_6
    if-eq v6, v7, :cond_8

    .line 321
    iget-object v9, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v10, v6, -0x1

    iget-object v11, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v12, v7, -0x1

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 322
    iget-object v9, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    if-eqz v9, :cond_7

    .line 323
    iget-object v9, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v9, v6}, Lcom/sun/mail/imap/IMAPMessage;->setMessageNumber(I)V

    .line 324
    :cond_7
    iget-object v9, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v9, :cond_8

    .line 325
    iget-object v9, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v10, v6, -0x1

    iget-object v11, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v12, v7, -0x1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 327
    :cond_8
    iget-object v9, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v10, v6, -0x1

    aget v9, v9, v10

    if-eq v9, v6, :cond_9

    .line 328
    const/4 v1, 0x1

    .line 329
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public seqnumOf(I)I
    .locals 4
    .param p1, "msgnum"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-nez v0, :cond_0

    .line 442
    .end local p1    # "msgnum":I
    :goto_0
    return p1

    .line 439
    .restart local p1    # "msgnum":I
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

    move-result-object v1

    const-string v2, " is seqnum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 441
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v1, p1, -0x1

    aget p1, v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    return v0
.end method
