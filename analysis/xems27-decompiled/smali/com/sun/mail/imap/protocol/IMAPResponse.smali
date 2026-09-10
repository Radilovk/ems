.class public Lcom/sun/mail/imap/protocol/IMAPResponse;
.super Lcom/sun/mail/iap/Response;
.source "IMAPResponse.java"


# instance fields
.field private key:Ljava/lang/String;

.field private number:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 0
    .param p1, "c"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 61
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 1
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 83
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 84
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    .line 85
    iget v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Response;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->init()V

    .line 98
    return-void
.end method

.method private init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isNO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isBAD()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isBYE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    .line 71
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    .line 72
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    return v0
.end method

.method public keyEquals(Ljava/lang/String;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readSimpleList()[Ljava/lang/String;
    .locals 5

    .line 109
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 111
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    .line 112
    return-object v1

    .line 113
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    .local v2, "start":I
    :goto_0
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x29

    if-ne v3, v4, :cond_3

    .line 123
    iget v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    if-le v3, v2, :cond_1

    .line 124
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-static {v3, v2, v4}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_1
    iget v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 128
    .local v3, "size":I
    if-lez v3, :cond_2

    .line 129
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 131
    :cond_2
    return-object v1

    .line 118
    .end local v3    # "size":I
    :cond_3
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4

    .line 119
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-static {v3, v2, v4}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 117
    :cond_4
    iget v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    goto :goto_0
.end method
