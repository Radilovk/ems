.class public final Lcom/isaigu/gymapp/bodytech/WiProto;
.super Ljava/lang/Object;
.source "WiProto.java"


# static fields
.field public static final BATTERY_CHR:Ljava/lang/String; = "00002a19-0000-1000-8000-00805f9b34fb"

.field public static final BATTERY_SVC:Ljava/lang/String; = "0000180f-0000-1000-8000-00805f9b34fb"

.field public static final CHANNELS:I = 0xa

.field private static final CHR:[Ljava/lang/String;

.field public static final CHR_CLOCK:Ljava/lang/String; = "7764f042-c6a9-11e4-8731-1681e6b88ec1"

.field public static final CHR_CURRENTS:Ljava/lang/String; = "966e06c6-c717-11e4-8731-1681e6b88ec1"

.field public static final CHR_PROGRAM:Ljava/lang/String; = "776439af-c717-11e4-8731-1681e6b88ec1"

.field public static final CHR_REST:Ljava/lang/String; = "7764e8bc-c6a9-11e4-8731-1681e6b88ec1"

.field public static final CHR_RUN:Ljava/lang/String; = "7764eda8-c6a9-11e4-8731-1681e6b88ec1"

.field public static final CHR_WIDTHS:Ljava/lang/String; = "7764e556-c6a9-11e4-8731-1681e6b88ec1"

.field static final DEC_HI:I = 0x5

.field static final DEC_LO:I = 0x7e

.field static final DUR:I = 0x29

.field public static final MAX_CURRENT:I = 0x64

.field public static final OP_CURRENTS:I = 0x0

.field public static final OP_PROGRAM:I = 0x1

.field public static final OP_REST:I = 0x2

.field public static final OP_RUN:I = 0x4

.field public static final OP_WIDTHS:I = 0x3

.field public static final PHASE_ARM:I = 0x2

.field public static final PHASE_RUN:I = 0x0

.field public static final RUN_START:I = 0x25

.field public static final RUN_STOP:I = 0x0

.field public static final SVC:Ljava/lang/String; = "7764d8fe-c6a9-11e4-8731-1681e6b88ec1"

.field public static final UNIT_MAX:I = 0x1f

.field static final WIDTHS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "966e06c6-c717-11e4-8731-1681e6b88ec1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "776439af-c717-11e4-8731-1681e6b88ec1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "7764e8bc-c6a9-11e4-8731-1681e6b88ec1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "7764e556-c6a9-11e4-8731-1681e6b88ec1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "7764eda8-c6a9-11e4-8731-1681e6b88ec1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/bodytech/WiProto;->CHR:[Ljava/lang/String;

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/isaigu/gymapp/bodytech/WiProto;->WIDTHS:[I

    return-void

    :array_28
    .array-data 4
        0x7f
        0x7f
        0x6d
        0x49
        0x7f
        0x7f
        0x64
        0x52
        0x7f
        0x52
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chr([B)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 46
    if-eqz p0, :cond_7

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    .line 48
    :cond_7
    :goto_7
    return-object v0

    .line 47
    :cond_8
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 48
    sget-object v2, Lcom/isaigu/gymapp/bodytech/WiProto;->CHR:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiProto;->CHR:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_7
.end method

.method static clamp(III)I
    .registers 3

    .prologue
    .line 72
    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method public static clockTenths([B)I
    .registers 7

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 131
    if-eqz p0, :cond_8

    array-length v1, p0

    if-eq v1, v5, :cond_9

    .line 138
    :cond_8
    :goto_8
    return v0

    :cond_9
    move v2, v3

    move v1, v3

    .line 133
    :goto_b
    if-ge v2, v5, :cond_1f

    .line 134
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0x7f

    add-int/lit8 v3, v3, -0x30

    .line 135
    if-ltz v3, :cond_8

    const/16 v4, 0x9

    if-gt v3, v4, :cond_8

    .line 136
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    move v0, v1

    .line 138
    goto :goto_8
.end method

.method public static clockWork([B)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiProto;->clockTenths([B)I

    move-result v1

    if-ltz v1, :cond_e

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static currents([I)[B
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x0

    .line 94
    new-array v3, v5, [I

    move v2, v1

    .line 95
    :goto_6
    if-ge v2, v5, :cond_1d

    if-eqz p0, :cond_1b

    array-length v0, p0

    if-ge v2, v0, :cond_1b

    aget v0, p0, v2

    const/16 v4, 0x1f

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/bodytech/WiProto;->clamp(III)I

    move-result v0

    :goto_15
    aput v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_1b
    move v0, v1

    goto :goto_15

    :cond_1d
    move v0, v1

    move v2, v1

    .line 97
    :goto_1f
    if-ge v0, v5, :cond_27

    aget v4, v3, v0

    xor-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_27
    move v0, v1

    .line 98
    :goto_28
    const/4 v4, 0x5

    if-ge v0, v4, :cond_3c

    const/16 v4, 0x10

    shr-int/2addr v4, v0

    and-int/2addr v4, v2

    if-eqz v4, :cond_39

    add-int/lit8 v4, v0, 0x3

    aget v5, v3, v4

    or-int/lit16 v5, v5, 0x80

    aput v5, v3, v4

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 99
    :cond_3c
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/bodytech/WiProto;->op(I[I)[B

    move-result-object v0

    return-object v0
.end method

.method public static nameIsWiems(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 148
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIEMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static op(I[I)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 59
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 60
    int-to-byte v2, p0

    aput-byte v2, v1, v0

    .line 61
    :goto_9
    array-length v2, p1

    if-ge v0, v2, :cond_16

    add-int/lit8 v2, v0, 0x1

    aget v3, p1, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 62
    :cond_16
    return-object v1
.end method

.method public static program(IIIIII)[B
    .registers 14

    .prologue
    const/4 v7, 0x5

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 108
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/16 v1, 0x29

    aput v1, v0, v3

    invoke-static {p0, v5, v4}, Lcom/isaigu/gymapp/bodytech/WiProto;->clamp(III)I

    move-result v1

    aput v1, v0, v5

    const/4 v1, 0x2

    invoke-static {p1, v5, v4}, Lcom/isaigu/gymapp/bodytech/WiProto;->clamp(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2, v3, v4}, Lcom/isaigu/gymapp/bodytech/WiProto;->clamp(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p3, v3, v4}, Lcom/isaigu/gymapp/bodytech/WiProto;->clamp(III)I

    move-result v2

    aput v2, v0, v1

    .line 109
    invoke-static {p4, v3, v4}, Lcom/isaigu/gymapp/bodytech/WiProto;->clamp(III)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x6

    const/16 v2, 0x7e

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v7, v0, v1

    const/16 v1, 0x8

    and-int/lit16 v2, p5, 0xff

    aput v2, v0, v1

    aput v3, v0, v6

    .line 110
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/bodytech/WiProto;->xor([II)I

    move-result v1

    aput v1, v0, v6

    .line 111
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/bodytech/WiProto;->op(I[I)[B

    move-result-object v0

    return-object v0
.end method

.method public static rest(II)[B
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 116
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/16 v1, 0xff

    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/bodytech/WiProto;->clamp(III)I

    move-result v1

    aput v1, v0, v3

    const/16 v1, 0x64

    invoke-static {p1, v3, v1}, Lcom/isaigu/gymapp/bodytech/WiProto;->clamp(III)I

    move-result v1

    aput v1, v0, v2

    aput v3, v0, v5

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa5

    aput v2, v0, v1

    aput v3, v0, v4

    .line 117
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/WiProto;->xor([II)I

    move-result v1

    aput v1, v0, v4

    .line 118
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/bodytech/WiProto;->op(I[I)[B

    move-result-object v0

    return-object v0
.end method

.method public static run(Z)[B
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 126
    const/4 v2, 0x4

    const/4 v0, 0x1

    new-array v3, v0, [I

    if-eqz p0, :cond_10

    const/16 v0, 0x25

    :goto_9
    aput v0, v3, v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/bodytech/WiProto;->op(I[I)[B

    move-result-object v0

    return-object v0

    :cond_10
    move v0, v1

    goto :goto_9
.end method

.method public static unit(I)I
    .registers 3

    .prologue
    .line 83
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/bodytech/WiProto;->clamp(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x32

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static value([B)[B
    .registers 5

    .prologue
    .line 53
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    .line 54
    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return-object v0
.end method

.method public static widths()[B
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x3

    sget-object v1, Lcom/isaigu/gymapp/bodytech/WiProto;->WIDTHS:[I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/WiProto;->op(I[I)[B

    move-result-object v0

    return-object v0
.end method

.method static xor([II)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 66
    move v0, v1

    move v2, v1

    .line 67
    :goto_3
    if-ge v0, p1, :cond_e

    aget v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 68
    :cond_e
    return v2
.end method

.method public static zero()[B
    .registers 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/WiProto;->currents([I)[B

    move-result-object v0

    return-object v0
.end method
