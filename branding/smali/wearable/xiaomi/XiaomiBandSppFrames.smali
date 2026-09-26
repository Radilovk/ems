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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crc16([BII)I
    .registers 8

    .line 112
    nop

    .line 113
    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    :goto_4
    add-int v3, p1, p2

    if-ge v1, v3, :cond_22

    .line 114
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    .line 115
    const/4 v3, 0x0

    :goto_e
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1f

    .line 116
    and-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_1c

    const v4, 0xa001

    xor-int/2addr v2, v4

    .line 115
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 113
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 119
    :cond_22
    const p0, 0xffff

    and-int/2addr p0, v2

    return p0
.end method

.method static ctr([B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    const-string v0, "AES/CTR/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 226
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 227
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static garbage([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;
    .registers 4

    .line 206
    const/4 v0, 0x2

    iput v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 207
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->nextStart([BI)I

    move-result p0

    iput p0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    .line 208
    return-object p2
.end method

.method private static nextStart([BI)I
    .registers 5

    .line 213
    const/4 v0, 0x1

    :goto_1
    if-ge v0, p1, :cond_14

    .line 214
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 215
    const/16 v2, 0xa5

    if-eq v1, v2, :cond_13

    const/16 v2, 0xba

    if-ne v1, v2, :cond_10

    goto :goto_13

    .line 213
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_13
    :goto_13
    return v0

    .line 219
    :cond_14
    return p1
.end method

.method static parse([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;
    .registers 7

    .line 126
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;-><init>()V

    .line 127
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge p1, v2, :cond_c

    .line 128
    iput v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 129
    return-object v0

    .line 131
    :cond_c
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 132
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 133
    const/16 v4, 0xa5

    if-ne v1, v4, :cond_20

    if-ne v3, v4, :cond_20

    .line 134
    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->parseV2([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object p0

    return-object p0

    .line 136
    :cond_20
    const/16 v4, 0xba

    if-ne v1, v4, :cond_2d

    const/16 v1, 0xdc

    if-ne v3, v1, :cond_2d

    .line 137
    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->parseV1([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object p0

    return-object p0

    .line 139
    :cond_2d
    iput v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 140
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->nextStart([BI)I

    move-result p0

    iput p0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    .line 141
    return-object v0
.end method

.method private static parseV1([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;
    .registers 9

    .line 145
    const/4 v0, 0x0

    const/16 v1, 0xb

    if-ge p1, v1, :cond_8

    .line 146
    iput v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 147
    return-object p2

    .line 149
    :cond_8
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_16

    .line 150
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->garbage([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object p0

    return-object p0

    .line 152
    :cond_16
    const/4 v1, 0x5

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->u16([BI)I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    .line 153
    if-ltz v1, :cond_69

    const v3, 0xffff

    if-le v1, v3, :cond_25

    goto :goto_69

    .line 156
    :cond_25
    add-int/lit8 v3, v1, 0xa

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 157
    if-ge p1, v3, :cond_2e

    .line 158
    iput v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 159
    return-object p2

    .line 161
    :cond_2e
    add-int/lit8 v0, v3, -0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v5, 0xef

    if-eq v0, v5, :cond_3d

    .line 162
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->garbage([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object p0

    return-object p0

    .line 164
    :cond_3d
    iput v4, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 165
    iput v4, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->version:I

    .line 166
    iput v3, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    .line 167
    aget-byte p1, p0, v2

    and-int/lit8 p1, p1, 0xf

    iput p1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    .line 168
    const/4 p1, 0x7

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->opcode:I

    .line 169
    const/16 p1, 0x8

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->seq:I

    .line 170
    const/16 p1, 0x9

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->dataType:I

    .line 171
    const/16 p1, 0xa

    invoke-static {p0, p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->slice([BII)[B

    move-result-object p0

    iput-object p0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 172
    return-object p2

    .line 154
    :cond_69
    :goto_69
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->garbage([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object p0

    return-object p0
.end method

.method private static parseV2([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;
    .registers 9

    .line 176
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_8

    .line 177
    iput v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 178
    return-object p2

    .line 180
    :cond_8
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->u16([BI)I

    move-result v2

    .line 181
    add-int/lit8 v3, v2, 0x8

    .line 182
    if-ge p1, v3, :cond_14

    .line 183
    iput v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 184
    return-object p2

    .line 186
    :cond_14
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->crc16([BII)I

    move-result v4

    const/4 v5, 0x6

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->u16([BI)I

    move-result v5

    if-eq v4, v5, :cond_24

    .line 187
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->garbage([BILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object p0

    return-object p0

    .line 189
    :cond_24
    const/4 p1, 0x1

    iput p1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    .line 190
    const/4 v4, 0x2

    iput v4, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->version:I

    .line 191
    iput v3, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    .line 192
    aget-byte v3, p0, v4

    and-int/lit8 v3, v3, 0xf

    iput v3, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->type:I

    .line 193
    const/4 v3, 0x3

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    iput v5, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->seq:I

    .line 194
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->slice([BII)[B

    move-result-object p0

    .line 195
    iget v1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->type:I

    if-ne v1, v3, :cond_59

    array-length v1, p0

    if-lt v1, v4, :cond_59

    .line 196
    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    .line 197
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->opcode:I

    .line 198
    array-length p1, p0

    sub-int/2addr p1, v4

    invoke-static {p0, v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->slice([BII)[B

    move-result-object p0

    iput-object p0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    goto :goto_5b

    .line 200
    :cond_59
    iput-object p0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 202
    :goto_5b
    return-object p2
.end method

.method static putU16([BII)V
    .registers 4

    .line 237
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 238
    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    .line 239
    return-void
.end method

.method static slice([BII)[B
    .registers 5

    .line 242
    new-array v0, p2, [B

    .line 243
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    return-object v0
.end method

.method static u16([BI)I
    .registers 3

    .line 233
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method static v1(IZIII[B)[B
    .registers 13

    .line 55
    array-length v0, p5

    .line 56
    add-int/lit8 v1, v0, 0xa

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [B

    .line 57
    const/16 v4, -0x46

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 58
    const/16 v4, -0x24

    aput-byte v4, v3, v2

    .line 59
    const/4 v4, 0x2

    const/4 v6, -0x2

    aput-byte v6, v3, v4

    .line 60
    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    const/4 v4, 0x3

    aput-byte p0, v3, v4

    .line 61
    if-eqz p1, :cond_1f

    const/16 p0, 0x40

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    const/4 p1, 0x4

    aput-byte p0, v3, p1

    .line 62
    const/4 p0, 0x5

    add-int/lit8 p1, v0, 0x3

    invoke-static {v3, p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->putU16([BII)V

    .line 63
    const/4 p0, 0x7

    int-to-byte p1, p2

    aput-byte p1, v3, p0

    .line 64
    const/16 p0, 0x8

    int-to-byte p1, p3

    aput-byte p1, v3, p0

    .line 65
    const/16 p0, 0x9

    int-to-byte p1, p4

    aput-byte p1, v3, p0

    .line 66
    const/16 p0, 0xa

    invoke-static {p5, v5, v3, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    sub-int/2addr v1, v2

    const/16 p0, -0x11

    aput-byte p0, v3, v1

    .line 68
    return-object v3
.end method

.method static v1Version()[B
    .registers 7

    .line 51
    const/4 v0, 0x0

    new-array v6, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v1(IZIII[B)[B

    move-result-object v0

    return-object v0
.end method

.method static v2(II[B)[B
    .registers 8

    .line 99
    array-length v0, p2

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 100
    const/4 v2, 0x0

    const/16 v3, -0x5b

    aput-byte v3, v0, v2

    .line 101
    const/4 v4, 0x1

    aput-byte v3, v0, v4

    .line 102
    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    const/4 v3, 0x2

    aput-byte p0, v0, v3

    .line 103
    int-to-byte p0, p1

    const/4 p1, 0x3

    aput-byte p0, v0, p1

    .line 104
    array-length p0, p2

    const/4 p1, 0x4

    invoke-static {v0, p1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->putU16([BII)V

    .line 105
    array-length p0, p2

    invoke-static {p2, v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->crc16([BII)I

    move-result p0

    const/4 p1, 0x6

    invoke-static {v0, p1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->putU16([BII)V

    .line 106
    array-length p0, p2

    invoke-static {p2, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    return-object v0
.end method

.method static v2Ack(I)[B
    .registers 3

    .line 87
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2(II[B)[B

    move-result-object p0

    return-object p0
.end method

.method static v2Data(III[B)[B
    .registers 7

    .line 91
    array-length v0, p3

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 92
    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    .line 93
    int-to-byte p1, p2

    const/4 p2, 0x1

    aput-byte p1, v0, p2

    .line 94
    array-length p1, p3

    invoke-static {p3, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    const/4 p1, 0x3

    invoke-static {p1, p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2(II[B)[B

    move-result-object p0

    return-object p0
.end method

.method static v2SessionStart()[B
    .registers 3

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
