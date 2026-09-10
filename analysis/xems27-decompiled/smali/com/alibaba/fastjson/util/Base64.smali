.class public Lcom/alibaba/fastjson/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final CA:[C

.field public static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    .line 14
    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    .line 16
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v1, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    array-length v1, v1

    .local v1, "iS":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 18
    sget-object v2, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    .end local v0    # "i":I
    .end local v1    # "iS":I
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/16 v1, 0x3d

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFast(Ljava/lang/String;)[B
    .locals 14
    .param p0, "s"    # Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 157
    .local v0, "sLen":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 158
    new-array v1, v1, [B

    return-object v1

    .line 161
    :cond_0
    const/4 v2, 0x0

    .local v2, "sIx":I
    add-int/lit8 v3, v0, -0x1

    .line 164
    .local v3, "eIx":I
    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    :goto_1
    if-lez v3, :cond_2

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 169
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 173
    .local v4, "pad":I
    :goto_2
    sub-int v5, v3, v2

    add-int/2addr v5, v6

    .line 174
    .local v5, "cCnt":I
    const/16 v7, 0x4c

    if-le v0, v7, :cond_6

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    div-int/lit8 v1, v5, 0x4e

    :cond_5
    shl-int/2addr v1, v6

    .line 176
    .local v1, "sepCnt":I
    :cond_6
    sub-int v6, v5, v1

    mul-int/lit8 v6, v6, 0x6

    shr-int/lit8 v6, v6, 0x3

    sub-int/2addr v6, v4

    .line 177
    .local v6, "len":I
    new-array v7, v6, [B

    .line 180
    .local v7, "dArr":[B
    const/4 v8, 0x0

    .line 181
    .local v8, "d":I
    const/4 v9, 0x0

    .local v9, "cc":I
    div-int/lit8 v10, v6, 0x3

    mul-int/lit8 v10, v10, 0x3

    .local v10, "eLen":I
    :goto_3
    if-ge v8, v10, :cond_8

    .line 183
    sget-object v11, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v2, 0x1

    .end local v2    # "sIx":I
    .local v12, "sIx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v2, v11, v2

    shl-int/lit8 v2, v2, 0x12

    sget-object v11, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "sIx":I
    .local v13, "sIx":I
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v2, v11

    sget-object v11, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "sIx":I
    .restart local v12    # "sIx":I
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v11, v11, v13

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v2, v11

    sget-object v11, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v13, v12, 0x1

    .line 184
    .end local v12    # "sIx":I
    .restart local v13    # "sIx":I
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    or-int/2addr v2, v11

    .line 187
    .local v2, "i":I
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "d":I
    .local v11, "d":I
    shr-int/lit8 v12, v2, 0x10

    int-to-byte v12, v12

    aput-byte v12, v7, v8

    .line 188
    add-int/lit8 v8, v11, 0x1

    .end local v11    # "d":I
    .restart local v8    # "d":I
    shr-int/lit8 v12, v2, 0x8

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    .line 189
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "d":I
    .restart local v11    # "d":I
    int-to-byte v12, v2

    aput-byte v12, v7, v8

    .line 192
    if-lez v1, :cond_7

    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x13

    if-ne v9, v8, :cond_7

    .line 193
    add-int/lit8 v13, v13, 0x2

    .line 194
    const/4 v8, 0x0

    move v9, v8

    move v2, v13

    .end local v9    # "cc":I
    .local v8, "cc":I
    goto :goto_4

    .line 192
    .end local v8    # "cc":I
    .restart local v9    # "cc":I
    :cond_7
    move v2, v13

    .line 196
    .end local v13    # "sIx":I
    .local v2, "sIx":I
    :goto_4
    move v8, v11

    goto :goto_3

    .line 198
    .end local v9    # "cc":I
    .end local v10    # "eLen":I
    .end local v11    # "d":I
    .local v8, "d":I
    :cond_8
    if-ge v8, v6, :cond_a

    .line 200
    const/4 v9, 0x0

    .line 201
    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    sub-int v11, v3, v4

    if-gt v2, v11, :cond_9

    .line 202
    sget-object v11, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v2, 0x1

    .end local v2    # "sIx":I
    .restart local v12    # "sIx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v2, v11, v2

    mul-int/lit8 v11, v10, 0x6

    rsub-int/lit8 v11, v11, 0x12

    shl-int/2addr v2, v11

    or-int/2addr v9, v2

    .line 201
    add-int/lit8 v10, v10, 0x1

    move v2, v12

    goto :goto_5

    .line 204
    .end local v10    # "j":I
    .end local v12    # "sIx":I
    .restart local v2    # "sIx":I
    :cond_9
    const/16 v10, 0x10

    .local v10, "r":I
    :goto_6
    if-ge v8, v6, :cond_a

    .line 205
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "d":I
    .restart local v11    # "d":I
    shr-int v12, v9, v10

    int-to-byte v12, v12

    aput-byte v12, v7, v8

    .line 204
    add-int/lit8 v10, v10, -0x8

    move v8, v11

    goto :goto_6

    .line 208
    .end local v9    # "i":I
    .end local v10    # "r":I
    .end local v11    # "d":I
    .restart local v8    # "d":I
    :cond_a
    return-object v7
.end method

.method public static decodeFast(Ljava/lang/String;II)[B
    .locals 13
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .line 90
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 91
    new-array v0, v0, [B

    return-object v0

    .line 94
    :cond_0
    move v1, p1

    .local v1, "sIx":I
    add-int v2, p1, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 97
    .local v2, "eIx":I
    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v4, v4, v5

    if-gez v4, :cond_1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    :goto_1
    if-lez v2, :cond_2

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 102
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 106
    .local v4, "pad":I
    :goto_2
    sub-int v5, v2, v1

    add-int/2addr v5, v3

    .line 107
    .local v5, "cCnt":I
    const/16 v6, 0x4c

    if-le p2, v6, :cond_6

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_5

    div-int/lit8 v0, v5, 0x4e

    :cond_5
    shl-int/2addr v0, v3

    .line 109
    .local v0, "sepCnt":I
    :cond_6
    sub-int v3, v5, v0

    mul-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v4

    .line 110
    .local v3, "len":I
    new-array v6, v3, [B

    .line 113
    .local v6, "bytes":[B
    const/4 v7, 0x0

    .line 114
    .local v7, "d":I
    const/4 v8, 0x0

    .local v8, "cc":I
    div-int/lit8 v9, v3, 0x3

    mul-int/lit8 v9, v9, 0x3

    .local v9, "eLen":I
    :goto_3
    if-ge v7, v9, :cond_8

    .line 116
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "sIx":I
    .local v11, "sIx":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v1, v10, v1

    shl-int/lit8 v1, v1, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "sIx":I
    .local v12, "sIx":I
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v1, v10

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "sIx":I
    .restart local v11    # "sIx":I
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v1, v10

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "sIx":I
    .restart local v12    # "sIx":I
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    or-int/2addr v1, v10

    .line 119
    .local v1, "i":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .local v10, "d":I
    shr-int/lit8 v11, v1, 0x10

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    .line 120
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "d":I
    .restart local v7    # "d":I
    shr-int/lit8 v11, v1, 0x8

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    .line 121
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .restart local v10    # "d":I
    int-to-byte v11, v1

    aput-byte v11, v6, v7

    .line 124
    if-lez v0, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/16 v7, 0x13

    if-ne v8, v7, :cond_7

    .line 125
    add-int/lit8 v12, v12, 0x2

    .line 126
    const/4 v7, 0x0

    move v8, v7

    move v1, v12

    .end local v8    # "cc":I
    .local v7, "cc":I
    goto :goto_4

    .line 124
    .end local v7    # "cc":I
    .restart local v8    # "cc":I
    :cond_7
    move v1, v12

    .line 128
    .end local v12    # "sIx":I
    .local v1, "sIx":I
    :goto_4
    move v7, v10

    goto :goto_3

    .line 130
    .end local v8    # "cc":I
    .end local v9    # "eLen":I
    .end local v10    # "d":I
    .local v7, "d":I
    :cond_8
    if-ge v7, v3, :cond_a

    .line 132
    const/4 v8, 0x0

    .line 133
    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    sub-int v10, v2, v4

    if-gt v1, v10, :cond_9

    .line 134
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "sIx":I
    .restart local v11    # "sIx":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v1, v10, v1

    mul-int/lit8 v10, v9, 0x6

    rsub-int/lit8 v10, v10, 0x12

    shl-int/2addr v1, v10

    or-int/2addr v8, v1

    .line 133
    add-int/lit8 v9, v9, 0x1

    move v1, v11

    goto :goto_5

    .line 136
    .end local v9    # "j":I
    .end local v11    # "sIx":I
    .restart local v1    # "sIx":I
    :cond_9
    const/16 v9, 0x10

    .local v9, "r":I
    :goto_6
    if-ge v7, v3, :cond_a

    .line 137
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .restart local v10    # "d":I
    shr-int v11, v8, v9

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    .line 136
    add-int/lit8 v9, v9, -0x8

    move v7, v10

    goto :goto_6

    .line 140
    .end local v8    # "i":I
    .end local v9    # "r":I
    .end local v10    # "d":I
    .restart local v7    # "d":I
    :cond_a
    return-object v6
.end method

.method public static decodeFast([CII)[B
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .line 35
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 36
    new-array v0, v0, [B

    return-object v0

    .line 39
    :cond_0
    move v1, p1

    .local v1, "sIx":I
    add-int v2, p1, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 42
    .local v2, "eIx":I
    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v5, p0, v1

    aget v4, v4, v5

    if-gez v4, :cond_1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    if-lez v2, :cond_2

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v5, p0, v2

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 47
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 50
    :cond_2
    aget-char v4, p0, v2

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, -0x1

    aget-char v4, p0, v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 51
    .local v4, "pad":I
    :goto_2
    sub-int v5, v2, v1

    add-int/2addr v5, v3

    .line 52
    .local v5, "cCnt":I
    const/16 v6, 0x4c

    if-le p2, v6, :cond_6

    aget-char v6, p0, v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_5

    div-int/lit8 v0, v5, 0x4e

    :cond_5
    shl-int/2addr v0, v3

    .line 54
    .local v0, "sepCnt":I
    :cond_6
    sub-int v3, v5, v0

    mul-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v4

    .line 55
    .local v3, "len":I
    new-array v6, v3, [B

    .line 58
    .local v6, "bytes":[B
    const/4 v7, 0x0

    .line 59
    .local v7, "d":I
    const/4 v8, 0x0

    .local v8, "cc":I
    div-int/lit8 v9, v3, 0x3

    mul-int/lit8 v9, v9, 0x3

    .local v9, "eLen":I
    :goto_3
    if-ge v7, v9, :cond_8

    .line 61
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "sIx":I
    .local v11, "sIx":I
    aget-char v1, p0, v1

    aget v1, v10, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "sIx":I
    .local v12, "sIx":I
    aget-char v11, p0, v11

    aget v11, v10, v11

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v1, v11

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "sIx":I
    .restart local v11    # "sIx":I
    aget-char v12, p0, v12

    aget v12, v10, v12

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v1, v12

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "sIx":I
    .restart local v12    # "sIx":I
    aget-char v11, p0, v11

    aget v10, v10, v11

    or-int/2addr v1, v10

    .line 64
    .local v1, "i":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .local v10, "d":I
    shr-int/lit8 v11, v1, 0x10

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    .line 65
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "d":I
    .restart local v7    # "d":I
    shr-int/lit8 v11, v1, 0x8

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    .line 66
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .restart local v10    # "d":I
    int-to-byte v11, v1

    aput-byte v11, v6, v7

    .line 69
    if-lez v0, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/16 v7, 0x13

    if-ne v8, v7, :cond_7

    .line 70
    add-int/lit8 v12, v12, 0x2

    .line 71
    const/4 v7, 0x0

    move v8, v7

    move v1, v12

    .end local v8    # "cc":I
    .local v7, "cc":I
    goto :goto_4

    .line 69
    .end local v7    # "cc":I
    .restart local v8    # "cc":I
    :cond_7
    move v1, v12

    .line 73
    .end local v12    # "sIx":I
    .local v1, "sIx":I
    :goto_4
    move v7, v10

    goto :goto_3

    .line 75
    .end local v8    # "cc":I
    .end local v9    # "eLen":I
    .end local v10    # "d":I
    .local v7, "d":I
    :cond_8
    if-ge v7, v3, :cond_a

    .line 77
    const/4 v8, 0x0

    .line 78
    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    sub-int v10, v2, v4

    if-gt v1, v10, :cond_9

    .line 79
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "sIx":I
    .restart local v11    # "sIx":I
    aget-char v1, p0, v1

    aget v1, v10, v1

    mul-int/lit8 v10, v9, 0x6

    rsub-int/lit8 v10, v10, 0x12

    shl-int/2addr v1, v10

    or-int/2addr v8, v1

    .line 78
    add-int/lit8 v9, v9, 0x1

    move v1, v11

    goto :goto_5

    .line 81
    .end local v9    # "j":I
    .end local v11    # "sIx":I
    .restart local v1    # "sIx":I
    :cond_9
    const/16 v9, 0x10

    .local v9, "r":I
    :goto_6
    if-ge v7, v3, :cond_a

    .line 82
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .restart local v10    # "d":I
    shr-int v11, v8, v9

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    .line 81
    add-int/lit8 v9, v9, -0x8

    move v7, v10

    goto :goto_6

    .line 85
    .end local v8    # "i":I
    .end local v9    # "r":I
    .end local v10    # "d":I
    .restart local v7    # "d":I
    :cond_a
    return-object v6
.end method
