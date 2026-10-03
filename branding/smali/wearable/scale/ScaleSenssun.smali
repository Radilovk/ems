.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;
.super Ljava/lang/Object;
.source "ScaleSenssun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;
    }
.end annotation


# static fields
.field public static final CHAR_B:Ljava/util/UUID;

.field public static final NOTIFY_A:Ljava/util/UUID;

.field static final PRO_MODELS:[I

.field public static final SERVICE_A:Ljava/util/UUID;

.field public static final SERVICE_B:Ljava/util/UUID;

.field public static final T_ERROR:I = 0xbe

.field public static final T_FAT:I = 0xb0

.field public static final T_KCAL:I = 0xd0

.field public static final T_LIVE:I = 0xa0

.field public static final T_MUSCLE:I = 0xc0

.field public static final T_STABLE:I = 0xaa

.field static final WIRE:[I

.field public static final WRITE_A:Ljava/util/UUID;

.field public static final XS_V30:I = 0x30


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const v0, 0xfff0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->SERVICE_A:Ljava/util/UUID;

    .line 44
    const v0, 0xfff1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->NOTIFY_A:Ljava/util/UUID;

    .line 45
    const v0, 0xfff2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->WRITE_A:Ljava/util/UUID;

    .line 46
    const v0, 0xffb0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->SERVICE_B:Ljava/util/UUID;

    .line 47
    const v0, 0xffb2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->CHAR_B:Ljava/util/UUID;

    .line 216
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->PRO_MODELS:[I

    .line 367
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->WIRE:[I

    return-void

    .line 216
    nop

    :array_40
    .array-data 4
        0x309
        0x319
        0x320
        0x323
        0x324
        0x327
        0x333
        0x335
        0x336
        0x337
        0x338
    .end array-data

    .line 367
    :array_5a
    .array-data 4
        0x2
        0x1
        0x0
        0x4
        0x3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ack(I[B)[B
    .registers 10

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 473
    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 474
    const/16 v1, 0x33

    aput-byte v1, v0, v3

    .line 475
    const/4 v1, 0x1

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    .line 476
    const/16 v1, 0xb

    aput-byte v1, v0, v4

    .line 477
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 478
    int-to-byte v1, p0

    aput-byte v1, v0, v6

    .line 479
    const/4 v1, 0x5

    aput-byte v3, v0, v1

    .line 480
    const/4 v1, -0x1

    aput-byte v1, v0, v7

    .line 481
    const/4 v1, 0x7

    aget-byte v2, p1, v7

    aput-byte v2, v0, v1

    .line 482
    const/16 v1, 0x8

    aget-byte v2, p1, v5

    aput-byte v2, v0, v1

    .line 483
    const/16 v1, 0x9

    aget-byte v2, p1, v6

    aput-byte v2, v0, v1

    .line 484
    const/16 v1, 0xa

    const/16 v2, 0x9

    invoke-static {v0, v4, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->sum([BII)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 485
    return-object v0
.end method

.method static command(IIII)[B
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    const/16 v2, 0x9

    new-array v2, v2, [B

    .line 91
    const/16 v3, -0x5b

    aput-byte v3, v2, v1

    .line 92
    int-to-byte v3, p0

    aput-byte v3, v2, v0

    .line 93
    const/4 v3, 0x2

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 94
    const/4 v3, 0x3

    int-to-byte v4, p2

    aput-byte v4, v2, v3

    .line 95
    const/4 v3, 0x4

    int-to-byte v4, p3

    aput-byte v4, v2, v3

    .line 97
    :goto_19
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ge v0, v3, :cond_26

    .line 98
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 100
    :cond_26
    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 101
    return-object v2
.end method

.method public static date(II)[B
    .registers 6

    .prologue
    .line 106
    const/16 v0, 0x30

    rem-int/lit8 v1, p0, 0x64

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p1, 0xff

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->command(IIII)[B

    move-result-object v0

    return-object v0
.end method

.method static error(I)I
    .registers 3

    .prologue
    .line 383
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    .line 384
    const/4 v0, 0x1

    .line 398
    :goto_5
    return v0

    .line 386
    :cond_6
    and-int/lit8 v0, p0, 0x30

    const/16 v1, 0x30

    if-ne v0, v1, :cond_e

    .line 387
    const/4 v0, 0x4

    goto :goto_5

    .line 389
    :cond_e
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_14

    .line 390
    const/4 v0, 0x3

    goto :goto_5

    .line 392
    :cond_14
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_1a

    .line 393
    const/4 v0, 0x2

    goto :goto_5

    .line 395
    :cond_1a
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_20

    .line 396
    const/4 v0, 0x5

    goto :goto_5

    .line 398
    :cond_20
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static headV1([B)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 270
    array-length v2, p0

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1f

    aget-byte v2, p0, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1f

    aget-byte v2, p0, v0

    if-nez v2, :cond_1f

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    if-nez v2, :cond_1f

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc5

    if-ne v2, v3, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e
.end method

.method static headV11([B)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 266
    array-length v2, p0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_17

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x33

    if-ne v2, v3, :cond_17

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public static isXs([B)Z
    .registers 2

    .prologue
    .line 275
    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->headV11([B)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->headV1([B)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static looksLike(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 54
    if-nez p0, :cond_4

    .line 58
    :cond_3
    :goto_3
    return v0

    .line 57
    :cond_4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v2, "senssun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "movinglife"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "moving life"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "klausberg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "kb-78"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "kb78"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "if_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "if-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "body fat"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "fat scale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_5e
    const/4 v0, 0x1

    goto :goto_3
.end method

.method static ohm([BI)D
    .registers 7

    .prologue
    .line 361
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 362
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-long v0, v0

    or-long/2addr v0, v2

    .line 363
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2f

    const-wide/32 v2, 0xffffff

    cmp-long v2, v0, v2

    if-ltz v2, :cond_32

    :cond_2f
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_31
    return-wide v0

    :cond_32
    long-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    goto :goto_31
.end method

.method public static parse([B)Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;
    .registers 6

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 80
    if-eqz p0, :cond_1a

    array-length v0, p0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1a

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa5

    if-eq v0, v1, :cond_1c

    .line 81
    :cond_1a
    const/4 v0, 0x0

    .line 86
    :goto_1b
    return-object v0

    .line 83
    :cond_1c
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    .line 84
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    .line 85
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v0

    .line 86
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;

    const/4 v4, 0x6

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;-><init>(IIII)V

    goto :goto_1b
.end method

.method public static parseXs([B)Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;
    .registers 11

    .prologue
    .line 403
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;-><init>()V

    .line 404
    if-eqz p0, :cond_c

    array-length v0, p0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_e

    :cond_c
    move-object v0, v1

    .line 463
    :goto_d
    return-object v0

    .line 407
    :cond_e
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->headV11([B)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 408
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    .line 409
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->sn:I

    .line 410
    const/4 v0, 0x7

    aget-byte v0, p0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_52

    const/4 v0, 0x1

    :goto_29
    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->ackWanted:Z

    .line 411
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    const/16 v2, 0x80

    if-ne v0, v2, :cond_56

    array-length v0, p0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_56

    .line 412
    const/4 v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    .line 413
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    .line 414
    const/16 v0, 0xf

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_54

    const/4 v0, 0x1

    :goto_4e
    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->stable:Z

    :cond_50
    :goto_50
    move-object v0, v1

    .line 463
    goto :goto_d

    .line 410
    :cond_52
    const/4 v0, 0x0

    goto :goto_29

    .line 414
    :cond_54
    const/4 v0, 0x0

    goto :goto_4e

    .line 415
    :cond_56
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    const/16 v2, 0x81

    if-ne v0, v2, :cond_50

    array-length v0, p0

    const/16 v2, 0x16

    if-lt v0, v2, :cond_50

    .line 416
    const/4 v0, 0x2

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    .line 417
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->stable:Z

    .line 419
    const/16 v0, 0x11

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c6

    const/4 v0, 0x1

    :goto_7c
    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->finished:Z

    .line 420
    const/16 v0, 0x12

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v0

    int-to-long v2, v0

    const/16 v0, 0x10

    shl-long/2addr v2, v0

    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v0

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->time:J

    .line 421
    iget-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->finished:Z

    if-eqz v0, :cond_c8

    const/4 v0, 0x0

    :goto_97
    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->error:I

    .line 422
    const/16 v0, 0x16

    :goto_9b
    iget-boolean v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->finished:Z

    if-nez v2, :cond_50

    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_50

    .line 423
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 424
    const/4 v4, 0x2

    if-lt v2, v4, :cond_50

    .line 427
    add-int v4, v0, v2

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 428
    const/4 v5, 0x4

    if-ne v3, v5, :cond_d3

    .line 429
    add-int/lit8 v3, v0, 0x2

    invoke-static {p0, v3, v4, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->tenOhms([BIILcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;)V

    .line 433
    :cond_c4
    :goto_c4
    add-int/2addr v0, v2

    .line 434
    goto :goto_9b

    .line 419
    :cond_c6
    const/4 v0, 0x0

    goto :goto_7c

    .line 421
    :cond_c8
    const/16 v0, 0x11

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->error(I)I

    move-result v0

    goto :goto_97

    .line 430
    :cond_d3
    const/4 v5, 0x5

    if-ne v3, v5, :cond_c4

    .line 431
    add-int/lit8 v3, v0, 0x4

    invoke-static {p0, v3, v4, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->tenOhms([BIILcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;)V

    goto :goto_c4

    .line 436
    :cond_dc
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->headV1([B)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 437
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    .line 438
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    const/16 v2, 0x80

    if-ne v0, v2, :cond_12c

    array-length v0, p0

    const/16 v2, 0xd

    if-lt v0, v2, :cond_12c

    .line 439
    const/4 v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    .line 440
    const/16 v0, 0xb

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x4

    .line 441
    const/4 v2, 0x7

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_10a

    const/4 v3, 0x2

    if-ne v0, v3, :cond_127

    :cond_10a
    const/16 v0, 0xa

    :goto_10c
    mul-int/2addr v0, v2

    int-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    .line 442
    const/16 v0, 0xc

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/lit8 v0, v0, 0x10

    const/16 v2, 0xba

    if-ne v0, v2, :cond_12a

    const/4 v0, 0x1

    :goto_123
    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->stable:Z

    goto/16 :goto_50

    .line 441
    :cond_127
    const/16 v0, 0x64

    goto :goto_10c

    .line 442
    :cond_12a
    const/4 v0, 0x0

    goto :goto_123

    .line 443
    :cond_12c
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    const/16 v2, 0x8c

    if-ne v0, v2, :cond_50

    array-length v0, p0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_50

    .line 444
    const/4 v0, 0x2

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->stable:Z

    .line 446
    const/16 v0, 0xa

    :goto_13f
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_153

    .line 447
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 448
    const/4 v4, 0x2

    if-ge v3, v4, :cond_160

    .line 460
    :cond_153
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-gtz v0, :cond_1a5

    const/4 v0, 0x1

    :goto_15c
    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->finished:Z

    goto/16 :goto_50

    .line 451
    :cond_160
    add-int v4, v0, v3

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 452
    const/4 v5, 0x5

    if-ne v2, v5, :cond_186

    add-int/lit8 v5, v0, 0x2

    sub-int v5, v4, v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_186

    .line 453
    add-int/lit8 v2, v0, 0x2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v2

    int-to-double v6, v2

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    iput-wide v6, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    .line 454
    add-int/lit8 v2, v0, 0x4

    invoke-static {p0, v2, v4, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->tenOhms([BIILcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;)V

    .line 458
    :cond_184
    :goto_184
    add-int/2addr v0, v3

    .line 459
    goto :goto_13f

    .line 455
    :cond_186
    const/4 v5, 0x7

    if-ne v2, v5, :cond_184

    add-int/lit8 v2, v0, 0x2

    sub-int v2, v4, v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_184

    iget-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 456
    add-int/lit8 v2, v0, 0x2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v2

    int-to-double v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    goto :goto_184

    .line 460
    :cond_1a5
    const/4 v0, 0x0

    goto :goto_15c
.end method

.method public static pro(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 220
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->PRO_MODELS:[I

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_c

    aget v4, v2, v1

    .line 221
    if-ne v4, p0, :cond_d

    .line 222
    const/4 v0, 0x1

    .line 225
    :cond_c
    return v0

    .line 220
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static reading(Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 514
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 515
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 516
    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    .line 517
    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 518
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->error:I

    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->hasImpedance()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 519
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->single()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 520
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z20:[D

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->single(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;[D)V

    .line 526
    :cond_25
    :goto_25
    return-object v0

    .line 522
    :cond_26
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z20:[D

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    invoke-static {v1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z100:[D

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25
.end method

.method public static stored(Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;J)Z
    .registers 8

    .prologue
    .line 468
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->time:J

    const-wide/32 v2, 0x5f5e1000

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->time:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static sum([BII)I
    .registers 5

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    :goto_1
    if-gt p1, p2, :cond_b

    .line 281
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 280
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 283
    :cond_b
    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static syncTime(IIJ)[B
    .registers 12

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 490
    const/16 v0, 0xf

    new-array v0, v0, [B

    .line 491
    const/16 v1, 0x33

    aput-byte v1, v0, v3

    .line 492
    const/16 v1, -0x34

    aput-byte v1, v0, v4

    .line 493
    const/16 v1, 0xf

    aput-byte v1, v0, v5

    .line 494
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 495
    const/4 v1, 0x4

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 496
    const/4 v1, 0x5

    aput-byte v3, v0, v1

    .line 497
    const/4 v1, 0x6

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    .line 498
    const/4 v1, 0x7

    aput-byte v4, v0, v1

    .line 499
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 500
    const/16 v1, 0x9

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 501
    const/16 v1, 0xa

    const/16 v2, 0x18

    shr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 502
    const/16 v1, 0xb

    const/16 v2, 0x10

    shr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 503
    const/16 v1, 0xc

    shr-long v2, p2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 504
    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 505
    const/16 v1, 0xe

    invoke-static {v0, v5, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->sum([BII)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 506
    return-object v0
.end method

.method static tenOhms([BIILcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;)V
    .registers 10

    .prologue
    .line 371
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v0, 0xa

    if-ge v1, v0, :cond_28

    mul-int/lit8 v0, v1, 0x4

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    if-gt v0, p2, :cond_28

    .line 372
    mul-int/lit8 v0, v1, 0x4

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->ohm([BI)D

    move-result-wide v2

    .line 373
    const/4 v0, 0x5

    if-ge v1, v0, :cond_25

    iget-object v0, p3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z20:[D

    :goto_19
    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->WIRE:[I

    rem-int/lit8 v5, v1, 0x5

    aget v4, v4, v5

    aput-wide v2, v0, v4

    .line 371
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 373
    :cond_25
    iget-object v0, p3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z100:[D

    goto :goto_19

    .line 375
    :cond_28
    return-void
.end method

.method public static time(III)[B
    .registers 4

    .prologue
    .line 110
    const/16 v0, 0x31

    invoke-static {v0, p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->command(IIII)[B

    move-result-object v0

    return-object v0
.end method

.method static u16([BI)I
    .registers 4

    .prologue
    .line 378
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static user(ZII)[B
    .registers 8

    .prologue
    .line 115
    const/16 v1, 0x10

    if-eqz p0, :cond_27

    const/16 v0, 0xf

    :goto_6
    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    const/16 v3, 0x63

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x64

    const/16 v4, 0xdc

    .line 116
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 115
    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->command(IIII)[B

    move-result-object v0

    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static xsAdvert([BLjava/lang/String;)[I
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x6

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 233
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    :cond_8
    move-object v0, v4

    .line 262
    :goto_9
    return-object v0

    .line 236
    :cond_a
    new-array v7, v11, [B

    .line 237
    const-string v0, ":"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0xc

    if-eq v0, v5, :cond_1e

    move-object v0, v4

    .line 239
    goto :goto_9

    :cond_1e
    move v0, v1

    .line 241
    :goto_1f
    if-ge v0, v11, :cond_37

    .line 242
    mul-int/lit8 v5, v0, 0x2

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v7, v0

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_37
    move v0, v1

    .line 244
    :goto_38
    add-int/lit8 v2, v0, 0x1

    array-length v5, p0

    if-ge v2, v5, :cond_4a

    .line 245
    aget-byte v2, p0, v0

    and-int/lit16 v8, v2, 0xff

    .line 246
    if-eqz v8, :cond_4a

    add-int v2, v0, v8

    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-lt v2, v5, :cond_4c

    :cond_4a
    move-object v0, v4

    .line 262
    goto :goto_9

    .line 249
    :cond_4c
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 250
    add-int/lit8 v9, v0, 0x4

    .line 251
    const/16 v5, 0xff

    if-ne v2, v5, :cond_96

    const/16 v2, 0xe

    if-lt v8, v2, :cond_96

    add-int/lit8 v2, v9, 0xb

    array-length v5, p0

    if-gt v2, v5, :cond_96

    move v5, v1

    move v6, v3

    .line 253
    :goto_63
    if-ge v5, v11, :cond_76

    .line 254
    add-int/lit8 v2, v9, 0x5

    add-int/2addr v2, v5

    aget-byte v2, p0, v2

    aget-byte v10, v7, v5

    if-ne v2, v10, :cond_74

    move v2, v3

    :goto_6f
    and-int/2addr v6, v2

    .line 253
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_63

    :cond_74
    move v2, v1

    .line 254
    goto :goto_6f

    .line 256
    :cond_76
    if-eqz v6, :cond_96

    .line 257
    const/4 v0, 0x2

    new-array v0, v0, [I

    add-int/lit8 v2, v9, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v9, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v9, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    aput v1, v0, v3

    goto/16 :goto_9

    .line 260
    :cond_96
    add-int/lit8 v2, v8, 0x1

    add-int/2addr v0, v2

    .line 261
    goto :goto_38
.end method
