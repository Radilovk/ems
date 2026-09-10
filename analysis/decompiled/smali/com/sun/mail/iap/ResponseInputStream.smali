.class public Lcom/sun/mail/iap/ResponseInputStream;
.super Ljava/lang/Object;
.source "ResponseInputStream.java"


# static fields
.field private static final incrementSlop:I = 0x10

.field private static final maxIncrement:I = 0x40000

.field private static final minIncrement:I = 0x100


# instance fields
.field private bin:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x800

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    .line 71
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    return v0
.end method

.method public readResponse()Lcom/sun/mail/iap/ByteArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    return-object v0
.end method

.method public readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;
    .locals 14
    .param p1, "ba"    # Lcom/sun/mail/iap/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance p1, Lcom/sun/mail/iap/ByteArray;

    .end local p1    # "ba":Lcom/sun/mail/iap/ByteArray;
    const/16 v11, 0x80

    new-array v11, v11, [B

    const/4 v12, 0x0

    const/16 v13, 0x80

    invoke-direct {p1, v11, v12, v13}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    .line 94
    .restart local p1    # "ba":Lcom/sun/mail/iap/ByteArray;
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v3

    .line 95
    .local v3, "buffer":[B
    const/4 v8, 0x0

    .line 98
    .local v8, "idx":I
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 99
    .local v2, "b":I
    const/4 v6, 0x0

    .local v6, "gotCRLF":Z
    move v9, v8

    .line 102
    .end local v8    # "idx":I
    .local v9, "idx":I
    :goto_1
    if-nez v6, :cond_2

    .line 103
    iget-object v11, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v11, -0x1

    if-ne v2, v11, :cond_3

    .line 118
    :cond_2
    const/4 v11, -0x1

    if-ne v2, v11, :cond_7

    .line 119
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Connection dropped by server?"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 104
    :cond_3
    const/16 v11, 0xa

    if-ne v2, v11, :cond_4

    .line 105
    if-lez v9, :cond_4

    add-int/lit8 v11, v9, -0x1

    aget-byte v11, v3, v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_4

    .line 106
    const/4 v6, 0x1

    .line 108
    :cond_4
    array-length v11, v3

    if-lt v9, v11, :cond_6

    .line 109
    array-length v10, v3

    .line 110
    .local v10, "incr":I
    const/high16 v11, 0x40000

    if-le v10, v11, :cond_5

    .line 111
    const/high16 v10, 0x40000

    .line 112
    :cond_5
    invoke-virtual {p1, v10}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 113
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v3

    .line 115
    .end local v10    # "incr":I
    :cond_6
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    int-to-byte v11, v2

    aput-byte v11, v3, v9

    move v9, v8

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    goto :goto_1

    .line 123
    :cond_7
    const/4 v11, 0x5

    if-lt v9, v11, :cond_8

    add-int/lit8 v11, v9, -0x3

    aget-byte v11, v3, v11

    const/16 v12, 0x7d

    if-eq v11, v12, :cond_9

    .line 166
    :cond_8
    :goto_2
    invoke-virtual {p1, v9}, Lcom/sun/mail/iap/ByteArray;->setCount(I)V

    .line 167
    return-object p1

    .line 128
    :cond_9
    add-int/lit8 v7, v9, -0x4

    .local v7, "i":I
    :goto_3
    if-gez v7, :cond_b

    .line 132
    :cond_a
    if-ltz v7, :cond_8

    .line 135
    const/4 v4, 0x0

    .line 138
    .local v4, "count":I
    add-int/lit8 v11, v7, 0x1

    add-int/lit8 v12, v9, -0x3

    :try_start_0
    invoke-static {v3, v11, v12}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 144
    if-lez v4, :cond_e

    .line 145
    array-length v11, v3

    sub-int v1, v11, v9

    .line 146
    .local v1, "avail":I
    add-int/lit8 v11, v4, 0x10

    if-le v11, v1, :cond_d

    .line 148
    const/16 v11, 0x100

    add-int/lit8 v12, v4, 0x10

    sub-int/2addr v12, v1

    if-le v11, v12, :cond_c

    .line 149
    const/16 v11, 0x100

    .line 148
    :goto_4
    invoke-virtual {p1, v11}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 150
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v3

    move v8, v9

    .line 158
    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    :goto_5
    if-lez v4, :cond_1

    .line 159
    iget-object v11, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v11, v3, v8, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 160
    .local v0, "actual":I
    sub-int/2addr v4, v0

    .line 161
    add-int/2addr v8, v0

    goto :goto_5

    .line 129
    .end local v0    # "actual":I
    .end local v1    # "avail":I
    .end local v4    # "count":I
    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    :cond_b
    aget-byte v11, v3, v7

    const/16 v12, 0x7b

    if-eq v11, v12, :cond_a

    .line 128
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 139
    .restart local v4    # "count":I
    :catch_0
    move-exception v5

    .line 140
    .local v5, "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 149
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "avail":I
    :cond_c
    add-int/lit8 v11, v4, 0x10

    sub-int/2addr v11, v1

    goto :goto_4

    :cond_d
    move v8, v9

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    goto :goto_5

    .end local v1    # "avail":I
    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    :cond_e
    move v8, v9

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    goto/16 :goto_0
.end method
