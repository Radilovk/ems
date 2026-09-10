.class public Lcom/sun/mail/util/ASCIIUtility;
.super Ljava/lang/Object;
.source "ASCIIUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    const/16 v0, 0x400

    .line 294
    .local v0, "size":I
    instance-of v1, p0, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 296
    new-array v1, v0, [B

    .line 297
    .local v1, "buf":[B
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 298
    .local v2, "len":I
    goto :goto_1

    .line 300
    .end local v1    # "buf":[B
    .end local v2    # "len":I
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 301
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-array v3, v0, [B

    .line 302
    .local v3, "buf":[B
    nop

    :goto_0
    invoke-virtual {p0, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 304
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object v1, v2

    move v2, v5

    .line 306
    .end local v3    # "buf":[B
    .end local v5    # "len":I
    .local v1, "buf":[B
    .restart local v2    # "len":I
    :goto_1
    return-object v1

    .line 303
    .end local v2    # "len":I
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "buf":[B
    .restart local v5    # "len":I
    :cond_1
    invoke-virtual {v1, v3, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 279
    .local v0, "chars":[C
    array-length v1, v0

    .line 280
    .local v1, "size":I
    new-array v2, v1, [B

    .line 282
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 284
    .end local v3    # "i":I
    return-object v2

    .line 283
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-char v5, v0, v3

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    move v3, v4

    goto :goto_0
.end method

.method public static parseInt([BII)I
    .locals 1
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 140
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result v0

    return v0
.end method

.method public static parseInt([BIII)I
    .locals 9
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 69
    if-eqz p0, :cond_a

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "result":I
    const/4 v1, 0x0

    .line 74
    .local v1, "negative":Z
    move v2, p1

    .line 79
    .local v2, "i":I
    const-string v3, "illegal number"

    if-le p2, p1, :cond_9

    .line 80
    aget-byte v4, p0, v2

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_0

    .line 81
    const/4 v1, 0x1

    .line 82
    const/high16 v4, -0x80000000

    .line 83
    .local v4, "limit":I
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_0

    .line 85
    .end local v4    # "limit":I
    :cond_0
    const v4, -0x7fffffff

    .line 87
    .restart local v4    # "limit":I
    :goto_0
    div-int v5, v4, p3

    .line 88
    .local v5, "multmin":I
    if-ge v2, p2, :cond_2

    .line 89
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aget-byte v2, p0, v2

    int-to-char v2, v2

    invoke-static {v2, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 90
    .local v2, "digit":I
    if-ltz v2, :cond_1

    .line 95
    neg-int v0, v2

    .line 98
    .end local v2    # "digit":I
    move v2, v6

    goto :goto_1

    .line 91
    .restart local v2    # "digit":I
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "illegal number: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-direct {v3, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    .end local v6    # "i":I
    .local v2, "i":I
    :cond_2
    :goto_1
    if-lt v2, p2, :cond_5

    .line 113
    nop

    .line 116
    if-eqz v1, :cond_4

    .line 117
    add-int/lit8 v6, p1, 0x1

    if-le v2, v6, :cond_3

    .line 118
    return v0

    .line 120
    :cond_3
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 123
    :cond_4
    neg-int v3, v0

    return v3

    .line 100
    :cond_5
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .restart local v6    # "i":I
    aget-byte v2, p0, v2

    int-to-char v2, v2

    invoke-static {v2, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 101
    .local v2, "digit":I
    if-ltz v2, :cond_8

    .line 104
    if-lt v0, v5, :cond_7

    .line 107
    mul-int v0, v0, p3

    .line 108
    add-int v7, v4, v2

    if-lt v0, v7, :cond_6

    .line 111
    sub-int/2addr v0, v2

    move v2, v6

    goto :goto_1

    .line 109
    :cond_6
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 105
    :cond_7
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 102
    :cond_8
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 114
    .end local v4    # "limit":I
    .end local v5    # "multmin":I
    .end local v6    # "i":I
    .local v2, "i":I
    :cond_9
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    .end local v0    # "result":I
    .end local v1    # "negative":Z
    .end local v2    # "i":I
    :cond_a
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseLong([BII)J
    .locals 2
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 230
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong([BIII)J
    .locals 16
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 159
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-eqz p0, :cond_a

    .line 162
    const-wide/16 v3, 0x0

    .line 163
    .local v3, "result":J
    const/4 v5, 0x0

    .line 164
    .local v5, "negative":Z
    move/from16 v6, p1

    .line 169
    .local v6, "i":I
    const-string v7, "illegal number"

    if-le v1, v0, :cond_9

    .line 170
    aget-byte v8, p0, v6

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_0

    .line 171
    const/4 v5, 0x1

    .line 172
    const-wide/high16 v8, -0x8000000000000000L

    .line 173
    .local v8, "limit":J
    add-int/lit8 v6, v6, 0x1

    .line 174
    goto :goto_0

    .line 175
    .end local v8    # "limit":J
    :cond_0
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 177
    .restart local v8    # "limit":J
    :goto_0
    int-to-long v10, v2

    div-long v10, v8, v10

    .line 178
    .local v10, "multmin":J
    if-ge v6, v1, :cond_2

    .line 179
    add-int/lit8 v12, v6, 0x1

    .end local v6    # "i":I
    .local v12, "i":I
    aget-byte v6, p0, v6

    int-to-char v6, v6

    invoke-static {v6, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 180
    .local v6, "digit":I
    if-ltz v6, :cond_1

    .line 185
    neg-int v13, v6

    int-to-long v3, v13

    .line 188
    .end local v6    # "digit":I
    move v6, v12

    goto :goto_1

    .line 181
    .restart local v6    # "digit":I
    :cond_1
    new-instance v7, Ljava/lang/NumberFormatException;

    .line 182
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "illegal number: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 181
    invoke-direct {v7, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 188
    .end local v12    # "i":I
    .local v6, "i":I
    :cond_2
    :goto_1
    if-lt v6, v1, :cond_5

    .line 203
    nop

    .line 206
    if-eqz v5, :cond_4

    .line 207
    add-int/lit8 v12, v0, 0x1

    if-le v6, v12, :cond_3

    .line 208
    return-wide v3

    .line 210
    :cond_3
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-direct {v12, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 213
    :cond_4
    neg-long v12, v3

    return-wide v12

    .line 190
    :cond_5
    add-int/lit8 v12, v6, 0x1

    .end local v6    # "i":I
    .restart local v12    # "i":I
    aget-byte v6, p0, v6

    int-to-char v6, v6

    invoke-static {v6, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 191
    .local v6, "digit":I
    if-ltz v6, :cond_8

    .line 194
    cmp-long v13, v3, v10

    if-ltz v13, :cond_7

    .line 197
    int-to-long v13, v2

    mul-long v3, v3, v13

    .line 198
    int-to-long v13, v6

    add-long/2addr v13, v8

    cmp-long v15, v3, v13

    if-ltz v15, :cond_6

    .line 201
    int-to-long v13, v6

    sub-long/2addr v3, v13

    move v6, v12

    goto :goto_1

    .line 199
    :cond_6
    new-instance v13, Ljava/lang/NumberFormatException;

    invoke-direct {v13, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 195
    :cond_7
    new-instance v13, Ljava/lang/NumberFormatException;

    invoke-direct {v13, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 192
    :cond_8
    new-instance v13, Ljava/lang/NumberFormatException;

    invoke-direct {v13, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 204
    .end local v8    # "limit":J
    .end local v10    # "multmin":J
    .end local v12    # "i":I
    .local v6, "i":I
    :cond_9
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-direct {v8, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 160
    .end local v3    # "result":J
    .end local v5    # "negative":Z
    .end local v6    # "i":I
    :cond_a
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "null"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static toString(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/ByteArrayInputStream;

    .line 265
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 266
    .local v0, "size":I
    new-array v1, v0, [C

    .line 267
    .local v1, "theChars":[C
    new-array v2, v0, [B

    .line 269
    .local v2, "bytes":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 270
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 273
    .end local v3    # "i":I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 271
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v1, v3

    move v3, v4

    goto :goto_0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B

    .line 261
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 244
    sub-int v0, p2, p1

    .line 245
    .local v0, "size":I
    new-array v1, v0, [C

    .line 247
    .local v1, "theChars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p1

    .local v3, "j":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 250
    .end local v2    # "i":I
    .end local v3    # "j":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 248
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_0
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v4

    move v3, v5

    goto :goto_0
.end method
