.class public final Lcom/isaigu/gymapp/ai/Earcon;
.super Ljava/lang/Object;
.source "Earcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/Earcon$Release;
    }
.end annotation


# static fields
.field static final RATE:I = 0x5dc0

.field private static accepted:[S

.field private static again:[S

.field private static closed:[S

.field private static ready:[S

.field private static rejected:[S

.field private static thinking:[S


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accepted()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 53
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->accepted:[S

    if-nez v0, :cond_1a

    .line 54
    new-array v0, v1, [D

    fill-array-data v0, :array_20

    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/Earcon;->notes([D[ID)[S

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/Earcon;->accepted:[S

    .line 56
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->accepted:[S

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Earcon;->play([S)V

    .line 57
    return-void

    .line 54
    :array_20
    .array-data 8
        0x40905c0000000000L    # 1047.0
        0x4095d40000000000L    # 1397.0
    .end array-data

    :array_2c
    .array-data 4
        0x46
        0x6e
    .end array-data
.end method

.method public static again()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 33
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->again:[S

    if-nez v0, :cond_20

    .line 34
    new-array v0, v1, [D

    const-wide v2, 0x408ee00000000000L    # 988.0

    aput-wide v2, v0, v4

    new-array v1, v1, [I

    const/16 v2, 0x96

    aput v2, v1, v4

    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/Earcon;->notes([D[ID)[S

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/Earcon;->again:[S

    .line 36
    :cond_20
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->again:[S

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Earcon;->play([S)V

    .line 37
    return-void
.end method

.method public static closed()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 68
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->closed:[S

    if-nez v0, :cond_1a

    .line 69
    new-array v0, v1, [D

    fill-array-data v0, :array_20

    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    const-wide v2, 0x3fd3333333333333L    # 0.3

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/Earcon;->notes([D[ID)[S

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/Earcon;->closed:[S

    .line 71
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->closed:[S

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Earcon;->play([S)V

    .line 72
    return-void

    .line 69
    :array_20
    .array-data 8
        0x408b800000000000L    # 880.0
        0x4082580000000000L    # 587.0
    .end array-data

    :array_2c
    .array-data 4
        0x64
        0xa0
    .end array-data
.end method

.method static notes([D[ID)[S
    .registers 24

    .prologue
    .line 76
    const/4 v3, 0x0

    .line 77
    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_11

    aget v5, p1, v2

    .line 78
    mul-int/lit16 v5, v5, 0x5dc0

    div-int/lit16 v5, v5, 0x3e8

    add-int/2addr v3, v5

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 80
    :cond_11
    new-array v5, v3, [S

    .line 81
    const/4 v3, 0x0

    .line 82
    const/4 v2, 0x0

    :goto_15
    move-object/from16 v0, p0

    array-length v4, v0

    if-ge v2, v4, :cond_85

    .line 83
    aget v4, p1, v2

    mul-int/lit16 v4, v4, 0x5dc0

    div-int/lit16 v6, v4, 0x3e8

    .line 84
    div-int/lit8 v4, v6, 0x3

    const/16 v7, 0x120

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 85
    const/4 v4, 0x0

    :goto_29
    if-ge v4, v6, :cond_81

    .line 86
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v4

    int-to-double v12, v7

    div-double/2addr v10, v12

    sub-int v12, v6, v4

    int-to-double v12, v12

    int-to-double v14, v7

    const-wide/high16 v16, 0x4004000000000000L    # 2.5

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 87
    int-to-double v10, v4

    const-wide v12, 0x40d7700000000000L    # 24000.0

    div-double/2addr v10, v12

    .line 88
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    aget-wide v14, p0, v2

    mul-double/2addr v12, v14

    mul-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x3fd0000000000000L    # 0.25

    const-wide v16, 0x402921fb54442d18L    # 12.566370614359172

    aget-wide v18, p0, v2

    mul-double v16, v16, v18

    mul-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v14

    add-double/2addr v10, v12

    .line 89
    add-int v12, v3, v4

    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    div-double/2addr v10, v14

    mul-double/2addr v8, v10

    mul-double v8, v8, p2

    const-wide v10, 0x40dfffc000000000L    # 32767.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    int-to-short v8, v8

    aput-short v8, v5, v12

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 91
    :cond_81
    add-int/2addr v3, v6

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 93
    :cond_85
    return-object v5
.end method

.method static play([S)V
    .registers 8

    .prologue
    .line 98
    :try_start_0
    array-length v0, p0

    mul-int/lit8 v5, v0, 0x2

    .line 99
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5dc0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 101
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioTrack;->write([SII)I

    .line 102
    array-length v1, p0

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    .line 103
    new-instance v1, Lcom/isaigu/gymapp/ai/Earcon$Release;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/Earcon$Release;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 104
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    .line 108
    :goto_22
    return-void

    .line 105
    :catch_23
    move-exception v0

    goto :goto_22
.end method

.method public static ready()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 26
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->ready:[S

    if-nez v0, :cond_1a

    .line 27
    new-array v0, v1, [D

    fill-array-data v0, :array_20

    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    const-wide v2, 0x3fe199999999999aL    # 0.55

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/Earcon;->notes([D[ID)[S

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/Earcon;->ready:[S

    .line 29
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->ready:[S

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Earcon;->play([S)V

    .line 30
    return-void

    .line 27
    :array_20
    .array-data 8
        0x4088800000000000L    # 784.0
        0x40925c0000000000L    # 1175.0
    .end array-data

    :array_2c
    .array-data 4
        0x6e
        0xbe
    .end array-data
.end method

.method public static rejected()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 61
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->rejected:[S

    if-nez v0, :cond_1a

    .line 62
    new-array v0, v1, [D

    fill-array-data v0, :array_20

    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/Earcon;->notes([D[ID)[S

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/Earcon;->rejected:[S

    .line 64
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->rejected:[S

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Earcon;->play([S)V

    .line 65
    return-void

    .line 62
    :array_20
    .array-data 8
        0x4074a00000000000L    # 330.0
        0x406ee00000000000L    # 247.0
    .end array-data

    :array_2c
    .array-data 4
        0x82
        0xdc
    .end array-data
.end method

.method public static thinking()V
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 41
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->thinking:[S

    if-nez v0, :cond_1a

    .line 42
    new-array v0, v1, [D

    fill-array-data v0, :array_20

    new-array v1, v1, [I

    fill-array-data v1, :array_30

    const-wide v2, 0x3fcc28f5c28f5c29L    # 0.22

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/Earcon;->notes([D[ID)[S

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/Earcon;->thinking:[S

    .line 44
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/Earcon;->thinking:[S

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Earcon;->play([S)V

    .line 45
    return-void

    .line 42
    :array_20
    .array-data 8
        0x4084a00000000000L    # 660.0
        0x0
        0x4084a00000000000L    # 660.0
    .end array-data

    :array_30
    .array-data 4
        0x2d
        0x46
        0x2d
    .end array-data
.end method
