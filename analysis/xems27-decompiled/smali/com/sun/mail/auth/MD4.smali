.class public final Lcom/sun/mail/auth/MD4;
.super Ljava/lang/Object;
.source "MD4.java"


# static fields
.field private static final S11:I = 0x3

.field private static final S12:I = 0x7

.field private static final S13:I = 0xb

.field private static final S14:I = 0x13

.field private static final S21:I = 0x3

.field private static final S22:I = 0x5

.field private static final S23:I = 0x9

.field private static final S24:I = 0xd

.field private static final S31:I = 0x3

.field private static final S32:I = 0x9

.field private static final S33:I = 0xb

.field private static final S34:I = 0xf

.field private static final blockSize:I = 0x40

.field private static final padding:[B


# instance fields
.field private bufOfs:I

.field private final buffer:[B

.field private bytesProcessed:J

.field private final state:[I

.field private final x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 97
    const/16 v0, 0x88

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/mail/auth/MD4;->padding:[B

    .line 98
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/auth/MD4;->buffer:[B

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/mail/auth/MD4;->state:[I

    .line 106
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/mail/auth/MD4;->x:[I

    .line 107
    invoke-direct {p0}, Lcom/sun/mail/auth/MD4;->implReset()V

    .line 108
    return-void
.end method

.method private static FF(IIIIII)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I
    .param p3, "d"    # I
    .param p4, "x"    # I
    .param p5, "s"    # I

    .line 209
    and-int v0, p1, p2

    not-int v1, p1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    add-int/2addr v0, p4

    add-int/2addr p0, v0

    .line 210
    shl-int v0, p0, p5

    rsub-int/lit8 v1, p5, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static GG(IIIIII)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I
    .param p3, "d"    # I
    .param p4, "x"    # I
    .param p5, "s"    # I

    .line 214
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    add-int/2addr v0, p4

    const v1, 0x5a827999

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 215
    shl-int v0, p0, p5

    rsub-int/lit8 v1, p5, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static HH(IIIIII)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I
    .param p3, "d"    # I
    .param p4, "x"    # I
    .param p5, "s"    # I

    .line 219
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    add-int/2addr v0, p4

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 220
    shl-int v0, p0, p5

    rsub-int/lit8 v1, p5, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private engineUpdate([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "ofs"    # I
    .param p3, "len"    # I

    .line 172
    if-nez p3, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_5

    .line 178
    iget-wide v0, p0, Lcom/sun/mail/auth/MD4;->bytesProcessed:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/sun/mail/auth/MD4;->implReset()V

    .line 181
    :cond_1
    iget-wide v0, p0, Lcom/sun/mail/auth/MD4;->bytesProcessed:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sun/mail/auth/MD4;->bytesProcessed:J

    .line 183
    iget v0, p0, Lcom/sun/mail/auth/MD4;->bufOfs:I

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-eqz v0, :cond_2

    .line 184
    rsub-int/lit8 v0, v0, 0x40

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 185
    .local v0, "n":I
    iget-object v3, p0, Lcom/sun/mail/auth/MD4;->buffer:[B

    iget v4, p0, Lcom/sun/mail/auth/MD4;->bufOfs:I

    invoke-static {p1, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iget v3, p0, Lcom/sun/mail/auth/MD4;->bufOfs:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sun/mail/auth/MD4;->bufOfs:I

    .line 187
    add-int/2addr p2, v0

    .line 188
    sub-int/2addr p3, v0

    .line 189
    if-lt v3, v2, :cond_2

    .line 191
    iget-object v3, p0, Lcom/sun/mail/auth/MD4;->buffer:[B

    invoke-direct {p0, v3, v1}, Lcom/sun/mail/auth/MD4;->implCompress([BI)V

    .line 192
    iput v1, p0, Lcom/sun/mail/auth/MD4;->bufOfs:I

    .line 196
    .end local v0    # "n":I
    :cond_2
    :goto_0
    if-ge p3, v2, :cond_4

    .line 202
    if-lez p3, :cond_3

    .line 203
    iget-object v0, p0, Lcom/sun/mail/auth/MD4;->buffer:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iput p3, p0, Lcom/sun/mail/auth/MD4;->bufOfs:I

    .line 206
    :cond_3
    return-void

    .line 197
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/auth/MD4;->implCompress([BI)V

    .line 198
    add-int/lit8 p3, p3, -0x40

    .line 199
    add-int/lit8 p2, p2, 0x40

    goto :goto_0

    .line 176
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private implCompress([BI)V
    .locals 37
    .param p1, "buf"    # [B
    .param p2, "ofs"    # I

    .line 230
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p2

    .end local p2    # "ofs":I
    .local v1, "ofs":I
    .local v2, "xfs":I
    :goto_0
    iget-object v3, v0, Lcom/sun/mail/auth/MD4;->x:[I

    array-length v4, v3

    const/16 v5, 0x8

    if-lt v2, v4, :cond_0

    .line 236
    .end local v2    # "xfs":I
    iget-object v2, v0, Lcom/sun/mail/auth/MD4;->state:[I

    const/4 v4, 0x0

    aget v12, v2, v4

    .line 237
    .local v12, "a":I
    const/4 v13, 0x1

    aget v14, v2, v13

    .line 238
    .local v14, "b":I
    const/4 v15, 0x2

    aget v16, v2, v15

    .line 239
    .local v16, "c":I
    const/16 v17, 0x3

    aget v2, v2, v17

    .line 242
    .local v2, "d":I
    aget v10, v3, v4

    const/4 v11, 0x3

    move v6, v12

    move v7, v14

    move/from16 v8, v16

    move v9, v2

    invoke-static/range {v6 .. v11}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v3

    .line 243
    .end local v12    # "a":I
    .local v3, "a":I
    iget-object v6, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v10, v6, v13

    const/4 v11, 0x7

    move v6, v2

    move v7, v3

    move v8, v14

    move/from16 v9, v16

    invoke-static/range {v6 .. v11}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v2

    .line 244
    iget-object v6, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v10, v6, v15

    const/16 v11, 0xb

    move/from16 v6, v16

    move v7, v2

    move v8, v3

    move v9, v14

    invoke-static/range {v6 .. v11}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v12

    .line 245
    .end local v16    # "c":I
    .local v12, "c":I
    iget-object v6, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v10, v6, v17

    const/16 v11, 0x13

    move v6, v14

    move v7, v12

    move v8, v2

    move v9, v3

    invoke-static/range {v6 .. v11}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v6

    .line 246
    .end local v14    # "b":I
    .local v6, "b":I
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    const/4 v8, 0x4

    aget v22, v7, v8

    const/16 v23, 0x3

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v12

    move/from16 v21, v2

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v3

    .line 247
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    const/4 v9, 0x5

    aget v22, v7, v9

    const/16 v23, 0x7

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v21, v12

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v2

    .line 248
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    const/4 v10, 0x6

    aget v22, v7, v10

    const/16 v23, 0xb

    move/from16 v18, v12

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v6

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v7

    .line 249
    .end local v12    # "c":I
    .local v7, "c":I
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    const/4 v12, 0x7

    aget v22, v11, v12

    const/16 v23, 0x13

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v2

    move/from16 v21, v3

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v6

    .line 250
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v28, v11, v5

    const/16 v29, 0x3

    move/from16 v24, v3

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v2

    invoke-static/range {v24 .. v29}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v3

    .line 251
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    const/16 v14, 0x9

    aget v28, v11, v14

    const/16 v29, 0x7

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v6

    move/from16 v27, v7

    invoke-static/range {v24 .. v29}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v2

    .line 252
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    const/16 v16, 0xa

    aget v28, v11, v16

    const/16 v29, 0xb

    move/from16 v24, v7

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v6

    invoke-static/range {v24 .. v29}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v7

    .line 253
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    const/16 v30, 0xb

    aget v28, v11, v30

    const/16 v29, 0x13

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v2

    move/from16 v27, v3

    invoke-static/range {v24 .. v29}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v6

    .line 254
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    const/16 v24, 0xc

    aget v22, v11, v24

    const/16 v23, 0x3

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v2

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v3

    .line 255
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    const/16 v25, 0xd

    aget v22, v11, v25

    const/16 v23, 0x7

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v2

    .line 256
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    const/16 v26, 0xe

    aget v22, v11, v26

    const/16 v23, 0xb

    move/from16 v18, v7

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v6

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v7

    .line 257
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    const/16 v27, 0xf

    aget v22, v11, v27

    const/16 v23, 0x13

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v2

    move/from16 v21, v3

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->FF(IIIIII)I

    move-result v6

    .line 260
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v11, v4

    const/16 v36, 0x3

    move/from16 v31, v3

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v2

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v3

    .line 261
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v11, v8

    const/16 v36, 0x5

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v6

    move/from16 v34, v7

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v2

    .line 262
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v11, v5

    const/16 v36, 0x9

    move/from16 v31, v7

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v34, v6

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v7

    .line 263
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v11, v24

    const/16 v36, 0xd

    move/from16 v31, v6

    move/from16 v32, v7

    move/from16 v33, v2

    move/from16 v34, v3

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v6

    .line 264
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v11, v13

    const/16 v23, 0x3

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v2

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v3

    .line 265
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v11, v9

    const/16 v23, 0x5

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v2

    .line 266
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v11, v14

    const/16 v23, 0x9

    move/from16 v18, v7

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v6

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v7

    .line 267
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v11, v25

    const/16 v23, 0xd

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v2

    move/from16 v21, v3

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v6

    .line 268
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v11, v15

    const/16 v36, 0x3

    move/from16 v31, v3

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v2

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v3

    .line 269
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v11, v10

    const/16 v36, 0x5

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v6

    move/from16 v34, v7

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v2

    .line 270
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v11, v16

    const/16 v36, 0x9

    move/from16 v31, v7

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v34, v6

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v7

    .line 271
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v11, v26

    const/16 v36, 0xd

    move/from16 v31, v6

    move/from16 v32, v7

    move/from16 v33, v2

    move/from16 v34, v3

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v6

    .line 272
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v11, v17

    const/16 v23, 0x3

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v2

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v3

    .line 273
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v11, v12

    const/16 v23, 0x5

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v2

    .line 274
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v11, v30

    const/16 v23, 0x9

    move/from16 v18, v7

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v6

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v7

    .line 275
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v11, v27

    const/16 v23, 0xd

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v2

    move/from16 v21, v3

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->GG(IIIIII)I

    move-result v6

    .line 278
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v11, v4

    const/16 v36, 0x3

    move/from16 v31, v3

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v2

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v3

    .line 279
    iget-object v11, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v11, v5

    const/16 v36, 0x9

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v6

    move/from16 v34, v7

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v2

    .line 280
    iget-object v5, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v5, v8

    const/16 v36, 0xb

    move/from16 v31, v7

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v34, v6

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v5

    .line 281
    .end local v7    # "c":I
    .local v5, "c":I
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v7, v24

    const/16 v36, 0xf

    move/from16 v31, v6

    move/from16 v32, v5

    move/from16 v33, v2

    move/from16 v34, v3

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v6

    .line 282
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v7, v15

    const/16 v23, 0x3

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v5

    move/from16 v21, v2

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v3

    .line 283
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v7, v16

    const/16 v23, 0x9

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v21, v5

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v2

    .line 284
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v7, v10

    const/16 v23, 0xb

    move/from16 v18, v5

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v6

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v5

    .line 285
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v7, v26

    const/16 v23, 0xf

    move/from16 v18, v6

    move/from16 v19, v5

    move/from16 v20, v2

    move/from16 v21, v3

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v6

    .line 286
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v7, v13

    const/16 v36, 0x3

    move/from16 v31, v3

    move/from16 v32, v6

    move/from16 v33, v5

    move/from16 v34, v2

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v3

    .line 287
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v7, v14

    const/16 v36, 0x9

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v6

    move/from16 v34, v5

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v2

    .line 288
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v7, v9

    const/16 v36, 0xb

    move/from16 v31, v5

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v34, v6

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v5

    .line 289
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v35, v7, v25

    const/16 v36, 0xf

    move/from16 v31, v6

    move/from16 v32, v5

    move/from16 v33, v2

    move/from16 v34, v3

    invoke-static/range {v31 .. v36}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v6

    .line 290
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v7, v17

    const/16 v23, 0x3

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v5

    move/from16 v21, v2

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v3

    .line 291
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v7, v30

    const/16 v23, 0x9

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v21, v5

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v2

    .line 292
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v7, v12

    const/16 v23, 0xb

    move/from16 v18, v5

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v6

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v5

    .line 293
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->x:[I

    aget v22, v7, v27

    const/16 v23, 0xf

    move/from16 v18, v6

    move/from16 v19, v5

    move/from16 v20, v2

    move/from16 v21, v3

    invoke-static/range {v18 .. v23}, Lcom/sun/mail/auth/MD4;->HH(IIIIII)I

    move-result v6

    .line 295
    iget-object v7, v0, Lcom/sun/mail/auth/MD4;->state:[I

    aget v8, v7, v4

    add-int/2addr v8, v3

    aput v8, v7, v4

    .line 296
    aget v4, v7, v13

    add-int/2addr v4, v6

    aput v4, v7, v13

    .line 297
    aget v4, v7, v15

    add-int/2addr v4, v5

    aput v4, v7, v15

    .line 298
    aget v4, v7, v17

    add-int/2addr v4, v2

    aput v4, v7, v17

    .line 299
    return-void

    .line 231
    .end local v3    # "a":I
    .end local v5    # "c":I
    .end local v6    # "b":I
    .local v2, "xfs":I
    :cond_0
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v4, v5

    .line 232
    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    .line 231
    aput v4, v3, v2

    .line 233
    add-int/lit8 v1, v1, 0x4

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private implDigest([BI)V
    .locals 11
    .param p1, "out"    # [B
    .param p2, "ofs"    # I

    .line 143
    iget-wide v0, p0, Lcom/sun/mail/auth/MD4;->bytesProcessed:J

    const/4 v2, 0x3

    shl-long v2, v0, v2

    .line 145
    .local v2, "bitsProcessed":J
    long-to-int v1, v0

    const/16 v0, 0x3f

    and-int/2addr v1, v0

    .line 146
    .local v1, "index":I
    const/16 v4, 0x38

    if-ge v1, v4, :cond_0

    rsub-int/lit8 v5, v1, 0x38

    goto :goto_0

    :cond_0
    rsub-int/lit8 v5, v1, 0x78

    .line 147
    .local v5, "padLen":I
    :goto_0
    sget-object v6, Lcom/sun/mail/auth/MD4;->padding:[B

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v5}, Lcom/sun/mail/auth/MD4;->engineUpdate([BII)V

    .line 151
    iget-object v6, p0, Lcom/sun/mail/auth/MD4;->buffer:[B

    long-to-int v8, v2

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    .line 152
    const/16 v8, 0x39

    const/16 v9, 0x8

    shr-long v9, v2, v9

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v6, v8

    .line 153
    const/16 v8, 0x3a

    const/16 v9, 0x10

    shr-long v9, v2, v9

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v6, v8

    .line 154
    const/16 v8, 0x3b

    const/16 v9, 0x18

    shr-long v9, v2, v9

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v6, v8

    .line 155
    const/16 v8, 0x3c

    const/16 v9, 0x20

    shr-long v9, v2, v9

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v6, v8

    .line 156
    const/16 v8, 0x3d

    const/16 v9, 0x28

    shr-long v9, v2, v9

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v6, v8

    .line 157
    const/16 v8, 0x3e

    const/16 v9, 0x30

    shr-long v9, v2, v9

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v6, v8

    .line 158
    shr-long v8, v2, v4

    long-to-int v4, v8

    int-to-byte v4, v4

    aput-byte v4, v6, v0

    .line 159
    invoke-direct {p0, v6, v7}, Lcom/sun/mail/auth/MD4;->implCompress([BI)V

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sun/mail/auth/MD4;->state:[I

    array-length v6, v4

    if-lt v0, v6, :cond_1

    .line 169
    .end local v0    # "i":I
    return-void

    .line 163
    .restart local v0    # "i":I
    :cond_1
    aget v4, v4, v0

    .line 164
    .local v4, "x":I
    add-int/lit8 v6, p2, 0x1

    .end local p2    # "ofs":I
    .local v6, "ofs":I
    int-to-byte v7, v4

    aput-byte v7, p1, p2

    .line 165
    add-int/lit8 p2, v6, 0x1

    .end local v6    # "ofs":I
    .restart local p2    # "ofs":I
    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 166
    add-int/lit8 v6, p2, 0x1

    .end local p2    # "ofs":I
    .restart local v6    # "ofs":I
    shr-int/lit8 v7, v4, 0x10

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 167
    add-int/lit8 p2, v6, 0x1

    .end local v6    # "ofs":I
    .restart local p2    # "ofs":I
    shr-int/lit8 v7, v4, 0x18

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 162
    .end local v4    # "x":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private implReset()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/sun/mail/auth/MD4;->state:[I

    const v1, 0x67452301

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 130
    const/4 v1, 0x1

    const v3, -0x10325477

    aput v3, v0, v1

    .line 131
    const/4 v1, 0x2

    const v3, -0x67452302

    aput v3, v0, v1

    .line 132
    const/4 v1, 0x3

    const v3, 0x10325476

    aput v3, v0, v1

    .line 133
    iput v2, p0, Lcom/sun/mail/auth/MD4;->bufOfs:I

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/mail/auth/MD4;->bytesProcessed:J

    .line 135
    return-void
.end method


# virtual methods
.method public digest([B)[B
    .locals 2
    .param p1, "in"    # [B

    .line 117
    invoke-direct {p0}, Lcom/sun/mail/auth/MD4;->implReset()V

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/mail/auth/MD4;->engineUpdate([BII)V

    .line 119
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 120
    .local v0, "out":[B
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/auth/MD4;->implDigest([BI)V

    .line 121
    return-object v0
.end method
