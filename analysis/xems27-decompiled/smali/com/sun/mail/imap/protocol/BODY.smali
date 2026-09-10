.class public Lcom/sun/mail/imap/protocol/BODY;
.super Ljava/lang/Object;
.source "BODY.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C


# instance fields
.field private final data:Lcom/sun/mail/iap/ByteArray;

.field private final isHeader:Z

.field private final msgno:I

.field private final origin:I

.field private final section:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x42s
        0x4fs
        0x44s
        0x59s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 8
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->msgno:I

    .line 73
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 75
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 78
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/BODY;->section:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_1

    .line 82
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODY;->section:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const-string v5, "HEADER"

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BODY;->isHeader:Z

    .line 84
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->origin:I

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->origin:I

    .line 90
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    .line 91
    return-void

    .line 80
    :cond_1
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    .line 81
    nop

    .line 80
    const-string v1, "BODY parse error: missing ``]\'\' at section end"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    .line 77
    nop

    .line 76
    const-string v1, "BODY parse error: missing ``[\'\' at section start"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getByteArray()Lcom/sun/mail/iap/ByteArray;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    return-object v0
.end method

.method public getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->section:Ljava/lang/String;

    return-object v0
.end method

.method public isHeader()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BODY;->isHeader:Z

    return v0
.end method
