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

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    return-object v0
.end method

.method public readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;
    .locals 9
    .param p1, "ba"    # Lcom/sun/mail/iap/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    const/16 v1, 0x80

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    move-object p1, v0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v0

    .line 95
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 98
    .local v1, "idx":I
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 99
    .local v2, "b":I
    const/4 v3, 0x0

    .line 102
    .local v3, "gotCRLF":Z
    nop

    :goto_1
    const/4 v4, -0x1

    if-nez v3, :cond_6

    .line 103
    iget-object v5, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    move v2, v5

    if-ne v5, v4, :cond_2

    goto :goto_2

    .line 104
    :cond_2
    const/16 v4, 0xa

    if-ne v2, v4, :cond_3

    .line 105
    if-lez v1, :cond_3

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v0, v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 106
    const/4 v3, 0x1

    .line 108
    :cond_3
    array-length v4, v0

    if-lt v1, v4, :cond_5

    .line 109
    array-length v4, v0

    .line 110
    .local v4, "incr":I
    const/high16 v5, 0x40000

    if-le v4, v5, :cond_4

    .line 111
    const/high16 v4, 0x40000

    .line 112
    :cond_4
    invoke-virtual {p1, v4}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 113
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v0

    .line 115
    .end local v4    # "incr":I
    :cond_5
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    int-to-byte v5, v2

    aput-byte v5, v0, v1

    move v1, v4

    goto :goto_1

    .line 118
    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    :cond_6
    :goto_2
    if-eq v2, v4, :cond_f

    .line 123
    const/4 v4, 0x5

    if-lt v1, v4, :cond_e

    add-int/lit8 v4, v1, -0x3

    aget-byte v4, v0, v4

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_7

    .line 124
    goto :goto_7

    .line 128
    :cond_7
    add-int/lit8 v4, v1, -0x4

    .local v4, "i":I
    :goto_3
    if-gez v4, :cond_8

    goto :goto_4

    .line 129
    :cond_8
    aget-byte v5, v0, v4

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_d

    .line 130
    nop

    .line 132
    :goto_4
    if-gez v4, :cond_9

    .line 133
    goto :goto_7

    .line 135
    :cond_9
    const/4 v5, 0x0

    .line 138
    .local v5, "count":I
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v1, -0x3

    :try_start_0
    invoke-static {v0, v6, v7}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 139
    nop

    .line 144
    if-lez v5, :cond_1

    .line 145
    array-length v6, v0

    sub-int/2addr v6, v1

    .line 146
    .local v6, "avail":I
    add-int/lit8 v7, v5, 0x10

    if-le v7, v6, :cond_b

    .line 148
    add-int/lit8 v7, v5, 0x10

    sub-int/2addr v7, v6

    const/16 v8, 0x100

    if-le v8, v7, :cond_a

    .line 149
    goto :goto_5

    :cond_a
    add-int/lit8 v7, v5, 0x10

    sub-int v8, v7, v6

    .line 148
    :goto_5
    invoke-virtual {p1, v8}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 150
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v0

    .line 158
    :cond_b
    :goto_6
    if-gtz v5, :cond_c

    .line 96
    .end local v2    # "b":I
    .end local v3    # "gotCRLF":Z
    .end local v4    # "i":I
    .end local v5    # "count":I
    .end local v6    # "avail":I
    goto :goto_0

    .line 159
    .restart local v2    # "b":I
    .restart local v3    # "gotCRLF":Z
    .restart local v4    # "i":I
    .restart local v5    # "count":I
    .restart local v6    # "avail":I
    :cond_c
    iget-object v7, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v7, v0, v1, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    .line 160
    .local v7, "actual":I
    sub-int/2addr v5, v7

    .line 161
    add-int/2addr v1, v7

    goto :goto_6

    .line 139
    .end local v6    # "avail":I
    .end local v7    # "actual":I
    :catch_0
    move-exception v6

    .line 140
    .local v6, "e":Ljava/lang/NumberFormatException;
    goto :goto_7

    .line 128
    .end local v5    # "count":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 166
    .end local v2    # "b":I
    .end local v3    # "gotCRLF":Z
    .end local v4    # "i":I
    :cond_e
    :goto_7
    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/ByteArray;->setCount(I)V

    .line 167
    return-object p1

    .line 119
    .restart local v2    # "b":I
    .restart local v3    # "gotCRLF":Z
    :cond_f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Connection dropped by server?"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
