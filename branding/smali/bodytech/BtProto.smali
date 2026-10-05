.class public final Lcom/isaigu/gymapp/bodytech/BtProto;
.super Ljava/lang/Object;
.source "BtProto.java"


# static fields
.field public static final BATTERY_INIT:I = 0x20102

.field public static final BATTERY_INIT2:I = 0x20010

.field public static final BATTERY_SYNC:I = 0x8010000

.field public static final BEGIN:I = 0x36

.field public static final END:I = 0xc9

.field public static final EN_ALL_OFF:I = 0xff0000

.field public static final G_RESET:I = 0x0

.field public static final G_SEL:I = 0x3

.field public static final G_STATUS:I = 0x1

.field public static final G_SYNC:I = 0x5

.field public static final G_VER:I = 0x8

.field public static final R_INTENSITY:I = 0x2

.field public static final R_LENGTH_CLOCK:I = 0x0

.field public static final R_STEP_NOR:I = 0x1

.field public static final R_T1:I = 0x7

.field public static final R_T1_INT_STEP:I = 0xb

.field public static final R_T1_W_STEP:I = 0xc

.field public static final R_T2:I = 0x8

.field public static final R_T3:I = 0x9

.field public static final R_T3_INT_STEP:I = 0xd

.field public static final R_T3_W_STEP:I = 0xe

.field public static final R_T4:I = 0xa

.field public static final R_T_PERIOD:I = 0x6

.field public static final R_WAVEFORM:I = 0x4

.field public static final R_WIDTH:I = 0x3

.field public static final R_WORKLEN:I = 0x5

.field public static final STEP_NOR_DEFAULT:I = 0x1010101


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allOff()[B
    .registers 3

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/high16 v2, 0xff0000

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0
.end method

.method public static batteryInit()[B
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x20102

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0
.end method

.method public static batteryInit2()[B
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x20010

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0
.end method

.method public static batteryRaw([B)I
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 109
    if-eqz p0, :cond_1a

    array-length v1, p0

    if-ne v1, v5, :cond_1a

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v5, :cond_1a

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_1b

    .line 111
    :cond_1a
    :goto_1a
    return v0

    .line 110
    :cond_1b
    aget-byte v1, p0, v3

    if-nez v1, :cond_23

    aget-byte v1, p0, v4

    if-eqz v1, :cond_1a

    .line 111
    :cond_23
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_1a
.end method

.method public static batterySync()[B
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x8010000

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0
.end method

.method public static enable(I)[B
    .registers 5

    .prologue
    .line 59
    and-int/lit16 v0, p0, 0xff

    .line 60
    const/4 v1, 0x0

    const/4 v2, 0x3

    xor-int/lit8 v3, v0, -0x1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0
.end method

.method public static frame(III)[B
    .registers 5

    .prologue
    .line 38
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 40
    shl-int/lit8 v1, p0, 0x4

    or-int/2addr v1, p1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    const/16 v1, -0x37

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method static has16([BI)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 133
    move v0, v1

    .line 134
    :goto_2
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_12

    .line 135
    aget-byte v2, p0, v0

    and-int/lit16 v3, v2, 0xff

    .line 136
    if-eqz v3, :cond_12

    add-int v2, v0, v3

    array-length v4, p0

    if-lt v2, v4, :cond_13

    .line 145
    :cond_12
    :goto_12
    return v1

    .line 137
    :cond_13
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 138
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1f

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3b

    .line 139
    :cond_1f
    add-int/lit8 v2, v0, 0x2

    :goto_21
    add-int/lit8 v4, v2, 0x1

    add-int v5, v0, v3

    if-gt v4, v5, :cond_3b

    .line 140
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    if-ne v4, p1, :cond_38

    const/4 v1, 0x1

    goto :goto_12

    .line 139
    :cond_38
    add-int/lit8 v2, v2, 0x2

    goto :goto_21

    .line 143
    :cond_3b
    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    .line 144
    goto :goto_2
.end method

.method public static hz(II)[B
    .registers 5

    .prologue
    const v0, 0xf4240

    const/4 v1, 0x0

    .line 67
    if-lez p1, :cond_8

    if-le p1, v0, :cond_e

    :cond_8
    move v0, v1

    :goto_9
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0

    :cond_e
    div-int/2addr v0, p1

    const v2, 0xfffff

    and-int/2addr v0, v2

    goto :goto_9
.end method

.method public static intensity(II)[B
    .registers 4

    .prologue
    .line 75
    const/4 v1, 0x2

    if-ltz p1, :cond_7

    const/16 v0, 0x64

    if-lt p1, v0, :cond_d

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0

    :cond_d
    and-int/lit8 v0, p1, 0x7f

    goto :goto_8
.end method

.method static nameIsBodytech(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    if-nez p0, :cond_7

    move v0, v1

    .line 128
    :cond_6
    :goto_6
    return v0

    .line 126
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string v3, "TZLJ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "ADT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_3c

    const-string v3, "EMS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v5, :cond_6

    :cond_3c
    move v0, v1

    goto :goto_6
.end method

.method public static percent(I)I
    .registers 5

    .prologue
    .line 118
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtProto;->volts(I)F

    move-result v0

    .line 119
    const/16 v1, 0x64

    const/4 v2, 0x0

    const v3, 0x40666666    # 3.6f

    sub-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    const v3, 0x3ef5c28f    # 0.48f

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static reset()[B
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v0, 0x1

    invoke-static {v1, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0
.end method

.method public static stepNor(II)[B
    .registers 4

    .prologue
    .line 71
    const/4 v1, 0x1

    if-lez p1, :cond_8

    const v0, 0x20202020

    if-lt p1, v0, :cond_10

    :cond_8
    const v0, 0x1010101

    :goto_b
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0

    :cond_10
    const v0, 0x1f1f1f1f

    and-int/2addr v0, p1

    goto :goto_b
.end method

.method public static sync(I)[B
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x5

    const/16 v0, 0x168

    if-gt p0, v0, :cond_11

    mul-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0xa

    :goto_c
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0

    :cond_11
    move v0, v1

    goto :goto_c
.end method

.method public static t(III)[B
    .registers 5

    .prologue
    const v1, 0xfffff

    .line 92
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    .line 93
    if-lez p2, :cond_c

    mul-int/lit8 v0, p2, 0xa

    if-lt v0, v1, :cond_17

    :cond_c
    const/16 v0, 0x2625

    .line 97
    :goto_e
    add-int/lit8 v1, p1, 0x7

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0

    .line 93
    :cond_17
    mul-int/lit16 v0, p2, 0x2710

    div-int/lit16 v0, v0, 0x400

    and-int/2addr v0, v1

    goto :goto_e

    .line 95
    :cond_1d
    if-ltz p2, :cond_23

    mul-int/lit8 v0, p2, 0xa

    if-lt v0, v1, :cond_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_e

    :cond_25
    mul-int/lit16 v0, p2, 0x2710

    div-int/lit16 v0, v0, 0x400

    and-int/2addr v0, v1

    goto :goto_e
.end method

.method public static t1IntStep(II)[B
    .registers 4

    .prologue
    .line 100
    const/16 v1, 0xb

    if-ltz p1, :cond_8

    const/16 v0, 0x64

    if-lt p1, v0, :cond_e

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0

    :cond_e
    and-int/lit8 v0, p1, 0x7f

    goto :goto_9
.end method

.method public static t1WidthStep(II)[B
    .registers 4

    .prologue
    .line 101
    const/16 v1, 0xc

    if-ltz p1, :cond_8

    const/16 v0, 0x100

    if-lt p1, v0, :cond_e

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0

    :cond_e
    mul-int/lit8 v0, p1, 0xa

    and-int/lit16 v0, v0, 0xfff

    goto :goto_9
.end method

.method public static t3IntStep(II)[B
    .registers 4

    .prologue
    .line 102
    const/16 v1, 0xd

    if-ltz p1, :cond_8

    const/16 v0, 0x64

    if-lt p1, v0, :cond_e

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0

    :cond_e
    and-int/lit8 v0, p1, 0x7f

    goto :goto_9
.end method

.method public static t3WidthStep(II)[B
    .registers 4

    .prologue
    .line 103
    const/16 v1, 0xe

    if-ltz p1, :cond_8

    const/16 v0, 0x100

    if-lt p1, v0, :cond_e

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0

    :cond_e
    mul-int/lit8 v0, p1, 0xa

    and-int/lit16 v0, v0, 0xfff

    goto :goto_9
.end method

.method public static tPeriod(II)[B
    .registers 4

    .prologue
    .line 86
    const/4 v1, 0x6

    if-lez p1, :cond_7

    const/16 v0, 0x10

    if-lt p1, v0, :cond_d

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0

    :cond_d
    mul-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0xf

    goto :goto_8
.end method

.method public static volts(I)F
    .registers 3

    .prologue
    .line 114
    int-to-float v0, p0

    const v1, 0x3b1d4952    # 0.0024f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static waveform(II)[B
    .registers 4

    .prologue
    .line 83
    const/4 v0, 0x4

    and-int/lit8 v1, p1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0
.end method

.method public static width(II)[B
    .registers 4

    .prologue
    .line 80
    const/4 v1, 0x3

    if-lez p1, :cond_7

    const/16 v0, 0x200

    if-lt p1, v0, :cond_e

    :cond_7
    const/16 v0, 0x320

    :goto_9
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->frame(III)[B

    move-result-object v0

    return-object v0

    :cond_e
    mul-int/lit8 v0, p1, 0xa

    div-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0x1fff

    goto :goto_9
.end method
