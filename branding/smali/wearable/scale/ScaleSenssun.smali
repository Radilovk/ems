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
.field static final ACTIVITY:I = 0x3

.field public static final CHAR_B:Ljava/util/UUID;

.field public static final NOTIFY_A:Ljava/util/UUID;

.field public static final PIN:I = 0x1

.field static final PRO_MODELS:[I

.field public static final SERVICE_A:Ljava/util/UUID;

.field public static final SERVICE_B:Ljava/util/UUID;

.field public static final T_ERROR:I = 0xbe

.field public static final T_FAT:I = 0xb0

.field public static final T_KCAL:I = 0xd0

.field public static final T_LIVE:I = 0xa0

.field public static final T_MUSCLE:I = 0xc0

.field public static final T_STABLE:I = 0xaa

.field static final UNIT_KG:I = 0x1

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

    .line 368
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

    .line 368
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

    .line 474
    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 475
    const/16 v1, 0x33

    aput-byte v1, v0, v3

    .line 476
    const/4 v1, 0x1

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    .line 477
    const/16 v1, 0xb

    aput-byte v1, v0, v4

    .line 478
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 479
    int-to-byte v1, p0

    aput-byte v1, v0, v6

    .line 480
    const/4 v1, 0x5

    aput-byte v3, v0, v1

    .line 481
    const/4 v1, -0x1

    aput-byte v1, v0, v7

    .line 482
    const/4 v1, 0x7

    aget-byte v2, p1, v7

    aput-byte v2, v0, v1

    .line 483
    const/16 v1, 0x8

    aget-byte v2, p1, v5

    aput-byte v2, v0, v1

    .line 484
    const/16 v1, 0x9

    aget-byte v2, p1, v6

    aput-byte v2, v0, v1

    .line 485
    const/16 v1, 0xa

    const/16 v2, 0x9

    invoke-static {v0, v4, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->sum([BII)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 486
    return-object v0
.end method

.method static bcd(I)I
    .registers 3

    .prologue
    .line 520
    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p0, 0xa

    or-int/2addr v0, v1

    return v0
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
    .line 384
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    .line 385
    const/4 v0, 0x1

    .line 399
    :goto_5
    return v0

    .line 387
    :cond_6
    and-int/lit8 v0, p0, 0x30

    const/16 v1, 0x30

    if-ne v0, v1, :cond_e

    .line 388
    const/4 v0, 0x4

    goto :goto_5

    .line 390
    :cond_e
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_14

    .line 391
    const/4 v0, 0x3

    goto :goto_5

    .line 393
    :cond_14
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_1a

    .line 394
    const/4 v0, 0x2

    goto :goto_5

    .line 396
    :cond_1a
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_20

    .line 397
    const/4 v0, 0x5

    goto :goto_5

    .line 399
    :cond_20
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static head([BI)V
    .registers 4

    .prologue
    .line 524
    const/4 v0, 0x0

    const/16 v1, 0x33

    aput-byte v1, p0, v0

    .line 525
    const/4 v0, 0x1

    const/16 v1, -0x34

    aput-byte v1, p0, v0

    .line 526
    const/4 v0, 0x2

    array-length v1, p0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 527
    const/4 v0, 0x3

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 528
    const/4 v0, 0x4

    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 529
    return-void
.end method

.method static headV1([B)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
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

    .line 267
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

.method public static hello(IZIIJZIID)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIIJZIID)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 602
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 603
    const/16 v0, 0x30

    if-ne p0, v0, :cond_b

    move-object v0, v6

    .line 622
    :goto_a
    return-object v0

    .line 606
    :cond_b
    const/16 v0, 0x11

    if-ge p0, v0, :cond_13

    if-gez p0, :cond_5b

    if-eqz p1, :cond_5b

    :cond_13
    const/4 v0, 0x1

    .line 607
    :goto_14
    if-eqz v0, :cond_6f

    .line 608
    add-int/lit8 v1, p2, 0x1

    invoke-static {p2, p3, p4, p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->syncTime(IIJ)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    if-gez p0, :cond_5d

    .line 610
    const/16 v0, 0x11

    add-int/lit8 v7, v1, 0x1

    const/4 v5, 0x0

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->userAdd(IIZIIZ)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    const/16 v0, 0x12

    add-int/lit8 v8, v7, 0x1

    const/4 v5, 0x0

    move v1, v7

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->userAdd(IIZIIZ)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    const/16 v0, 0x13

    add-int/lit8 v1, v8, 0x1

    const/4 v5, 0x0

    move v1, v8

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->userAdd(IIZIIZ)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_59
    move-object v0, v6

    .line 622
    goto :goto_a

    .line 606
    :cond_5b
    const/4 v0, 0x0

    goto :goto_14

    .line 614
    :cond_5d
    add-int/lit8 v0, v1, 0x1

    const/4 v5, 0x0

    move v0, p0

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->userAdd(IIZIIZ)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 617
    :cond_6f
    const/16 v0, 0xf

    if-eq p0, v0, :cond_75

    if-gez p0, :cond_7c

    .line 618
    :cond_75
    invoke-static {p3, p4, p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->syncTimeV2(IJ)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_7c
    invoke-static/range {p6 .. p10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->userAddV1(ZIID)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59
.end method

.method public static isXs([B)Z
    .registers 2

    .prologue
    .line 276
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
    .line 362
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

    .line 363
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-long v0, v0

    or-long/2addr v0, v2

    .line 364
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
    .line 404
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;-><init>()V

    .line 405
    if-eqz p0, :cond_c

    array-length v0, p0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_e

    :cond_c
    move-object v0, v1

    .line 464
    :goto_d
    return-object v0

    .line 408
    :cond_e
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->headV11([B)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 409
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    .line 410
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->sn:I

    .line 411
    const/4 v0, 0x7

    aget-byte v0, p0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_52

    const/4 v0, 0x1

    :goto_29
    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->ackWanted:Z

    .line 412
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    const/16 v2, 0x80

    if-ne v0, v2, :cond_56

    array-length v0, p0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_56

    .line 413
    const/4 v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    .line 414
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    .line 415
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

    .line 464
    goto :goto_d

    .line 411
    :cond_52
    const/4 v0, 0x0

    goto :goto_29

    .line 415
    :cond_54
    const/4 v0, 0x0

    goto :goto_4e

    .line 416
    :cond_56
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    const/16 v2, 0x81

    if-ne v0, v2, :cond_50

    array-length v0, p0

    const/16 v2, 0x16

    if-lt v0, v2, :cond_50

    .line 417
    const/4 v0, 0x2

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    .line 418
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->stable:Z

    .line 420
    const/16 v0, 0x11

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c6

    const/4 v0, 0x1

    :goto_7c
    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->finished:Z

    .line 421
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

    .line 422
    iget-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->finished:Z

    if-eqz v0, :cond_c8

    const/4 v0, 0x0

    :goto_97
    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->error:I

    .line 423
    const/16 v0, 0x16

    :goto_9b
    iget-boolean v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->finished:Z

    if-nez v2, :cond_50

    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_50

    .line 424
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 425
    const/4 v4, 0x2

    if-lt v2, v4, :cond_50

    .line 428
    add-int v4, v0, v2

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 429
    const/4 v5, 0x4

    if-ne v3, v5, :cond_d3

    .line 430
    add-int/lit8 v3, v0, 0x2

    invoke-static {p0, v3, v4, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->tenOhms([BIILcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;)V

    .line 434
    :cond_c4
    :goto_c4
    add-int/2addr v0, v2

    .line 435
    goto :goto_9b

    .line 420
    :cond_c6
    const/4 v0, 0x0

    goto :goto_7c

    .line 422
    :cond_c8
    const/16 v0, 0x11

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->error(I)I

    move-result v0

    goto :goto_97

    .line 431
    :cond_d3
    const/4 v5, 0x5

    if-ne v3, v5, :cond_c4

    .line 432
    add-int/lit8 v3, v0, 0x4

    invoke-static {p0, v3, v4, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->tenOhms([BIILcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;)V

    goto :goto_c4

    .line 437
    :cond_dc
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->headV1([B)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 438
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    .line 439
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    const/16 v2, 0x80

    if-ne v0, v2, :cond_12c

    array-length v0, p0

    const/16 v2, 0xd

    if-lt v0, v2, :cond_12c

    .line 440
    const/4 v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    .line 441
    const/16 v0, 0xb

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x4

    .line 442
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

    .line 443
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

    .line 442
    :cond_127
    const/16 v0, 0x64

    goto :goto_10c

    .line 443
    :cond_12a
    const/4 v0, 0x0

    goto :goto_123

    .line 444
    :cond_12c
    iget v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    const/16 v2, 0x8c

    if-ne v0, v2, :cond_50

    array-length v0, p0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_50

    .line 445
    const/4 v0, 0x2

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->stable:Z

    .line 447
    const/16 v0, 0xa

    :goto_13f
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_153

    .line 448
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 449
    const/4 v4, 0x2

    if-ge v3, v4, :cond_160

    .line 461
    :cond_153
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-gtz v0, :cond_1a5

    const/4 v0, 0x1

    :goto_15c
    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->finished:Z

    goto/16 :goto_50

    .line 452
    :cond_160
    add-int v4, v0, v3

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 453
    const/4 v5, 0x5

    if-ne v2, v5, :cond_186

    add-int/lit8 v5, v0, 0x2

    sub-int v5, v4, v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_186

    .line 454
    add-int/lit8 v2, v0, 0x2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v2

    int-to-double v6, v2

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    iput-wide v6, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    .line 455
    add-int/lit8 v2, v0, 0x4

    invoke-static {p0, v2, v4, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->tenOhms([BIILcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;)V

    .line 459
    :cond_184
    :goto_184
    add-int/2addr v0, v3

    .line 460
    goto :goto_13f

    .line 456
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

    .line 457
    add-int/lit8 v2, v0, 0x2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->u16([BI)I

    move-result v2

    int-to-double v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    goto :goto_184

    .line 461
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

    .line 630
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 631
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 632
    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    .line 633
    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 634
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->error:I

    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->hasImpedance()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 635
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->single()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 636
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z20:[D

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->single(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;[D)V

    .line 642
    :cond_25
    :goto_25
    return-object v0

    .line 638
    :cond_26
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z20:[D

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    invoke-static {v1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z100:[D

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25
.end method

.method public static stored(Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;J)Z
    .registers 8

    .prologue
    .line 469
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
    .line 280
    const/4 v0, 0x0

    .line 281
    :goto_1
    if-gt p1, p2, :cond_b

    .line 282
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 281
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 284
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

    .line 491
    const/16 v0, 0xf

    new-array v0, v0, [B

    .line 492
    const/16 v1, 0x33

    aput-byte v1, v0, v3

    .line 493
    const/16 v1, -0x34

    aput-byte v1, v0, v4

    .line 494
    const/16 v1, 0xf

    aput-byte v1, v0, v5

    .line 495
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 496
    const/4 v1, 0x4

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 497
    const/4 v1, 0x5

    aput-byte v3, v0, v1

    .line 498
    const/4 v1, 0x6

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    .line 499
    const/4 v1, 0x7

    aput-byte v4, v0, v1

    .line 500
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 501
    const/16 v1, 0x9

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 502
    const/16 v1, 0xa

    const/16 v2, 0x18

    shr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 503
    const/16 v1, 0xb

    const/16 v2, 0x10

    shr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 504
    const/16 v1, 0xc

    shr-long v2, p2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 505
    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 506
    const/16 v1, 0xe

    invoke-static {v0, v5, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->sum([BII)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 507
    return-object v0
.end method

.method public static syncTimeV2(IJ)[B
    .registers 12

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xa

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 580
    const/16 v0, 0xe

    new-array v0, v0, [B

    .line 581
    const/4 v1, 0x0

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    .line 582
    const/16 v1, -0x3b

    aput-byte v1, v0, v3

    .line 583
    const/16 v1, 0xe

    aput-byte v1, v0, v4

    .line 584
    const/4 v1, 0x5

    aput-byte v3, v0, v1

    .line 585
    const/4 v1, 0x6

    aput-byte v6, v0, v1

    .line 586
    const/4 v1, 0x7

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 587
    int-to-byte v1, p0

    aput-byte v1, v0, v5

    .line 588
    const/16 v1, 0x9

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 589
    const/16 v1, 0x10

    shr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 590
    const/16 v1, 0xb

    shr-long v2, p1, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 591
    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 592
    const/16 v1, 0xd

    invoke-static {v0, v4, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->sum([BII)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 593
    return-object v0
.end method

.method static tenOhms([BIILcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;)V
    .registers 10

    .prologue
    .line 372
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v0, 0xa

    if-ge v1, v0, :cond_28

    mul-int/lit8 v0, v1, 0x4

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    if-gt v0, p2, :cond_28

    .line 373
    mul-int/lit8 v0, v1, 0x4

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->ohm([BI)D

    move-result-wide v2

    .line 374
    const/4 v0, 0x5

    if-ge v1, v0, :cond_25

    iget-object v0, p3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z20:[D

    :goto_19
    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->WIRE:[I

    rem-int/lit8 v5, v1, 0x5

    aget v4, v4, v5

    aput-wide v2, v0, v4

    .line 372
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 374
    :cond_25
    iget-object v0, p3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z100:[D

    goto :goto_19

    .line 376
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
    .line 379
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

.method public static userAdd(IIZIIZ)[B
    .registers 15

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 533
    const/16 v0, 0x13

    if-lt p0, v0, :cond_7a

    const/16 v0, 0x21

    .line 534
    :goto_c
    new-array v5, v0, [B

    .line 535
    invoke-static {v5, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->head([BI)V

    .line 536
    const/4 v1, 0x5

    aput-byte v3, v5, v1

    .line 537
    const/4 v1, 0x6

    aput-byte v4, v5, v1

    .line 538
    const/4 v1, 0x7

    aput-byte v4, v5, v1

    .line 539
    const/16 v6, 0x8

    if-eqz p5, :cond_84

    move v1, v2

    :goto_1f
    int-to-byte v1, v1

    aput-byte v1, v5, v6

    .line 540
    const/16 v1, 0x9

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->bcd(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 541
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->bcd(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v5, v8

    .line 542
    const/16 v1, 0xb

    if-eqz p2, :cond_37

    move v3, v4

    :cond_37
    int-to-byte v3, v3

    aput-byte v3, v5, v1

    .line 543
    const/16 v1, 0xc

    const/16 v3, 0x64

    const/16 v6, 0xdc

    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    .line 544
    const/16 v1, 0xd

    const/16 v3, 0x63

    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    .line 545
    const/16 v1, 0xe

    aput-byte v7, v5, v1

    .line 546
    const/16 v1, 0xf

    aput-byte v4, v5, v1

    .line 547
    const/16 v1, 0x21

    if-ne v0, v1, :cond_6e

    .line 548
    const/16 v1, 0x1d

    aput-byte v7, v5, v1

    .line 549
    const/16 v1, 0x1e

    aput-byte v4, v5, v1

    .line 551
    :cond_6e
    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, -0x2

    invoke-static {v5, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->sum([BII)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    .line 552
    return-object v5

    .line 533
    :cond_7a
    const/16 v0, 0x12

    if-ne p0, v0, :cond_81

    const/16 v0, 0x1a

    goto :goto_c

    :cond_81
    const/16 v0, 0x11

    goto :goto_c

    :cond_84
    move v1, v3

    .line 539
    goto :goto_1f
.end method

.method public static userAddV1(ZIID)[B
    .registers 14

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 557
    const/16 v2, 0x13

    new-array v2, v2, [B

    .line 558
    const/16 v3, 0x10

    aput-byte v3, v2, v1

    .line 559
    const/16 v3, -0x3b

    aput-byte v3, v2, v5

    .line 560
    const/16 v3, 0x13

    aput-byte v3, v2, v6

    .line 561
    const/4 v3, 0x5

    aput-byte v5, v2, v3

    .line 562
    const/4 v3, 0x6

    aput-byte v0, v2, v3

    .line 563
    const/16 v3, 0x8

    aput-byte v0, v2, v3

    .line 564
    const/16 v3, 0x9

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->bcd(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 565
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->bcd(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    .line 566
    const/16 v3, 0xb

    if-eqz p0, :cond_8e

    :goto_34
    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 567
    const/16 v0, 0xc

    const/16 v3, 0x64

    const/16 v4, 0xdc

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 568
    const/16 v0, 0xd

    const/16 v3, 0x63

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 569
    const/16 v0, 0xe

    aput-byte v5, v2, v0

    .line 570
    const/16 v0, 0xf

    aput-byte v1, v2, v0

    .line 571
    const-wide/16 v0, 0x0

    const-wide v4, 0x406f400000000000L    # 250.0

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 572
    const/16 v1, 0x10

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 573
    const/16 v1, 0x11

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 574
    const/16 v0, 0x12

    const/16 v1, 0x11

    invoke-static {v2, v6, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->sum([BII)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 575
    return-object v2

    :cond_8e
    move v0, v1

    .line 566
    goto :goto_34
.end method

.method public static xsAdvert([BLjava/lang/String;)[I
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x6

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 233
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    :cond_8
    move-object v0, v4

    .line 263
    :goto_9
    return-object v0

    .line 236
    :cond_a
    new-array v8, v12, [B

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
    if-ge v0, v12, :cond_37

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

    aput-byte v5, v8, v0

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

    and-int/lit16 v9, v2, 0xff

    .line 246
    if-eqz v9, :cond_4a

    add-int v2, v0, v9

    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-lt v2, v5, :cond_4c

    :cond_4a
    move-object v0, v4

    .line 263
    goto :goto_9

    .line 249
    :cond_4c
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 250
    add-int/lit8 v10, v0, 0x4

    .line 251
    const/16 v5, 0xff

    if-ne v2, v5, :cond_a8

    const/16 v2, 0xe

    if-lt v9, v2, :cond_a8

    add-int/lit8 v2, v10, 0xb

    array-length v5, p0

    if-gt v2, v5, :cond_a8

    move v5, v1

    move v6, v3

    move v7, v3

    .line 253
    :goto_64
    if-ge v5, v12, :cond_86

    .line 254
    add-int/lit8 v2, v10, 0x5

    add-int/2addr v2, v5

    aget-byte v2, p0, v2

    aget-byte v11, v8, v5

    if-ne v2, v11, :cond_82

    move v2, v3

    :goto_70
    and-int/2addr v7, v2

    .line 255
    add-int/lit8 v2, v10, 0x5

    add-int/2addr v2, v5

    aget-byte v2, p0, v2

    rsub-int/lit8 v11, v5, 0x5

    aget-byte v11, v8, v11

    if-ne v2, v11, :cond_84

    move v2, v3

    :goto_7d
    and-int/2addr v6, v2

    .line 253
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_64

    :cond_82
    move v2, v1

    .line 254
    goto :goto_70

    :cond_84
    move v2, v1

    .line 255
    goto :goto_7d

    .line 257
    :cond_86
    if-nez v7, :cond_8a

    if-eqz v6, :cond_a8

    .line 258
    :cond_8a
    const/4 v0, 0x2

    new-array v0, v0, [I

    add-int/lit8 v2, v10, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v10, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v10, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    aput v1, v0, v3

    goto/16 :goto_9

    .line 261
    :cond_a8
    add-int/lit8 v2, v9, 0x1

    add-int/2addr v0, v2

    .line 262
    goto :goto_38
.end method
