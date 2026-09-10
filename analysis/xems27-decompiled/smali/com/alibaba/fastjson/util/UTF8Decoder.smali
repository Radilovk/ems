.class public Lcom/alibaba/fastjson/util/UTF8Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF8Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;
    }
.end annotation


# static fields
.field private static final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    sget-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 39
    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 16
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 120
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 121
    .local v8, "srcArray":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    .local v0, "srcPosition":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int v9, v1, v2

    .line 124
    .local v9, "srcLength":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v10

    .line 125
    .local v10, "destArray":[C
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 126
    .local v1, "destPosition":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int v11, v2, v3

    .line 127
    .local v11, "destLength":I
    sub-int v2, v9, v0

    sub-int v3, v11, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v12, v1, v2

    .line 130
    .local v12, "destLengthASCII":I
    :goto_0
    if-ge v1, v12, :cond_0

    aget-byte v2, v8, v0

    if-ltz v2, :cond_0

    .line 131
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "destPosition":I
    .local v2, "destPosition":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "srcPosition":I
    .local v3, "srcPosition":I
    aget-byte v0, v8, v0

    int-to-char v0, v0

    aput-char v0, v10, v1

    move v1, v2

    move v0, v3

    goto :goto_0

    .line 134
    .end local v2    # "destPosition":I
    .end local v3    # "srcPosition":I
    .restart local v0    # "srcPosition":I
    .restart local v1    # "destPosition":I
    :cond_0
    move v13, v0

    move v14, v1

    .end local v0    # "srcPosition":I
    .end local v1    # "destPosition":I
    .local v13, "srcPosition":I
    .local v14, "destPosition":I
    :goto_1
    if-ge v13, v9, :cond_10

    .line 135
    aget-byte v15, v8, v13

    .line 136
    .local v15, "b1":I
    if-ltz v15, :cond_2

    .line 138
    if-lt v14, v11, :cond_1

    .line 139
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 141
    :cond_1
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "destPosition":I
    .local v0, "destPosition":I
    int-to-char v1, v15

    aput-char v1, v10, v14

    .line 142
    add-int/lit8 v13, v13, 0x1

    move v14, v0

    goto/16 :goto_4

    .line 143
    .end local v0    # "destPosition":I
    .restart local v14    # "destPosition":I
    :cond_2
    shr-int/lit8 v0, v15, 0x5

    const/4 v1, -0x2

    const/4 v2, 0x2

    if-ne v0, v1, :cond_6

    .line 145
    sub-int v0, v9, v13

    if-lt v0, v2, :cond_5

    if-lt v14, v11, :cond_3

    goto :goto_2

    .line 148
    :cond_3
    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v8, v0

    .line 149
    .local v0, "b2":I
    invoke-static {v15, v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed2(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    invoke-static {v6, v13, v7, v14, v2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 152
    :cond_4
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "destPosition":I
    .restart local v1    # "destPosition":I
    shl-int/lit8 v2, v15, 0x6

    xor-int/2addr v2, v0

    xor-int/lit16 v2, v2, 0xf80

    int-to-char v2, v2

    aput-char v2, v10, v14

    .line 153
    nop

    .end local v0    # "b2":I
    add-int/lit8 v13, v13, 0x2

    .line 154
    move v14, v1

    goto/16 :goto_4

    .line 146
    .end local v1    # "destPosition":I
    .restart local v14    # "destPosition":I
    :cond_5
    :goto_2
    const/4 v5, 0x2

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 154
    :cond_6
    shr-int/lit8 v0, v15, 0x4

    if-ne v0, v1, :cond_a

    .line 156
    sub-int v0, v9, v13

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    if-lt v14, v11, :cond_7

    goto :goto_3

    .line 159
    :cond_7
    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v8, v0

    .line 160
    .restart local v0    # "b2":I
    add-int/lit8 v2, v13, 0x2

    aget-byte v2, v8, v2

    .line 161
    .local v2, "b3":I
    invoke-static {v15, v0, v2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed3(III)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 162
    invoke-static {v6, v13, v7, v14, v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 164
    :cond_8
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "destPosition":I
    .restart local v1    # "destPosition":I
    shl-int/lit8 v3, v15, 0xc

    shl-int/lit8 v4, v0, 0x6

    xor-int/2addr v3, v4

    xor-int/2addr v3, v2

    xor-int/lit16 v3, v3, 0x1f80

    int-to-char v3, v3

    aput-char v3, v10, v14

    .line 165
    nop

    .end local v0    # "b2":I
    .end local v2    # "b3":I
    add-int/lit8 v13, v13, 0x3

    .line 166
    move v14, v1

    goto :goto_4

    .line 157
    .end local v1    # "destPosition":I
    .restart local v14    # "destPosition":I
    :cond_9
    :goto_3
    const/4 v5, 0x3

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 166
    :cond_a
    shr-int/lit8 v0, v15, 0x3

    if-ne v0, v1, :cond_f

    .line 168
    sub-int v0, v9, v13

    const/4 v1, 0x4

    if-lt v0, v1, :cond_e

    sub-int v0, v11, v14

    if-ge v0, v2, :cond_b

    goto :goto_6

    .line 171
    :cond_b
    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v8, v0

    .line 172
    .restart local v0    # "b2":I
    add-int/lit8 v2, v13, 0x2

    aget-byte v2, v8, v2

    .line 173
    .restart local v2    # "b3":I
    add-int/lit8 v3, v13, 0x3

    aget-byte v3, v8, v3

    .line 174
    .local v3, "b4":I
    and-int/lit8 v4, v15, 0x7

    shl-int/lit8 v4, v4, 0x12

    and-int/lit8 v5, v0, 0x3f

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    and-int/lit8 v5, v2, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x3f

    or-int/2addr v4, v5

    .line 175
    .local v4, "uc":I
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed4(III)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v4}, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->neededFor(I)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_5

    .line 178
    :cond_c
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "destPosition":I
    .restart local v1    # "destPosition":I
    invoke-static {v4}, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->high(I)C

    move-result v5

    aput-char v5, v10, v14

    .line 179
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "destPosition":I
    .local v5, "destPosition":I
    invoke-static {v4}, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->low(I)C

    move-result v14

    aput-char v14, v10, v1

    .line 180
    nop

    .end local v0    # "b2":I
    .end local v2    # "b3":I
    .end local v3    # "b4":I
    .end local v4    # "uc":I
    add-int/lit8 v13, v13, 0x4

    .line 181
    move v14, v5

    .line 184
    .end local v5    # "destPosition":I
    .end local v15    # "b1":I
    .restart local v14    # "destPosition":I
    :goto_4
    goto/16 :goto_1

    .line 176
    .restart local v0    # "b2":I
    .restart local v2    # "b3":I
    .restart local v3    # "b4":I
    .restart local v4    # "uc":I
    .restart local v15    # "b1":I
    :cond_d
    :goto_5
    invoke-static {v6, v13, v7, v14, v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 169
    .end local v0    # "b2":I
    .end local v2    # "b3":I
    .end local v3    # "b4":I
    .end local v4    # "uc":I
    :cond_e
    :goto_6
    const/4 v5, 0x4

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 182
    :cond_f
    const/4 v0, 0x1

    invoke-static {v6, v13, v7, v14, v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 185
    .end local v15    # "b1":I
    :cond_10
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static isMalformed2(II)Z
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I

    .line 47
    and-int/lit8 v0, p0, 0x1e

    if-eqz v0, :cond_1

    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isMalformed3(III)Z
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I
    .param p2, "b3"    # I

    .line 53
    const/16 v0, 0x80

    const/16 v1, -0x20

    if-ne p0, v1, :cond_0

    and-int/lit16 v1, p1, 0xe0

    if-eq v1, v0, :cond_2

    :cond_0
    and-int/lit16 v1, p1, 0xc0

    if-ne v1, v0, :cond_2

    and-int/lit16 v1, p2, 0xc0

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isMalformed4(III)Z
    .locals 2
    .param p0, "b2"    # I
    .param p1, "b3"    # I
    .param p2, "b4"    # I

    .line 62
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v1, :cond_1

    and-int/lit16 v0, p2, 0xc0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isNotContinuation(I)Z
    .locals 2
    .param p0, "b"    # I

    .line 42
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 2
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "n"    # I

    .line 66
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_1
    invoke-static {p1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "sp"    # I
    .param p2, "dst"    # Ljava/nio/CharBuffer;
    .param p3, "dp"    # I
    .param p4, "nb"    # I

    .line 107
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    invoke-static {p0, p4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 109
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 110
    return-object v0
.end method

.method public static malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 8
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "nb"    # I

    .line 73
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    const/16 v3, 0x80

    const/4 v4, 0x3

    if-eq p1, v4, :cond_6

    if-ne p1, v0, :cond_5

    .line 96
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 97
    .local v0, "b1":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 98
    .local v5, "b2":I
    const/16 v6, 0xf4

    if-gt v0, v6, :cond_4

    const/16 v7, 0xf0

    if-ne v0, v7, :cond_0

    const/16 v7, 0x90

    if-lt v5, v7, :cond_4

    const/16 v7, 0xbf

    if-gt v5, v7, :cond_4

    :cond_0
    if-ne v0, v6, :cond_1

    and-int/lit16 v6, v5, 0xf0

    if-ne v6, v3, :cond_4

    :cond_1
    invoke-static {v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 100
    :cond_3
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 98
    :cond_4
    :goto_0
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 102
    .end local v0    # "b1":I
    .end local v5    # "b2":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 92
    :cond_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 93
    .restart local v0    # "b1":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 94
    .local v4, "b2":I
    const/16 v5, -0x20

    if-ne v0, v5, :cond_7

    and-int/lit16 v5, v4, 0xe0

    if-eq v5, v3, :cond_8

    :cond_7
    invoke-static {v4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    goto :goto_1

    :cond_9
    const/4 v1, 0x2

    :goto_1
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 90
    .end local v0    # "b1":I
    .end local v4    # "b2":I
    :cond_a
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 75
    :cond_b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 76
    .local v2, "b1":I
    shr-int/lit8 v3, v2, 0x2

    const/4 v4, 0x5

    const/4 v5, -0x2

    if-ne v3, v5, :cond_d

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_c

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0

    .line 79
    :cond_c
    invoke-static {p0, v4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 81
    :cond_d
    shr-int/lit8 v0, v2, 0x1

    if-ne v0, v5, :cond_f

    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v4, :cond_e

    .line 84
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0

    .line 86
    :cond_e
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 88
    :cond_f
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method static updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
    .locals 0
    .param p0, "src"    # Ljava/nio/Buffer;
    .param p1, "sp"    # I
    .param p2, "dst"    # Ljava/nio/Buffer;
    .param p3, "dp"    # I

    .line 195
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 196
    invoke-virtual {p2, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 197
    return-void
.end method

.method private static xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/Buffer;
    .param p1, "sp"    # I
    .param p2, "sl"    # I
    .param p3, "dst"    # Ljava/nio/Buffer;
    .param p4, "dp"    # I
    .param p5, "nb"    # I

    .line 114
    invoke-static {p0, p1, p3, p4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 115
    if-eqz p5, :cond_1

    sub-int v0, p2, p1

    if-ge v0, p5, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_1
    return-object v0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
