.class public Lcom/sun/mail/iap/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field private static ASTRING_CHAR_DELIM:Ljava/lang/String; = null

.field private static ATOM_CHAR_DELIM:Ljava/lang/String; = null

.field public static final BAD:I = 0xc

.field public static final BYE:I = 0x10

.field public static final CONTINUATION:I = 0x1

.field public static final NO:I = 0x8

.field public static final OK:I = 0x4

.field public static final SYNTHETIC:I = 0x20

.field public static final TAGGED:I = 0x2

.field public static final TAG_MASK:I = 0x3

.field public static final TYPE_MASK:I = 0x1c

.field public static final UNTAGGED:I = 0x3

.field private static final increment:I = 0x64


# instance fields
.field protected buffer:[B

.field protected ex:Ljava/lang/Exception;

.field protected index:I

.field protected pindex:I

.field protected size:I

.field protected tag:Ljava/lang/String;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, " (){%*\"\\]"

    sput-object v0, Lcom/sun/mail/iap/Response;->ATOM_CHAR_DELIM:Ljava/lang/String;

    .line 96
    const-string v0, " (){%*\"\\"

    sput-object v0, Lcom/sun/mail/iap/Response;->ASTRING_CHAR_DELIM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 4
    .param p1, "p"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 59
    const/4 v2, 0x0

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 60
    iput-object v3, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getResponseBuffer()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    .line 114
    .local v0, "ba":Lcom/sun/mail/iap/ByteArray;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getInputStream()Lcom/sun/mail/iap/ResponseInputStream;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v1

    .line 115
    .local v1, "response":Lcom/sun/mail/iap/ByteArray;
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 116
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 118
    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 60
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 127
    iget v0, p1, Lcom/sun/mail/iap/Response;->index:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 128
    iget v0, p1, Lcom/sun/mail/iap/Response;->size:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 129
    iget-object v0, p1, Lcom/sun/mail/iap/Response;->buffer:[B

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 130
    iget v0, p1, Lcom/sun/mail/iap/Response;->type:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 131
    iget-object v0, p1, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 60
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 100
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 101
    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    .line 102
    return-void
.end method

.method public static byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    .locals 5
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    const/16 v4, 0x20

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "* BYE JavaMail Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "err":Ljava/lang/String;
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Lcom/sun/mail/iap/Response;

    invoke-direct {v1, v0}, Lcom/sun/mail/iap/Response;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "r":Lcom/sun/mail/iap/Response;
    iget v2, v1, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lcom/sun/mail/iap/Response;->type:I

    .line 146
    iput-object p0, v1, Lcom/sun/mail/iap/Response;->ex:Ljava/lang/Exception;

    .line 147
    return-object v1
.end method

.method private parse()V
    .locals 4

    .prologue
    .line 151
    const/4 v2, 0x0

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 153
    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-nez v2, :cond_0

    .line 185
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    .line 156
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 157
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_4

    .line 160
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 161
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 169
    :cond_2
    :goto_1
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 170
    .local v0, "mark":I
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 172
    const-string v1, ""

    .line 173
    :cond_3
    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 174
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 184
    :goto_2
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iput v2, p0, Lcom/sun/mail/iap/Response;->pindex:I

    goto :goto_0

    .line 163
    .end local v0    # "mark":I
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 164
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 166
    const-string v2, ""

    iput-object v2, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    goto :goto_1

    .line 175
    .restart local v0    # "mark":I
    .restart local v1    # "s":Ljava/lang/String;
    :cond_5
    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 176
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_2

    .line 177
    :cond_6
    const-string v2, "BAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 178
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_2

    .line 179
    :cond_7
    const-string v2, "BYE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 180
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_2

    .line 182
    :cond_8
    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_2
.end method

.method private parseString(ZZ)Ljava/lang/Object;
    .locals 10
    .param p1, "parseAtoms"    # Z
    .param p2, "returnString"    # Z

    .prologue
    const/16 v9, 0x22

    const/4 v4, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 425
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v6, v7

    .line 426
    .local v0, "b":B
    if-ne v0, v9, :cond_7

    .line 427
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 428
    iget v5, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 429
    .local v5, "start":I
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 431
    .local v1, "copyto":I
    :goto_0
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v7, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v6, v7, :cond_0

    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v6, v7

    if-ne v0, v9, :cond_2

    .line 442
    :cond_0
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v7, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v6, v7, :cond_5

    .line 487
    .end local v1    # "copyto":I
    .end local v5    # "start":I
    :cond_1
    :goto_1
    return-object v4

    .line 432
    .restart local v1    # "copyto":I
    .restart local v5    # "start":I
    :cond_2
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_3

    .line 433
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 434
    :cond_3
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    if-eq v6, v1, :cond_4

    .line 437
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget-object v7, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v8, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v7, v7, v8

    aput-byte v7, v6, v1

    .line 439
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 440
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 448
    :cond_5
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 450
    if-eqz p2, :cond_6

    .line 451
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-static {v6, v5, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 453
    :cond_6
    new-instance v4, Lcom/sun/mail/iap/ByteArray;

    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    sub-int v7, v1, v5

    invoke-direct {v4, v6, v5, v7}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    goto :goto_1

    .line 454
    .end local v1    # "copyto":I
    .end local v5    # "start":I
    :cond_7
    const/16 v6, 0x7b

    if-ne v0, v6, :cond_a

    .line 455
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 457
    .restart local v5    # "start":I
    :goto_2
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v6, v6, v7

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_8

    .line 460
    const/4 v2, 0x0

    .line 462
    .local v2, "count":I
    :try_start_0
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v6, v5, v7}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 468
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v5, v6, 0x3

    .line 469
    add-int v6, v5, v2

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 471
    if-eqz p2, :cond_9

    .line 472
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    add-int v7, v5, v2

    invoke-static {v6, v5, v7}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 458
    .end local v2    # "count":I
    :cond_8
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_2

    .line 463
    .restart local v2    # "count":I
    :catch_0
    move-exception v3

    .line 465
    .local v3, "nex":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 474
    .end local v3    # "nex":Ljava/lang/NumberFormatException;
    :cond_9
    new-instance v4, Lcom/sun/mail/iap/ByteArray;

    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-direct {v4, v6, v5, v2}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    goto :goto_1

    .line 475
    .end local v2    # "count":I
    .end local v5    # "start":I
    :cond_a
    if-eqz p1, :cond_b

    .line 476
    iget v5, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 478
    .restart local v5    # "start":I
    sget-object v6, Lcom/sun/mail/iap/Response;->ASTRING_CHAR_DELIM:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/sun/mail/iap/Response;->readDelimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "s":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 482
    new-instance v4, Lcom/sun/mail/iap/ByteArray;

    .end local v4    # "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-direct {v4, v6, v5, v7}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    goto/16 :goto_1

    .line 483
    .end local v5    # "start":I
    :cond_b
    const/16 v6, 0x4e

    if-eq v0, v6, :cond_c

    const/16 v6, 0x6e

    if-ne v0, v6, :cond_1

    .line 484
    :cond_c
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x3

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    goto/16 :goto_1
.end method

.method private readDelimString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    .line 239
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 241
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v2, v3, :cond_0

    .line 242
    const/4 v2, 0x0

    .line 250
    :goto_0
    return-object v2

    .line 245
    :cond_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 246
    .local v1, "start":I
    :goto_1
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v2, v3

    .local v0, "b":B
    if-le v0, v4, :cond_1

    .line 247
    int-to-char v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    if-lt v0, v4, :cond_1

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_2

    .line 250
    .end local v0    # "b":B
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v2, v1, v3}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 248
    .restart local v0    # "b":B
    :cond_2
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_1
.end method

.method private readStringList(Z)[Ljava/lang/String;
    .locals 6
    .param p1, "atom"    # Z

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 285
    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x28

    if-eq v3, v4, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-object v0

    .line 287
    :cond_1
    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 289
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 291
    .local v2, "v":Ljava/util/Vector;
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 292
    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x29

    if-ne v3, v4, :cond_2

    .line 294
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 295
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 296
    new-array v0, v1, [Ljava/lang/String;

    .line 297
    .local v0, "s":[Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    .end local v0    # "s":[Ljava/lang/String;
    .end local v1    # "size":I
    :cond_3
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->ex:Ljava/lang/Exception;

    return-object v0
.end method

.method public getRest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 543
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    return v0
.end method

.method public isBAD()Z
    .locals 2

    .prologue
    .line 515
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBYE()Z
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContinuation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 495
    iget v1, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNO()Z
    .locals 2

    .prologue
    .line 511
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOK()Z
    .locals 2

    .prologue
    .line 507
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSynthetic()Z
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTagged()Z
    .locals 2

    .prologue
    .line 499
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnTagged()Z
    .locals 2

    .prologue
    .line 503
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peekByte()B
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readAtom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/sun/mail/iap/Response;->ATOM_CHAR_DELIM:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sun/mail/iap/Response;->readDelimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAtomString()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 411
    invoke-direct {p0, v0, v0}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readAtomStringList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/mail/iap/Response;->readStringList(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte()B
    .locals 3

    .prologue
    .line 218
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByteArray()Lcom/sun/mail/iap/ByteArray;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 394
    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    .line 396
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/iap/ByteArray;

    goto :goto_0
.end method

.method public readBytes()Ljava/io/ByteArrayInputStream;
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    .line 373
    .local v0, "ba":Lcom/sun/mail/iap/ByteArray;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v1

    .line 376
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readLong()J
    .locals 4

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 338
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 339
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    :cond_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_2

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BII)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 348
    :goto_1
    return-wide v2

    .line 340
    :cond_1
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 345
    :catch_0
    move-exception v1

    .line 348
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public readNumber()I
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 314
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 315
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    :cond_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_2

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 324
    :goto_1
    return v1

    .line 316
    :cond_1
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 321
    :catch_0
    move-exception v1

    .line 324
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readString(C)Ljava/lang/String;
    .locals 3
    .param p1, "delim"    # C

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 264
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v1, v2, :cond_0

    .line 265
    const/4 v1, 0x0

    .line 271
    :goto_0
    return-object v1

    .line 267
    :cond_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 268
    .local v0, "start":I
    :goto_1
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    if-ne v1, p1, :cond_2

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 269
    :cond_2
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_1
.end method

.method public readStringList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/iap/Response;->readStringList(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/sun/mail/iap/Response;->pindex:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 561
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 202
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 203
    return-void
.end method

.method public skipSpaces()V
    .locals 2

    .prologue
    .line 189
    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 191
    :cond_0
    return-void

    .line 190
    :cond_1
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0
.end method

.method public skipToken()V
    .locals 2

    .prologue
    .line 197
    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 199
    :cond_0
    return-void

    .line 198
    :cond_1
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
