.class public final Lcom/isaigu/gymapp/ai/Kws;
.super Ljava/lang/Object;
.source "Kws.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/Kws$Progress;,
        Lcom/isaigu/gymapp/ai/Kws$Detector;
    }
.end annotation


# static fields
.field static final COS:[F

.field public static final DIM:I

.field static final FB:[[F

.field public static final FRAME:I = 0x190

.field public static final HID:I

.field public static final HOP:I = 0xa0

.field static final NBIN:I = 0x101

.field public static final NFFT:I = 0x200

.field public static final NMEL:I = 0x1a

.field static final SIN:[F

.field public static final SR:I = 0x3e80

.field public static final STEP:I = 0x5

.field public static final SUB:I

.field public static final T:I

.field public static final W:I = 0x40

.field static final WIN:[F


# instance fields
.field final b1:[F

.field b2:F

.field final mu:[F

.field final sd:[F

.field public threshold:F

.field final w1:[F

.field final w2:[F


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    .line 21
    const-string v0, "kws.sub"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/Kws;->SUB:I

    const/16 v0, 0x40

    sget v1, Lcom/isaigu/gymapp/ai/Kws;->SUB:I

    div-int/2addr v0, v1

    sput v0, Lcom/isaigu/gymapp/ai/Kws;->T:I

    sget v0, Lcom/isaigu/gymapp/ai/Kws;->T:I

    mul-int/lit8 v0, v0, 0x1a

    sput v0, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    .line 22
    const-string v0, "kws.hid"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    .line 24
    const/16 v0, 0x190

    new-array v0, v0, [F

    sput-object v0, Lcom/isaigu/gymapp/ai/Kws;->WIN:[F

    .line 25
    const/16 v0, 0x1a

    const/16 v1, 0x101

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/isaigu/gymapp/ai/Kws;->FB:[[F

    .line 26
    const/16 v0, 0x100

    new-array v0, v0, [F

    sput-object v0, Lcom/isaigu/gymapp/ai/Kws;->COS:[F

    const/16 v0, 0x100

    new-array v0, v0, [F

    sput-object v0, Lcom/isaigu/gymapp/ai/Kws;->SIN:[F

    .line 29
    const/4 v0, 0x0

    :goto_4d
    const/16 v1, 0x190

    if-ge v0, v1, :cond_76

    .line 30
    sget-object v1, Lcom/isaigu/gymapp/ai/Kws;->WIN:[F

    const-wide v2, 0x3fe147ae147ae148L    # 0.54

    const-wide v4, 0x3fdd70a3d70a3d71L    # 0.46

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x4078f00000000000L    # 399.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 32
    :cond_76
    const/4 v0, 0x0

    :goto_77
    const/16 v1, 0x100

    if-ge v0, v1, :cond_a4

    .line 33
    sget-object v1, Lcom/isaigu/gymapp/ai/Kws;->COS:[F

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4080000000000000L    # 512.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    .line 34
    sget-object v1, Lcom/isaigu/gymapp/ai/Kws;->SIN:[F

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4080000000000000L    # 512.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 36
    :cond_a4
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/Kws;->mel(D)D

    move-result-wide v2

    const-wide v0, 0x40bdb00000000000L    # 7600.0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/Kws;->mel(D)D

    move-result-wide v4

    .line 37
    const/16 v0, 0x1c

    new-array v6, v0, [D

    .line 38
    const/4 v0, 0x0

    :goto_b8
    const/16 v1, 0x1c

    if-ge v0, v1, :cond_c9

    .line 39
    sub-double v8, v4, v2

    int-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x403b000000000000L    # 27.0

    div-double/2addr v8, v10

    add-double/2addr v8, v2

    aput-wide v8, v6, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 41
    :cond_c9
    const/4 v0, 0x0

    move v1, v0

    :goto_cb
    const/16 v0, 0x101

    if-ge v1, v0, :cond_123

    .line 42
    int-to-double v2, v1

    const-wide v4, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4080000000000000L    # 512.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/Kws;->mel(D)D

    move-result-wide v2

    .line 43
    const/4 v0, 0x0

    :goto_de
    const/16 v4, 0x1a

    if-gt v0, v4, :cond_11f

    .line 44
    aget-wide v4, v6, v0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_11c

    add-int/lit8 v4, v0, 0x1

    aget-wide v4, v6, v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_11c

    .line 45
    aget-wide v4, v6, v0

    sub-double v4, v2, v4

    add-int/lit8 v7, v0, 0x1

    aget-wide v8, v6, v7

    aget-wide v10, v6, v0

    sub-double/2addr v8, v10

    div-double/2addr v4, v8

    .line 46
    const/16 v7, 0x1a

    if-ge v0, v7, :cond_10a

    .line 47
    sget-object v7, Lcom/isaigu/gymapp/ai/Kws;->FB:[[F

    aget-object v7, v7, v0

    aget v8, v7, v1

    double-to-float v9, v4

    add-float/2addr v8, v9

    aput v8, v7, v1

    .line 49
    :cond_10a
    if-lez v0, :cond_11c

    .line 50
    sget-object v7, Lcom/isaigu/gymapp/ai/Kws;->FB:[[F

    add-int/lit8 v8, v0, -0x1

    aget-object v7, v7, v8

    aget v8, v7, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v4, v10, v4

    double-to-float v4, v4

    add-float/2addr v4, v8

    aput v4, v7, v1

    .line 43
    :cond_11c
    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    .line 41
    :cond_11f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_cb

    .line 55
    :cond_123
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    sget v0, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws;->mu:[F

    sget v0, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws;->sd:[F

    .line 164
    sget v0, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    sget v1, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    sget v0, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws;->b1:[F

    sget v0, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws;->w2:[F

    .line 167
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/isaigu/gymapp/ai/Kws;->threshold:F

    return-void
.end method

.method static fft([F[F)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 129
    const/16 v4, 0x200

    .line 130
    const/4 v0, 0x1

    move v2, v1

    move v3, v0

    :goto_6
    if-ge v3, v4, :cond_29

    .line 131
    const/16 v0, 0x100

    .line 132
    :goto_a
    and-int v5, v2, v0

    if-eqz v5, :cond_12

    .line 133
    xor-int/2addr v2, v0

    .line 132
    shr-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 135
    :cond_12
    xor-int/2addr v2, v0

    .line 136
    if-ge v3, v2, :cond_25

    .line 137
    aget v0, p0, v3

    .line 138
    aget v5, p0, v2

    aput v5, p0, v3

    .line 139
    aput v0, p0, v2

    .line 140
    aget v0, p1, v3

    .line 141
    aget v5, p1, v2

    aput v5, p1, v3

    .line 142
    aput v0, p1, v2

    .line 130
    :cond_25
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 145
    :cond_29
    const/4 v0, 0x2

    move v3, v0

    :goto_2b
    if-gt v3, v4, :cond_78

    .line 146
    div-int v5, v4, v3

    move v2, v1

    .line 147
    :goto_30
    if-ge v2, v4, :cond_74

    move v0, v1

    .line 148
    :goto_33
    div-int/lit8 v6, v3, 0x2

    if-ge v0, v6, :cond_70

    .line 149
    sget-object v6, Lcom/isaigu/gymapp/ai/Kws;->COS:[F

    mul-int v7, v0, v5

    aget v6, v6, v7

    sget-object v7, Lcom/isaigu/gymapp/ai/Kws;->SIN:[F

    mul-int v8, v0, v5

    aget v7, v7, v8

    neg-float v7, v7

    .line 150
    add-int v8, v2, v0

    add-int v9, v2, v0

    div-int/lit8 v10, v3, 0x2

    add-int/2addr v9, v10

    .line 151
    aget v10, p0, v9

    mul-float/2addr v10, v6

    aget v11, p1, v9

    mul-float/2addr v11, v7

    sub-float/2addr v10, v11

    aget v11, p0, v9

    mul-float/2addr v7, v11

    aget v11, p1, v9

    mul-float/2addr v6, v11

    add-float/2addr v6, v7

    .line 152
    aget v7, p0, v8

    sub-float/2addr v7, v10

    aput v7, p0, v9

    .line 153
    aget v7, p1, v8

    sub-float/2addr v7, v6

    aput v7, p1, v9

    .line 154
    aget v7, p0, v8

    add-float/2addr v7, v10

    aput v7, p0, v8

    .line 155
    aget v7, p1, v8

    add-float/2addr v6, v7

    aput v6, p1, v8

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 147
    :cond_70
    add-int v0, v2, v3

    move v2, v0

    goto :goto_30

    .line 145
    :cond_74
    shl-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2b

    .line 159
    :cond_78
    return-void
.end method

.method static frame([FI[F[F[FI)V
    .registers 15

    .prologue
    .line 65
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x190

    if-ge v0, v1, :cond_16

    .line 66
    add-int v1, p1, v0

    aget v1, p0, v1

    sget-object v2, Lcom/isaigu/gymapp/ai/Kws;->WIN:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    aput v1, p2, v0

    .line 67
    const/4 v1, 0x0

    aput v1, p3, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_16
    const/16 v0, 0x190

    :goto_18
    const/16 v1, 0x200

    if-ge v0, v1, :cond_25

    .line 70
    const/4 v1, 0x0

    aput v1, p2, v0

    .line 71
    const/4 v1, 0x0

    aput v1, p3, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 73
    :cond_25
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/ai/Kws;->fft([F[F)V

    .line 74
    const/4 v0, 0x0

    move v3, v0

    :goto_2a
    const/16 v0, 0x1a

    if-ge v3, v0, :cond_63

    .line 75
    const-wide/16 v0, 0x0

    .line 76
    sget-object v2, Lcom/isaigu/gymapp/ai/Kws;->FB:[[F

    aget-object v4, v2, v3

    .line 77
    const/4 v2, 0x0

    :goto_35
    const/16 v5, 0x101

    if-ge v2, v5, :cond_53

    .line 78
    aget v5, v4, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_50

    .line 79
    aget v5, v4, v2

    aget v6, p2, v2

    aget v7, p2, v2

    mul-float/2addr v6, v7

    aget v7, p3, v2

    aget v8, p3, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-double v6, v5

    add-double/2addr v0, v6

    .line 77
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 82
    :cond_53
    add-int v2, p5, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p4, v2

    .line 74
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2a

    .line 84
    :cond_63
    return-void
.end method

.method public static frames([F)I
    .registers 2

    .prologue
    .line 105
    array-length v0, p0

    div-int/lit8 v0, v0, 0x1a

    return v0
.end method

.method public static load([B)Lcom/isaigu/gymapp/ai/Kws;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 349
    if-nez p0, :cond_5

    .line 377
    :cond_4
    :goto_4
    return-object v0

    .line 353
    :cond_5
    :try_start_5
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 354
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const v3, 0x4b575301    # 1.4111489E7f

    if-ne v1, v3, :cond_4

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    sget v3, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    if-ne v1, v3, :cond_4

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    sget v3, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    if-ne v1, v3, :cond_4

    .line 357
    new-instance v1, Lcom/isaigu/gymapp/ai/Kws;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/Kws;-><init>()V

    .line 358
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/ai/Kws;->threshold:F

    move v3, v2

    .line 359
    :goto_34
    sget v5, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    if-ge v3, v5, :cond_43

    .line 360
    iget-object v5, v1, Lcom/isaigu/gymapp/ai/Kws;->mu:[F

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v5, v3

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_43
    move v3, v2

    .line 362
    :goto_44
    sget v5, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    if-ge v3, v5, :cond_53

    .line 363
    iget-object v5, v1, Lcom/isaigu/gymapp/ai/Kws;->sd:[F

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v5, v3

    .line 362
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_53
    move v3, v2

    .line 365
    :goto_54
    iget-object v5, v1, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    array-length v5, v5

    if-ge v3, v5, :cond_64

    .line 366
    iget-object v5, v1, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v5, v3

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_64
    move v3, v2

    .line 368
    :goto_65
    sget v5, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    if-ge v3, v5, :cond_74

    .line 369
    iget-object v5, v1, Lcom/isaigu/gymapp/ai/Kws;->b1:[F

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v5, v3

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 371
    :cond_74
    :goto_74
    sget v3, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    if-ge v2, v3, :cond_83

    .line 372
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/Kws;->w2:[F

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readFloat()F

    move-result v5

    aput v5, v3, v2

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 374
    :cond_83
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/ai/Kws;->b2:F
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_89} :catch_8c

    move-object v0, v1

    .line 375
    goto/16 :goto_4

    .line 376
    :catch_8c
    move-exception v1

    goto/16 :goto_4
.end method

.method public static logmel([F)[F
    .registers 9

    .prologue
    const/16 v7, 0x200

    const/4 v1, 0x0

    .line 88
    array-length v0, p0

    const/16 v2, 0x190

    if-ge v0, v2, :cond_27

    move v6, v1

    .line 89
    :goto_9
    array-length v0, p0

    new-array v0, v0, [F

    .line 90
    array-length v2, p0

    if-lez v2, :cond_13

    .line 91
    aget v2, p0, v1

    aput v2, v0, v1

    .line 93
    :cond_13
    const/4 v2, 0x1

    :goto_14
    array-length v3, p0

    if-ge v2, v3, :cond_30

    .line 94
    aget v3, p0, v2

    const v4, 0x3f7851ec    # 0.97f

    add-int/lit8 v5, v2, -0x1

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v0, v2

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 88
    :cond_27
    array-length v0, p0

    add-int/lit16 v0, v0, -0x190

    div-int/lit16 v0, v0, 0xa0

    add-int/lit8 v0, v0, 0x1

    move v6, v0

    goto :goto_9

    .line 96
    :cond_30
    mul-int/lit8 v2, v6, 0x1a

    new-array v4, v2, [F

    .line 97
    new-array v2, v7, [F

    new-array v3, v7, [F

    move v7, v1

    .line 98
    :goto_39
    if-ge v7, v6, :cond_46

    .line 99
    mul-int/lit16 v1, v7, 0xa0

    mul-int/lit8 v5, v7, 0x1a

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/Kws;->frame([FI[F[F[FI)V

    .line 98
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_39

    .line 101
    :cond_46
    return-object v4
.end method

.method static mel(D)D
    .registers 8

    .prologue
    .line 58
    const-wide v0, 0x40919c0000000000L    # 1127.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x4085e00000000000L    # 700.0

    div-double v4, p0, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static train(Ljava/util/List;Ljava/util/List;IJLcom/isaigu/gymapp/ai/Kws$Progress;)Lcom/isaigu/gymapp/ai/Kws;
    .registers 61
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;",
            "Ljava/util/List",
            "<[F>;IJ",
            "Lcom/isaigu/gymapp/ai/Kws$Progress;",
            ")",
            "Lcom/isaigu/gymapp/ai/Kws;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v21, Lcom/isaigu/gymapp/ai/Kws;

    invoke-direct/range {v21 .. v21}, Lcom/isaigu/gymapp/ai/Kws;-><init>()V

    .line 194
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    add-int v22, v4, v5

    .line 195
    move/from16 v0, v22

    new-array v10, v0, [[F

    .line 196
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v23, v0

    .line 197
    const/4 v4, 0x0

    move v5, v4

    :goto_1b
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_33

    .line 198
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    aput-object v4, v10, v5

    .line 199
    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v23, v5

    .line 197
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1b

    .line 201
    :cond_33
    const/4 v4, 0x0

    move v5, v4

    :goto_35
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_4f

    .line 202
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    add-int v6, v4, v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    aput-object v4, v10, v6

    .line 201
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_35

    .line 204
    :cond_4f
    const/4 v4, 0x0

    :goto_50
    sget v5, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    if-ge v4, v5, :cond_98

    .line 205
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 206
    array-length v11, v10

    const/4 v5, 0x0

    :goto_5a
    if-ge v5, v11, :cond_6c

    aget-object v12, v10, v5

    .line 207
    aget v13, v12, v4

    float-to-double v14, v13

    add-double/2addr v8, v14

    .line 208
    aget v13, v12, v4

    aget v12, v12, v4

    mul-float/2addr v12, v13

    float-to-double v12, v12

    add-double/2addr v6, v12

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 210
    :cond_6c
    move/from16 v0, v22

    int-to-double v12, v0

    div-double/2addr v8, v12

    .line 211
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/Kws;->mu:[F

    double-to-float v11, v8

    aput v11, v5, v4

    .line 212
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/Kws;->sd:[F

    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move/from16 v0, v22

    int-to-double v14, v0

    div-double/2addr v6, v14

    mul-double/2addr v8, v8

    sub-double/2addr v6, v8

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3a83126f    # 0.001f

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 214
    :cond_98
    new-instance v24, Ljava/util/Random;

    move-object/from16 v0, v24

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 215
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    sget v6, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    sget v7, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    sget v8, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    add-int/lit8 v8, v8, 0x1

    int-to-double v8, v8

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 216
    const/4 v4, 0x0

    :goto_bb
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    array-length v5, v5

    if-ge v4, v5, :cond_d7

    .line 217
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    invoke-virtual/range {v24 .. v24}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    mul-double/2addr v12, v6

    double-to-float v11, v12

    aput v11, v5, v4

    .line 216
    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    .line 219
    :cond_d7
    const/4 v4, 0x0

    :goto_d8
    sget v5, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    if-ge v4, v5, :cond_f1

    .line 220
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/Kws;->w2:[F

    invoke-virtual/range {v24 .. v24}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v12

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v5, v4

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    .line 222
    :cond_f1
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 224
    sget v4, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    move/from16 v0, v22

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    .line 225
    const/4 v5, 0x0

    move v7, v5

    :goto_11c
    move/from16 v0, v22

    if-ge v7, v0, :cond_142

    .line 226
    const/4 v5, 0x0

    :goto_121
    sget v8, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    if-ge v5, v8, :cond_13e

    .line 227
    aget-object v8, v4, v7

    aget-object v9, v10, v7

    aget v9, v9, v5

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/isaigu/gymapp/ai/Kws;->mu:[F

    aget v11, v11, v5

    sub-float/2addr v9, v11

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/isaigu/gymapp/ai/Kws;->sd:[F

    aget v11, v11, v5

    div-float/2addr v9, v11

    aput v9, v8, v5

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_121

    .line 225
    :cond_13e
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_11c

    .line 230
    :cond_142
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    array-length v5, v5

    new-array v0, v5, [F

    move-object/from16 v25, v0

    sget v5, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    new-array v0, v5, [F

    move-object/from16 v26, v0

    sget v5, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    new-array v0, v5, [F

    move-object/from16 v27, v0

    .line 231
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    array-length v5, v5

    new-array v0, v5, [F

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    array-length v5, v5

    new-array v0, v5, [F

    move-object/from16 v29, v0

    sget v5, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    new-array v0, v5, [F

    move-object/from16 v30, v0

    sget v5, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    new-array v0, v5, [F

    move-object/from16 v31, v0

    .line 232
    sget v5, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    new-array v0, v5, [F

    move-object/from16 v32, v0

    sget v5, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    new-array v0, v5, [F

    move-object/from16 v33, v0

    .line 233
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 234
    const-wide v34, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v36, 0x3feccccccccccccdL    # 0.9

    const-wide v38, 0x3feff7ced916872bL    # 0.999

    const-wide v40, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v42, 0x3f50624dd2f1a9fcL    # 0.001

    .line 235
    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v44, v0

    .line 236
    const/4 v5, 0x0

    :goto_1a3
    move/from16 v0, v22

    if-ge v5, v0, :cond_1ac

    .line 237
    aput v5, v44, v5

    .line 236
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a3

    .line 239
    :cond_1ac
    sget v5, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    new-array v0, v5, [F

    move-object/from16 v45, v0

    .line 240
    const/4 v5, 0x0

    .line 241
    const/16 v46, 0x80

    .line 242
    const/4 v9, 0x0

    move/from16 v20, v9

    :goto_1b8
    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_499

    .line 243
    add-int/lit8 v9, v22, -0x1

    :goto_1c0
    if-lez v9, :cond_1d5

    .line 244
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 245
    aget v11, v44, v9

    .line 246
    aget v12, v44, v10

    aput v12, v44, v9

    .line 247
    aput v11, v44, v10

    .line 243
    add-int/lit8 v9, v9, -0x1

    goto :goto_1c0

    .line 249
    :cond_1d5
    const/4 v14, 0x0

    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v19, v8

    :goto_1dc
    move/from16 v0, v22

    if-ge v14, v0, :cond_47f

    .line 250
    add-int v5, v14, v46

    move/from16 v0, v22

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v47

    .line 251
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([FF)V

    .line 252
    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([FF)V

    .line 253
    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([FF)V

    .line 254
    const/4 v7, 0x0

    .line 255
    const/4 v5, 0x0

    move v11, v14

    move v15, v5

    move/from16 v16, v7

    .line 256
    :goto_200
    move/from16 v0, v47

    if-ge v11, v0, :cond_2bc

    .line 257
    aget v5, v44, v11

    aget-object v48, v4, v5

    .line 258
    aget v5, v44, v11

    aget v49, v23, v5

    .line 259
    const/4 v5, 0x0

    cmpl-float v5, v49, v5

    if-lez v5, :cond_246

    move v5, v6

    .line 260
    :goto_212
    move-object/from16 v0, v21

    iget v7, v0, Lcom/isaigu/gymapp/ai/Kws;->b2:F

    float-to-double v8, v7

    .line 261
    const/4 v7, 0x0

    :goto_218
    sget v10, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    if-ge v7, v10, :cond_262

    .line 262
    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/Kws;->b1:[F

    aget v10, v10, v7

    float-to-double v12, v10

    .line 263
    sget v10, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    mul-int v50, v7, v10

    .line 264
    const/4 v10, 0x0

    :goto_228
    sget v51, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    move/from16 v0, v51

    if-ge v10, v0, :cond_249

    .line 265
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    move-object/from16 v51, v0

    add-int v52, v50, v10

    aget v51, v51, v52

    aget v52, v48, v10

    mul-float v51, v51, v52

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v52, v0

    add-double v12, v12, v52

    .line 264
    add-int/lit8 v10, v10, 0x1

    goto :goto_228

    .line 259
    :cond_246
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_212

    .line 267
    :cond_249
    const-wide/16 v50, 0x0

    cmpl-double v10, v12, v50

    if-lez v10, :cond_260

    double-to-float v10, v12

    :goto_250
    aput v10, v45, v7

    .line 268
    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/Kws;->w2:[F

    aget v10, v10, v7

    aget v12, v45, v7

    mul-float/2addr v10, v12

    float-to-double v12, v10

    add-double/2addr v8, v12

    .line 261
    add-int/lit8 v7, v7, 0x1

    goto :goto_218

    .line 267
    :cond_260
    const/4 v10, 0x0

    goto :goto_250

    .line 270
    :cond_262
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    neg-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    add-double v8, v8, v50

    div-double v8, v12, v8

    double-to-float v7, v8

    .line 271
    sub-float v7, v7, v49

    mul-float v10, v7, v5

    .line 272
    add-float v8, v15, v5

    .line 273
    add-float v9, v16, v10

    .line 274
    const/4 v5, 0x0

    :goto_279
    sget v7, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    if-ge v5, v7, :cond_2b4

    .line 275
    aget v7, v27, v5

    aget v12, v45, v5

    mul-float/2addr v12, v10

    add-float/2addr v7, v12

    aput v7, v27, v5

    .line 276
    aget v7, v45, v5

    const/4 v12, 0x0

    cmpl-float v7, v7, v12

    if-lez v7, :cond_2b1

    .line 277
    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/Kws;->w2:[F

    aget v7, v7, v5

    mul-float v12, v10, v7

    .line 278
    aget v7, v26, v5

    add-float/2addr v7, v12

    aput v7, v26, v5

    .line 279
    sget v7, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    mul-int v13, v5, v7

    .line 280
    const/4 v7, 0x0

    :goto_29e
    sget v15, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    if-ge v7, v15, :cond_2b1

    .line 281
    add-int v15, v13, v7

    aget v16, v25, v15

    aget v49, v48, v7

    mul-float v49, v49, v12

    add-float v16, v16, v49

    aput v16, v25, v15

    .line 280
    add-int/lit8 v7, v7, 0x1

    goto :goto_29e

    .line 274
    :cond_2b1
    add-int/lit8 v5, v5, 0x1

    goto :goto_279

    .line 256
    :cond_2b4
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move v15, v8

    move/from16 v16, v9

    goto/16 :goto_200

    .line 286
    :cond_2bc
    add-int/lit8 v7, v17, 0x1

    .line 287
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v7

    move-wide/from16 v0, v36

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double v10, v8, v10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    int-to-double v12, v7

    move-wide/from16 v0, v38

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-double v12, v8, v12

    .line 288
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v8, v5, v15

    .line 289
    const/4 v5, 0x0

    :goto_2d9
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    array-length v9, v9

    if-ge v5, v9, :cond_352

    .line 290
    aget v9, v25, v5

    mul-float/2addr v9, v8

    move-wide/from16 v0, v42

    double-to-float v15, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    move-object/from16 v17, v0

    aget v17, v17, v5

    mul-float v15, v15, v17

    add-float/2addr v9, v15

    .line 291
    aget v15, v28, v5

    float-to-double v0, v15

    move-wide/from16 v48, v0

    mul-double v48, v48, v36

    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    sub-double v50, v50, v36

    float-to-double v0, v9

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v15, v0

    aput v15, v28, v5

    .line 292
    aget v15, v29, v5

    float-to-double v0, v15

    move-wide/from16 v48, v0

    mul-double v48, v48, v38

    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    sub-double v50, v50, v38

    float-to-double v0, v9

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    float-to-double v0, v9

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v9, v0

    aput v9, v29, v5

    .line 293
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    aget v15, v9, v5

    aget v17, v28, v5

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v48, v0

    div-double v48, v48, v10

    mul-double v48, v48, v34

    aget v17, v29, v5

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v50, v0

    div-double v50, v50, v12

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v50

    add-double v50, v50, v40

    div-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v17, v0

    sub-float v15, v15, v17

    aput v15, v9, v5

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d9

    .line 295
    :cond_352
    const/4 v5, 0x0

    :goto_353
    sget v9, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    if-ge v5, v9, :cond_42b

    .line 296
    aget v9, v26, v5

    mul-float/2addr v9, v8

    .line 297
    aget v15, v30, v5

    float-to-double v0, v15

    move-wide/from16 v48, v0

    mul-double v48, v48, v36

    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    sub-double v50, v50, v36

    float-to-double v0, v9

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v15, v0

    aput v15, v30, v5

    .line 298
    aget v15, v31, v5

    float-to-double v0, v15

    move-wide/from16 v48, v0

    mul-double v48, v48, v38

    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    sub-double v50, v50, v38

    float-to-double v0, v9

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    float-to-double v0, v9

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v9, v0

    aput v9, v31, v5

    .line 299
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/Kws;->b1:[F

    aget v15, v9, v5

    aget v17, v30, v5

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v48, v0

    div-double v48, v48, v10

    mul-double v48, v48, v34

    aget v17, v31, v5

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v50, v0

    div-double v50, v50, v12

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v50

    add-double v50, v50, v40

    div-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v17, v0

    sub-float v15, v15, v17

    aput v15, v9, v5

    .line 300
    aget v9, v27, v5

    mul-float/2addr v9, v8

    move-wide/from16 v0, v42

    double-to-float v15, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Kws;->w2:[F

    move-object/from16 v17, v0

    aget v17, v17, v5

    mul-float v15, v15, v17

    add-float/2addr v9, v15

    .line 301
    aget v15, v32, v5

    float-to-double v0, v15

    move-wide/from16 v48, v0

    mul-double v48, v48, v36

    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    sub-double v50, v50, v36

    float-to-double v0, v9

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v15, v0

    aput v15, v32, v5

    .line 302
    aget v15, v33, v5

    float-to-double v0, v15

    move-wide/from16 v48, v0

    mul-double v48, v48, v38

    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    sub-double v50, v50, v38

    float-to-double v0, v9

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    float-to-double v0, v9

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v9, v0

    aput v9, v33, v5

    .line 303
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/Kws;->w2:[F

    aget v15, v9, v5

    aget v17, v32, v5

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v48, v0

    div-double v48, v48, v10

    mul-double v48, v48, v34

    aget v17, v33, v5

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v50, v0

    div-double v50, v50, v12

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v50

    add-double v50, v50, v40

    div-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v17, v0

    sub-float v15, v15, v17

    aput v15, v9, v5

    .line 295
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_353

    .line 305
    :cond_42b
    mul-float v5, v16, v8

    .line 306
    move/from16 v0, v19

    float-to-double v8, v0

    mul-double v8, v8, v36

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v36

    float-to-double v0, v5

    move-wide/from16 v48, v0

    mul-double v16, v16, v48

    add-double v8, v8, v16

    double-to-float v8, v8

    .line 307
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v38

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v38

    float-to-double v0, v5

    move-wide/from16 v48, v0

    mul-double v18, v18, v48

    float-to-double v0, v5

    move-wide/from16 v48, v0

    mul-double v18, v18, v48

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v5, v0

    .line 308
    move-object/from16 v0, v21

    iget v9, v0, Lcom/isaigu/gymapp/ai/Kws;->b2:F

    float-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v10, v16, v10

    mul-double v10, v10, v34

    float-to-double v0, v5

    move-wide/from16 v16, v0

    div-double v12, v16, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    add-double v12, v12, v40

    div-double/2addr v10, v12

    double-to-float v10, v10

    sub-float/2addr v9, v10

    move-object/from16 v0, v21

    iput v9, v0, Lcom/isaigu/gymapp/ai/Kws;->b2:F

    .line 249
    add-int v14, v14, v46

    move/from16 v17, v7

    move/from16 v18, v5

    move/from16 v19, v8

    goto/16 :goto_1dc

    .line 310
    :cond_47f
    if-eqz p5, :cond_48d

    .line 311
    add-int/lit8 v5, v20, 0x1

    int-to-float v5, v5

    move/from16 v0, p2

    int-to-float v7, v0

    div-float/2addr v5, v7

    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Lcom/isaigu/gymapp/ai/Kws$Progress;->at(F)V

    .line 242
    :cond_48d
    add-int/lit8 v9, v20, 0x1

    move/from16 v20, v9

    move/from16 v5, v17

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_1b8

    .line 314
    :cond_499
    return-object v21
.end method

.method public static window([FI[F)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 110
    move v4, v1

    :goto_2
    const/16 v0, 0x1a

    if-ge v4, v0, :cond_39

    .line 111
    const-wide/16 v2, 0x0

    move v0, v1

    .line 112
    :goto_9
    const/16 v5, 0x40

    if-ge v0, v5, :cond_19

    .line 113
    add-int v5, p1, v0

    mul-int/lit8 v5, v5, 0x1a

    add-int/2addr v5, v4

    aget v5, p0, v5

    float-to-double v6, v5

    add-double/2addr v2, v6

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 115
    :cond_19
    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    div-double/2addr v2, v6

    move v0, v1

    .line 116
    :goto_1d
    sget v5, Lcom/isaigu/gymapp/ai/Kws;->T:I

    if-ge v0, v5, :cond_35

    .line 117
    mul-int/lit8 v5, v0, 0x1a

    add-int/2addr v5, v4

    sget v6, Lcom/isaigu/gymapp/ai/Kws;->SUB:I

    mul-int/2addr v6, v0

    add-int/2addr v6, p1

    mul-int/lit8 v6, v6, 0x1a

    add-int/2addr v6, v4

    aget v6, p0, v6

    float-to-double v6, v6

    sub-double/2addr v6, v2

    double-to-float v6, v6

    aput v6, p2, v5

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 110
    :cond_35
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 120
    :cond_39
    return-void
.end method

.method public static window([FI)[F
    .registers 3

    .prologue
    .line 123
    sget v0, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    new-array v0, v0, [F

    .line 124
    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/Kws;->window([FI[F)V

    .line 125
    return-object v0
.end method


# virtual methods
.method public save()[B
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 319
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 320
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 321
    const v1, 0x4b575301    # 1.4111489E7f

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 322
    sget v1, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 323
    sget v1, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 324
    iget v1, p0, Lcom/isaigu/gymapp/ai/Kws;->threshold:F

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 325
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Kws;->mu:[F

    array-length v5, v4

    move v1, v0

    :goto_24
    if-ge v1, v5, :cond_2e

    aget v6, v4, v1

    .line 326
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 328
    :cond_2e
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Kws;->sd:[F

    array-length v5, v4

    move v1, v0

    :goto_32
    if-ge v1, v5, :cond_3c

    aget v6, v4, v1

    .line 329
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 331
    :cond_3c
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    array-length v5, v4

    move v1, v0

    :goto_40
    if-ge v1, v5, :cond_4a

    aget v6, v4, v1

    .line 332
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 334
    :cond_4a
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Kws;->b1:[F

    array-length v5, v4

    move v1, v0

    :goto_4e
    if-ge v1, v5, :cond_58

    aget v6, v4, v1

    .line 335
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 337
    :cond_58
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Kws;->w2:[F

    array-length v4, v1

    :goto_5b
    if-ge v0, v4, :cond_65

    aget v5, v1, v0

    .line 338
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 340
    :cond_65
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws;->b2:F

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 341
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 342
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_70} :catch_72

    move-result-object v0

    .line 344
    :goto_71
    return-object v0

    .line 343
    :catch_72
    move-exception v0

    .line 344
    const/4 v0, 0x0

    goto :goto_71
.end method

.method public score([F)F
    .registers 16

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 170
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws;->b2:F

    float-to-double v2, v0

    move v0, v1

    .line 171
    :goto_7
    sget v4, Lcom/isaigu/gymapp/ai/Kws;->HID:I

    if-ge v0, v4, :cond_41

    .line 172
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Kws;->b1:[F

    aget v4, v4, v0

    float-to-double v6, v4

    .line 173
    sget v4, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    mul-int v5, v0, v4

    move v4, v1

    .line 174
    :goto_15
    sget v8, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    if-ge v4, v8, :cond_31

    .line 175
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/Kws;->w1:[F

    add-int v9, v5, v4

    aget v8, v8, v9

    aget v9, p1, v4

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/Kws;->mu:[F

    aget v10, v10, v4

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/Kws;->sd:[F

    aget v10, v10, v4

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-double v8, v8

    add-double/2addr v6, v8

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 177
    :cond_31
    const-wide/16 v4, 0x0

    cmpl-double v4, v6, v4

    if-lez v4, :cond_3e

    .line 178
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Kws;->w2:[F

    aget v4, v4, v0

    float-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 171
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 181
    :cond_41
    neg-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    add-double/2addr v0, v12

    div-double v0, v12, v0

    double-to-float v0, v0

    return v0
.end method
