.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;
.super Ljava/lang/Object;
.source "ScaleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;
    }
.end annotation


# static fields
.field public static final A_ACK:I = 0xa0

.field public static final A_HELLO:I = 0xaa

.field public static final A_RESULT:I = 0xa7

.field public static final A_STORED:I = 0xa5

.field public static final B_COUNTER:I = 0xa0

.field public static final B_RESULT:I = 0xa3

.field public static final B_STATUS:I = 0xa1

.field public static final B_WEIGHT:I = 0xa2

.field public static final CCCD:Ljava/util/UUID;

.field public static final FRAMES:Ljava/util/UUID;

.field public static final LEFT_ARM:I = 0x1

.field public static final LEFT_LEG:I = 0x3

.field public static final LIVE:Ljava/util/UUID;

.field public static final NAME_IMAGE:Ljava/util/UUID;

.field public static final RIGHT_ARM:I = 0x2

.field public static final RIGHT_LEG:I = 0x4

.field public static final SERVICE:Ljava/util/UUID;

.field public static final TRUNK:I

.field public static final WRITE:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const v0, 0xffb0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->SERVICE:Ljava/util/UUID;

    .line 26
    const v0, 0xffb1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->WRITE:Ljava/util/UUID;

    .line 27
    const v0, 0xffb2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->LIVE:Ljava/util/UUID;

    .line 28
    const v0, 0xffb3

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->FRAMES:Ljava/util/UUID;

    .line 29
    const v0, 0xffb4

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->NAME_IMAGE:Ljava/util/UUID;

    .line 30
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->CCCD:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ackA(II)[B
    .registers 6

    .prologue
    .line 137
    const/16 v0, 0xb0

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->frameA(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static ackB(I)[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 335
    const/4 v0, 0x3

    new-array v0, v0, [B

    const/16 v1, -0x50

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    return-object v0
.end method

.method public static bcA(I[B)[B
    .registers 11

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    const/16 v0, 0xbc

    const/16 v1, 0x12

    new-array v1, v1, [B

    aput-byte v5, v1, v4

    aput-byte v4, v1, v5

    aput-byte v4, v1, v7

    aput-byte v4, v1, v8

    aput-byte v6, v1, v6

    const/4 v2, 0x5

    const/16 v3, 0x62

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    aput-byte v4, v1, v2

    const/4 v2, 0x7

    aput-byte v4, v1, v2

    const/16 v2, 0x8

    aput-byte v6, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x62

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, -0x13

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, -0x22

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    aget-byte v3, p1, v4

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    aget-byte v3, p1, v5

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    aget-byte v3, p1, v7

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    aget-byte v3, p1, v8

    aput-byte v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0x19

    aput-byte v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0x15

    aput-byte v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->frameA(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static bdA(I)[B
    .registers 5

    .prologue
    .line 170
    const/16 v0, 0xbd

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x9

    aput-byte v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->frameA(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method static checkA([BII)I
    .registers 5

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    :goto_1
    if-ge p1, p2, :cond_b

    .line 90
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 89
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 92
    :cond_b
    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method static checkB([B)I
    .registers 4

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    const/4 v0, 0x3

    :goto_2
    const/16 v2, 0x13

    if-ge v0, v2, :cond_e

    .line 236
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 238
    :cond_e
    and-int/lit8 v0, v1, 0x1f

    return v0
.end method

.method public static decodeA(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x1

    .line 197
    if-eqz p0, :cond_1a

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v3, 0xa7

    if-eq v2, v3, :cond_13

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v3, 0xa5

    if-ne v2, v3, :cond_1a

    :cond_13
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->payload:[B

    array-length v2, v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1c

    .line 198
    :cond_1a
    const/4 v0, 0x0

    .line 218
    :goto_1b
    return-object v0

    .line 200
    :cond_1c
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->payload:[B

    .line 201
    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 202
    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    aget-byte v6, v3, v1

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    int-to-long v6, v6

    or-long/2addr v4, v6

    aget-byte v6, v3, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    or-long/2addr v4, v6

    aget-byte v6, v3, v9

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    iput-wide v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleTime:J

    .line 204
    const/4 v4, 0x5

    aget-byte v4, v3, v4

    and-int/lit8 v4, v4, 0x1

    shl-int/lit8 v4, v4, 0x10

    const/4 v5, 0x6

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 205
    const/16 v4, 0x23

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/16 v5, 0x24

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    .line 206
    iput-boolean v1, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 207
    iput-boolean v1, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    .line 208
    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v5, 0xa5

    if-ne v4, v5, :cond_81

    move v0, v1

    :cond_81
    iput-boolean v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stored:Z

    .line 210
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ohmLE([BI)D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 211
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    const/16 v4, 0xd

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ohmLE([BI)D

    move-result-wide v4

    aput-wide v4, v0, v8

    .line 212
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    const/16 v4, 0xf

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ohmLE([BI)D

    move-result-wide v4

    aput-wide v4, v0, v10

    .line 213
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    const/16 v4, 0x11

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ohmLE([BI)D

    move-result-wide v4

    aput-wide v4, v0, v9

    .line 214
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    const/16 v4, 0x15

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ohmLE([BI)D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 215
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    const/16 v1, 0x17

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ohmLE([BI)D

    move-result-wide v4

    aput-wide v4, v0, v8

    .line 216
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    const/16 v1, 0x19

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ohmLE([BI)D

    move-result-wide v4

    aput-wide v4, v0, v10

    .line 217
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    const/16 v1, 0x1b

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ohmLE([BI)D

    move-result-wide v4

    aput-wide v4, v0, v9

    move-object v0, v2

    .line 218
    goto/16 :goto_1b
.end method

.method public static decodeB([B)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;
    .registers 11

    .prologue
    const/4 v7, 0x2

    const-wide v8, 0x408f400000000000L    # 1000.0

    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 344
    if-eqz p0, :cond_f

    array-length v2, p0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_11

    .line 345
    :cond_f
    const/4 v0, 0x0

    .line 369
    :goto_10
    return-object v0

    .line 347
    :cond_11
    aget-byte v2, p0, v0

    and-int/lit16 v3, v2, 0xff

    .line 348
    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 349
    const/16 v4, 0xa2

    if-ne v3, v4, :cond_43

    .line 350
    aget-byte v3, p0, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x5

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v8

    iput-wide v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 351
    aget-byte v3, p0, v1

    if-eq v3, v7, :cond_3e

    aget-byte v3, p0, v1

    if-ne v3, v6, :cond_3f

    :cond_3e
    move v0, v1

    :cond_3f
    iput-boolean v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    move-object v0, v2

    .line 352
    goto :goto_10

    .line 354
    :cond_43
    const/16 v4, 0xa3

    if-ne v3, v4, :cond_96

    array-length v3, p0

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_96

    .line 355
    aget-byte v3, p0, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    aget-byte v4, p0, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v8

    iput-wide v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 356
    iput-boolean v1, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 357
    iput-boolean v1, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    .line 359
    :goto_67
    const/16 v1, 0xa

    if-ge v0, v1, :cond_93

    .line 360
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x7

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    int-to-double v4, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    .line 361
    const/4 v1, 0x5

    if-ge v0, v1, :cond_8c

    .line 362
    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    aput-wide v4, v1, v0

    .line 359
    :goto_89
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 364
    :cond_8c
    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    add-int/lit8 v3, v0, -0x5

    aput-wide v4, v1, v3

    goto :goto_89

    :cond_93
    move-object v0, v2

    .line 367
    goto/16 :goto_10

    .line 369
    :cond_96
    const/4 v0, 0x0

    goto/16 :goto_10
.end method

.method public static frameA(II[B)[B
    .registers 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 96
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 97
    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 98
    int-to-byte v2, p0

    aput-byte v2, v1, v4

    .line 99
    const/4 v2, 0x1

    shr-int/lit8 v3, p0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 100
    const/4 v2, 0x2

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 101
    const/4 v2, 0x3

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 102
    int-to-byte v0, p1

    aput-byte v0, v1, v5

    .line 103
    const/4 v0, 0x5

    array-length v2, p2

    invoke-static {p2, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v5, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->checkA([BII)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 105
    return-object v1
.end method

.method public static framesB(I[B)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 247
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v1

    .line 251
    :cond_8
    const/16 v4, 0x14

    new-array v4, v4, [B

    .line 252
    int-to-byte v5, p0

    aput-byte v5, v4, v1

    .line 253
    const/4 v5, 0x1

    array-length v6, p1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 254
    const/4 v5, 0x2

    int-to-byte v6, v2

    aput-byte v6, v4, v5

    .line 255
    const/4 v5, 0x3

    const/16 v6, 0x10

    array-length v7, p1

    sub-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p1, v0, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    const/16 v5, 0x13

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->checkB([B)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 257
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v0, 0x10

    .line 259
    add-int/lit8 v2, v2, 0x1

    .line 260
    array-length v4, p1

    if-lt v0, v4, :cond_8

    .line 261
    return-object v3
.end method

.method public static guestA(IJI)[B
    .registers 23

    .prologue
    .line 159
    const/16 v7, 0xac

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    const/4 v10, 0x1

    const/16 v11, 0x18

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    const/16 v16, 0x2f

    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v17, v0

    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v18, v0

    move/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    invoke-static/range {v3 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->recordA(IJIIDZIDDI[B[B)[B

    move-result-object v2

    return-object v2
.end method

.method public static handshakeA(IJIIDZI[B)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIIDZI[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-static/range {p0 .. p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->guestA(IJI)[B

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v2, p0, 0x1

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->profileA(IIDZI[B)[B

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v3, p0, 0x2

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-static/range {v3 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->userA(IJIIDZI[B)[B

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v2, p0, 0x3

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->bdA(I)[B

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v2, p0, 0x4

    move-object/from16 v0, p9

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->bcA(I[B)[B

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-object v13
.end method

.method static height(I)I
    .registers 3

    .prologue
    .line 133
    const/16 v0, 0x32

    const/16 v1, 0xff

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static kg100(D)[B
    .registers 6

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 125
    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    return-object v1
.end method

.method public static liveWeightA([B)D
    .registers 5

    .prologue
    .line 223
    if-eqz p0, :cond_7

    array-length v0, p0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    .line 224
    :cond_7
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 226
    :goto_9
    return-wide v0

    :cond_a
    const/4 v0, 0x7

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const/16 v1, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    goto :goto_9
.end method

.method static ohmLE([BI)D
    .registers 6

    .prologue
    .line 192
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static otherB()[B
    .registers 1

    .prologue
    .line 339
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        -0x43t
        0x9t
    .end array-data
.end method

.method public static parseA([B)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 110
    if-eqz p0, :cond_9

    array-length v1, p0

    const/4 v2, 0x6

    if-ge v1, v2, :cond_a

    .line 120
    :cond_9
    :goto_9
    return-object v0

    .line 113
    :cond_a
    aget-byte v1, p0, v5

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 114
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 115
    array-length v3, p0

    add-int/lit8 v3, v3, -0x5

    if-ne v2, v3, :cond_9

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v6, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->checkA([BII)I

    move-result v3

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-ne v3, v4, :cond_9

    .line 118
    add-int/lit8 v0, v2, -0x1

    new-array v2, v0, [B

    .line 119
    const/4 v0, 0x5

    array-length v3, v2

    invoke-static {p0, v0, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;

    aget-byte v3, p0, v6

    and-int/lit16 v3, v3, 0xff

    invoke-direct {v0, v1, v3, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;-><init>(II[B)V

    goto :goto_9
.end method

.method public static profileA(IIDZI[B)[B
    .registers 17

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 142
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->kg100(D)[B

    move-result-object v0

    .line 143
    const/16 v1, 0xbf

    const/16 v2, 0x11

    new-array v2, v2, [B

    aput-byte v5, v2, v4

    aput-byte v5, v2, v5

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->height(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    aget-byte v3, v0, v4

    aput-byte v3, v2, v7

    const/4 v3, 0x4

    aget-byte v0, v0, v5

    aput-byte v0, v2, v3

    const/4 v0, 0x5

    invoke-static {p4, p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->sexAge(ZI)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v0, 0x6

    aput-byte v4, v2, v0

    const/4 v0, 0x7

    aput-byte v4, v2, v0

    const/16 v0, 0x8

    aput-byte v4, v2, v0

    const/16 v0, 0x9

    aput-byte v4, v2, v0

    const/16 v0, 0xa

    aput-byte v8, v2, v0

    const/16 v0, 0xb

    aget-byte v3, p6, v4

    aput-byte v3, v2, v0

    const/16 v0, 0xc

    aget-byte v3, p6, v5

    aput-byte v3, v2, v0

    const/16 v0, 0xd

    aget-byte v3, p6, v6

    aput-byte v3, v2, v0

    const/16 v0, 0xe

    aget-byte v3, p6, v7

    aput-byte v3, v2, v0

    aput-byte v5, v2, v8

    const/16 v0, 0x10

    aput-byte v5, v2, v0

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->frameA(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method static recordA(IJIIDZIDDI[B[B)[B
    .registers 27

    .prologue
    .line 149
    invoke-static/range {p5 .. p6}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->kg100(D)[B

    move-result-object v2

    invoke-static/range {p9 .. p10}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->kg100(D)[B

    move-result-object v3

    invoke-static/range {p11 .. p12}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->kg100(D)[B

    move-result-object v4

    .line 150
    const/16 v5, 0x16

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/16 v7, 0x18

    shr-long v8, p1, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x10

    shr-long v8, p1, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x8

    shr-long v8, p1, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x3

    long-to-int v7, p1

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x4

    shr-int/lit8 v7, p3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x5

    int-to-byte v7, p3

    aput-byte v7, v5, v6

    const/4 v6, 0x6

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    const/4 v6, 0x7

    .line 151
    invoke-static {p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->height(I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/16 v6, 0x8

    const/4 v7, 0x0

    aget-byte v7, v2, v7

    aput-byte v7, v5, v6

    const/16 v6, 0x9

    const/4 v7, 0x1

    aget-byte v2, v2, v7

    aput-byte v2, v5, v6

    const/16 v2, 0xa

    .line 152
    invoke-static/range {p7 .. p8}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->sexAge(ZI)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    const/16 v2, 0xb

    const/4 v6, 0x0

    aget-byte v6, v3, v6

    aput-byte v6, v5, v2

    const/16 v2, 0xc

    const/4 v6, 0x1

    aget-byte v3, v3, v6

    aput-byte v3, v5, v2

    const/16 v2, 0xd

    const/4 v3, 0x0

    aget-byte v3, v4, v3

    aput-byte v3, v5, v2

    const/16 v2, 0xe

    const/4 v3, 0x1

    aget-byte v3, v4, v3

    aput-byte v3, v5, v2

    const/16 v2, 0xf

    move/from16 v0, p13

    int-to-byte v3, v0

    aput-byte v3, v5, v2

    const/16 v2, 0x10

    const/4 v3, 0x0

    aget-byte v3, p14, v3

    aput-byte v3, v5, v2

    const/16 v2, 0x11

    const/4 v3, 0x1

    aget-byte v3, p14, v3

    aput-byte v3, v5, v2

    const/16 v2, 0x12

    const/4 v3, 0x2

    aget-byte v3, p14, v3

    aput-byte v3, v5, v2

    const/16 v2, 0x13

    const/4 v3, 0x3

    aget-byte v3, p14, v3

    aput-byte v3, v5, v2

    const/16 v2, 0x14

    const/4 v3, 0x0

    aget-byte v3, p15, v3

    aput-byte v3, v5, v2

    const/16 v2, 0x15

    const/4 v3, 0x1

    aget-byte v3, p15, v3

    aput-byte v3, v5, v2

    .line 154
    const/16 v2, 0xbe

    invoke-static {p0, v2, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->frameA(II[B)[B

    move-result-object v2

    return-object v2
.end method

.method static recordB(JIDZI)[B
    .registers 15

    .prologue
    const/16 v6, 0x8

    .line 299
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0x7fff

    .line 300
    if-eqz v0, :cond_18

    .line 301
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 303
    :cond_18
    new-array v1, v6, [B

    const/4 v2, 0x0

    const/16 v3, 0x18

    shr-long v4, p0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x10

    shr-long v4, p0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    shr-long v4, p0, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    long-to-int v3, p0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    const/4 v0, 0x7

    .line 304
    invoke-static {p5, p6}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->sexAge(ZI)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 303
    return-object v1
.end method

.method static sexAge(ZI)I
    .registers 5

    .prologue
    .line 129
    if-eqz p0, :cond_11

    const/16 v0, 0x80

    :goto_4
    const/4 v1, 0x1

    const/16 v2, 0x7f

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static syncB(JJIDZIZ)[B
    .registers 16

    .prologue
    .line 310
    invoke-static/range {p2 .. p8}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->recordB(JIDZI)[B

    move-result-object v0

    .line 311
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 312
    const/4 v2, 0x0

    const/16 v3, -0x46

    aput-byte v3, v1, v2

    .line 313
    const/4 v2, 0x1

    const/16 v3, 0x18

    shr-long v4, p0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 314
    const/4 v2, 0x2

    const/16 v3, 0x10

    shr-long v4, p0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 315
    const/4 v2, 0x3

    const/16 v3, 0x8

    shr-long v4, p0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 316
    const/4 v2, 0x4

    long-to-int v3, p0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 317
    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 318
    const/4 v2, 0x6

    const/16 v3, 0x78

    aput-byte v3, v1, v2

    .line 319
    const/4 v2, 0x0

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    const/16 v2, 0xf

    if-eqz p9, :cond_47

    const/16 v0, 0xf

    :goto_43
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 321
    return-object v1

    .line 320
    :cond_47
    const/16 v0, 0x2f

    goto :goto_43
.end method

.method public static uidBytes(J)[B
    .registers 6

    .prologue
    .line 374
    const-wide v0, -0x61c8864680b583ebL

    mul-long/2addr v0, p0

    const-wide/32 v2, 0x5851f42d

    add-long/2addr v0, v2

    .line 375
    const/16 v2, 0x1d

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    .line 376
    long-to-int v0, v0

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 377
    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    shr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    return-object v1
.end method

.method public static uidLong(J)J
    .registers 8

    .prologue
    .line 381
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uidBytes(J)[B

    move-result-object v0

    .line 382
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    const/16 v1, 0x18

    shl-long/2addr v2, v1

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static userA(IJIIDZI[B)[B
    .registers 29

    .prologue
    .line 165
    const/16 v16, 0xf

    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_24

    move/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p5

    move-wide/from16 v14, p5

    move-object/from16 v17, p9

    invoke-static/range {v3 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->recordA(IJIIDZIDDI[B[B)[B

    move-result-object v2

    return-object v2

    nop

    :array_24
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method public static usersB(JIDZI)[B
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 326
    invoke-static/range {p0 .. p6}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->recordB(JIDZI)[B

    move-result-object v0

    .line 327
    const/16 v1, 0xa

    new-array v1, v1, [B

    .line 328
    const/16 v2, -0x45

    aput-byte v2, v1, v4

    .line 329
    aput-byte v3, v1, v3

    .line 330
    const/4 v2, 0x2

    const/16 v3, 0x8

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    return-object v1
.end method

.method static uuid16(I)Ljava/util/UUID;
    .registers 5

    .prologue
    .line 35
    const-string v0, "0000%04x-0000-1000-8000-00805f9b34fb"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static validB([B)Z
    .registers 3

    .prologue
    .line 242
    if-eqz p0, :cond_15

    array-length v0, p0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_15

    const/16 v0, 0x13

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->checkB([B)I

    move-result v1

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
