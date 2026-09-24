.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;
.super Ljava/lang/Object;
.source "XiaomiBandSppFrames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;
    }
.end annotation


# static fields
.field static final KIND_GARBAGE:I = 0x2

.field static final KIND_INCOMPLETE:I = 0x0

.field static final KIND_PACKET:I = 0x1

.field static final V1_HEADER:I = 0xa

.field static final V2_ACK:I = 0x1

.field static final V2_DATA:I = 0x3

.field static final V2_HEADER:I = 0x8

.field static final V2_SESSION:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crc16([BII)I
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 112
    move v3, p1

    move v0, v2

    .line 113
    :goto_3
    add-int v1, p1, p2

    if-ge v3, v1, :cond_25

    .line 114
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    move v1, v2

    .line 115
    :goto_d
    const/16 v4, 0x8

    if-ge v1, v4, :cond_21

    .line 116
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1e

    ushr-int/lit8 v0, v0, 0x1

    const v4, 0xa001

    xor-int/2addr v0, v4

    .line 115
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 116
    :cond_1e
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 113
    :cond_21
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    .line 119
    :cond_25
    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method static ctr([B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    const-string v0, "AES/CTR/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 226
    const/4 v1, 0x1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 227
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static garbage([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;
    .registers 4

    .prologue
    .line 206
    const/4 v0, 0x2

    iput v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 207
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->nextStart([BI)I

    move-result v0

    iput v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    .line 208
    return-object p2
.end method

.method private static nextStart([BI)I
    .registers 5

    .prologue
    .line 213
    const/4 v0, 0x1

    :goto_1
    if-ge v0, p1, :cond_10

    .line 214
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 215
    const/16 v2, 0xa5

    if-eq v1, v2, :cond_f

    const/16 v2, 0xba

    if-ne v1, v2, :cond_11

    :cond_f
    move p1, v0

    .line 219
    :cond_10
    return p1

    .line 213
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static parse([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;
    .registers 7

    .prologue
    const/16 v3, 0xa5

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 126
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;-><init>()V

    .line 127
    if-ge p1, v4, :cond_e

    .line 128
    iput v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 141
    :goto_d
    return-object v0

    .line 131
    :cond_e
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 132
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 133
    if-ne v1, v3, :cond_20

    if-ne v2, v3, :cond_20

    .line 134
    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->parseV2([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object v0

    goto :goto_d

    .line 136
    :cond_20
    const/16 v3, 0xba

    if-ne v1, v3, :cond_2d

    const/16 v1, 0xdc

    if-ne v2, v1, :cond_2d

    .line 137
    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->parseV1([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object v0

    goto :goto_d

    .line 139
    :cond_2d
    iput v4, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 140
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->nextStart([BI)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    goto :goto_d
.end method

.method private static parseV1([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 145
    const/16 v0, 0xb

    if-ge p1, v0, :cond_9

    .line 146
    iput v2, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 172
    :goto_8
    return-object p2

    .line 149
    :cond_9
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_17

    .line 150
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->garbage([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object p2

    goto :goto_8

    .line 152
    :cond_17
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->u16([BI)I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 153
    if-ltz v0, :cond_25

    const v1, 0xffff

    if-le v0, v1, :cond_2a

    .line 154
    :cond_25
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->garbage([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object p2

    goto :goto_8

    .line 156
    :cond_2a
    add-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    .line 157
    if-ge p1, v1, :cond_33

    .line 158
    iput v2, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    goto :goto_8

    .line 161
    :cond_33
    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-eq v2, v3, :cond_42

    .line 162
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->garbage([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object p2

    goto :goto_8

    .line 164
    :cond_42
    iput v4, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 165
    iput v4, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->version:I

    .line 166
    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    .line 167
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0xf

    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    .line 168
    const/4 v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->opcode:I

    .line 169
    const/16 v1, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->seq:I

    .line 170
    const/16 v1, 0x9

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->dataType:I

    .line 171
    const/16 v1, 0xa

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->slice([BII)[B

    move-result-object v0

    iput-object v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    goto :goto_8
.end method

.method private static parseV2([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;
    .registers 12

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 176
    if-ge p1, v6, :cond_b

    .line 177
    iput v5, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 202
    :goto_a
    return-object p2

    .line 180
    :cond_b
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->u16([BI)I

    move-result v0

    .line 181
    add-int/lit8 v1, v0, 0x8

    .line 182
    if-ge p1, v1, :cond_17

    .line 183
    iput v5, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    goto :goto_a

    .line 186
    :cond_17
    invoke-static {p0, v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->crc16([BII)I

    move-result v2

    const/4 v3, 0x6

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->u16([BI)I

    move-result v3

    if-eq v2, v3, :cond_27

    .line 187
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->garbage([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object p2

    goto :goto_a

    .line 189
    :cond_27
    iput v7, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 190
    iput v4, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->version:I

    .line 191
    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    .line 192
    aget-byte v1, p0, v4

    and-int/lit8 v1, v1, 0xf

    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->type:I

    .line 193
    aget-byte v1, p0, v8

    and-int/lit16 v1, v1, 0xff

    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->seq:I

    .line 194
    invoke-static {p0, v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->slice([BII)[B

    move-result-object v0

    .line 195
    iget v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->type:I

    if-ne v1, v8, :cond_5a

    array-length v1, v0

    if-lt v1, v4, :cond_5a

    .line 196
    aget-byte v1, v0, v5

    and-int/lit8 v1, v1, 0xf

    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    .line 197
    aget-byte v1, v0, v7

    and-int/lit16 v1, v1, 0xff

    iput v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->opcode:I

    .line 198
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->slice([BII)[B

    move-result-object v0

    iput-object v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    goto :goto_a

    .line 200
    :cond_5a
    iput-object v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    goto :goto_a
.end method

.method static putU16([BII)V
    .registers 5

    .prologue
    .line 237
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 238
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 239
    return-void
.end method

.method static slice([BII)[B
    .registers 5

    .prologue
    .line 242
    new-array v0, p2, [B

    .line 243
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    return-object v0
.end method

.method static u16([BI)I
    .registers 4

    .prologue
    .line 233
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method static v1(IZIII[B)[B
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 55
    array-length v2, p5

    .line 56
    add-int/lit8 v0, v2, 0xa

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    .line 57
    const/16 v0, -0x46

    aput-byte v0, v3, v1

    .line 58
    const/4 v0, 0x1

    const/16 v4, -0x24

    aput-byte v4, v3, v0

    .line 59
    const/4 v0, 0x2

    const/4 v4, -0x2

    aput-byte v4, v3, v0

    .line 60
    const/4 v0, 0x3

    and-int/lit8 v4, p0, 0xf

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 61
    const/4 v4, 0x4

    if-eqz p1, :cond_46

    const/16 v0, 0x40

    :goto_20
    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 62
    const/4 v0, 0x5

    add-int/lit8 v4, v2, 0x3

    invoke-static {v3, v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->putU16([BII)V

    .line 63
    const/4 v0, 0x7

    int-to-byte v4, p2

    aput-byte v4, v3, v0

    .line 64
    const/16 v0, 0x8

    int-to-byte v4, p3

    aput-byte v4, v3, v0

    .line 65
    const/16 v0, 0x9

    int-to-byte v4, p4

    aput-byte v4, v3, v0

    .line 66
    const/16 v0, 0xa

    invoke-static {p5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    const/16 v1, -0x11

    aput-byte v1, v3, v0

    .line 68
    return-object v3

    :cond_46
    move v0, v1

    .line 61
    goto :goto_20
.end method

.method static v1Version()[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 51
    const/4 v1, 0x1

    new-array v5, v0, [B

    move v2, v0

    move v3, v0

    move v4, v0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v1(IZIII[B)[B

    move-result-object v0

    return-object v0
.end method

.method static v2(II[B)[B
    .registers 7

    .prologue
    const/16 v2, -0x5b

    const/4 v3, 0x0

    .line 99
    array-length v0, p2

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 100
    aput-byte v2, v0, v3

    .line 101
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 102
    const/4 v1, 0x2

    and-int/lit8 v2, p0, 0xf

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 103
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 104
    const/4 v1, 0x4

    array-length v2, p2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->putU16([BII)V

    .line 105
    const/4 v1, 0x6

    array-length v2, p2

    invoke-static {p2, v3, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->crc16([BII)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->putU16([BII)V

    .line 106
    const/16 v1, 0x8

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    return-object v0
.end method

.method static v2Ack(I)[B
    .registers 3

    .prologue
    .line 87
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method static v2Data(III[B)[B
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 91
    array-length v0, p3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 92
    and-int/lit8 v1, p1, 0xf

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 93
    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 94
    const/4 v1, 0x2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method static v2SessionStart()[B
    .registers 3

    .prologue
    .line 76
    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    .line 83
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2(II[B)[B

    move-result-object v0

    return-object v0

    .line 76
    :array_e
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        -0x4t
        0x3t
        0x2t
        0x0t
        0x20t
        0x0t
        0x4t
        0x2t
        0x0t
        0x10t
        0x27t
    .end array-data
.end method
