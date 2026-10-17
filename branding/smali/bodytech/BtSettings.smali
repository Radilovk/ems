.class public final Lcom/isaigu/gymapp/bodytech/BtSettings;
.super Ljava/lang/Object;
.source "BtSettings.java"


# static fields
.field public static final CHANNELS:I = 0x8

.field public static final CH_GAIN_MAX:I = 0x12c

.field static final DEFAULT_NAMES:[Ljava/lang/String;

.field static final DEFAULT_SLIDER:[I

.field public static final GAIN_MAX:I = 0x12c

.field public static final GAIN_MIN:I = 0x32

.field public static final GROUPS:[Ljava/lang/String;

.field public static final GROUP_BOTH:I = 0x0

.field public static final GROUP_MAIN:I = 0x1

.field public static final GROUP_SECOND:I = 0x2

.field public static final HZ_MAIN_MAX:I = 0x3e8

.field public static final HZ_SECOND_MAX:I = 0x3e8

.field public static final NO_SLIDER:I = -0x1

.field static final OLD_C5:Ljava/lang/String; = "\u0413\u044a\u0440\u0434\u0438"

.field static final OLD_C5_SLIDER:I = 0x0

.field static final OLD_C7:Ljava/lang/String; = "\u0411\u0435\u0434\u0440\u0430"

.field static final OLD_C7_SLIDER:I = 0x2

.field static final OLD_LEFT:Ljava/lang/String; = "\u041b\u044f\u0432 \u043a\u0440\u0430\u043a"

.field static final OLD_LEFT_SLIDER:I = 0x2

.field static final OLD_RIGHT:Ljava/lang/String; = "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

.field static final OLD_RIGHT_SLIDER:I = 0x9

.field static final PREFS:Ljava/lang/String; = "xems_bodytech"

.field public static final ROW_ORDER:[I

.field public static final SLIDERS:[Ljava/lang/String;

.field public static final THIGHS:Ljava/lang/String; = "\u0411\u0435\u0434\u0440\u0430"

.field static final THIGH_L:Ljava/lang/String; = "\u041b\u044f\u0432\u043e \u0431\u0435\u0434\u0440\u043e"

.field static final THIGH_R:Ljava/lang/String; = "\u0414\u044f\u0441\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

.field public static final WAVES:[Ljava/lang/String;

.field public static final WAVE_SUIT:I = -0x1

.field public static final WIDTH_MAX:I = 0x1ff

.field public static final WIDTH_MIN:I = 0x32

.field static app:Landroid/content/Context;

.field static final chGain:[I

.field static final chHzMain:[I

.field static final chHzSecond:[I

.field static final chWaveMain:[I

.field static final chWaveSecond:[I

.field static final chWidth:[I

.field static final chWidthSecond:[I

.field static gain:I

.field static final group:[I

.field static hold:Z

.field static legL:I

.field static legR:I

.field static loaded:Z

.field static final names:[Ljava/lang/String;

.field static final order:[I

.field static final slider:[I

.field static slots:Z

.field static unlimited:Z

.field static wave:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x9

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0413\u044a\u0440\u0434\u0438"

    aput-object v1, v0, v5

    const-string v1, "\u041a\u043e\u0440\u0435\u043c"

    aput-object v1, v0, v4

    const-string v1, "\u041f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v1, v0, v6

    const-string v1, "\u041f\u0440\u0430\u0441\u0435\u0446"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0420\u044a\u0446\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0422\u0440\u0430\u043f\u0435\u0446"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0413\u0440\u044a\u0431"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u041a\u0440\u044a\u0441\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    aput-object v2, v0, v1

    const-string v1, "\u0417\u0430\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v1, v0, v3

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->SLIDERS:[Ljava/lang/String;

    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_e4

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->ROW_ORDER:[I

    .line 40
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, "\u041a\u0440\u044a\u0441\u0442"

    aput-object v1, v0, v4

    const-string v1, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    aput-object v1, v0, v6

    const-string v1, "\u0420\u0430\u043c\u0435\u043d\u0435"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0421\u0440\u0435\u0434\u0435\u043d \u0433\u0440\u044a\u0431"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u041b\u044f\u0432\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0420\u044a\u0446\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0414\u044f\u0441\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u041a\u043e\u0440\u0435\u043c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    .line 50
    new-array v0, v3, [I

    fill-array-data v0, :array_fc

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    .line 63
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u0418 \u0434\u0432\u0430\u0442\u0430"

    aput-object v1, v0, v5

    const-string v1, "\u041e\u0441\u043d\u043e\u0432\u0435\u043d"

    aput-object v1, v0, v4

    const-string v1, "\u0412\u0442\u043e\u0440\u0438"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->GROUPS:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u041d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430"

    aput-object v1, v0, v5

    const-string v1, "\u041a\u0432\u0430\u0434\u0440\u0430\u0442"

    aput-object v1, v0, v4

    const-string v1, "\u0421\u0438\u043d\u0443\u0441"

    aput-object v1, v0, v6

    const-string v1, "\u0422\u0440\u0430\u043f\u0435\u0446"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0422\u0440\u0430\u043f\u0435\u0446 2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    .line 70
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    .line 71
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    .line 72
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    .line 73
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 75
    const/4 v0, 0x5

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    const/4 v0, 0x7

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    .line 76
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 78
    const/16 v0, 0x8

    new-array v0, v0, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    .line 80
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    .line 81
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    .line 82
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    .line 84
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    .line 85
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    .line 87
    sput-boolean v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 94
    sput-boolean v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->slots:Z

    .line 102
    sput-boolean v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold:Z

    .line 103
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    .line 104
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    return-void

    .line 32
    :array_e4
    .array-data 4
        0x3
        0x2
        0x9
        0x8
        0x1
        0x7
        0x6
        0x5
        0x0
        0x4
    .end array-data

    .line 50
    :array_fc
    .array-data 4
        -0x1
        0x7
        0x8
        0x5
        0x6
        0x2
        0x4
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized chGain(I)I
    .registers 3

    .prologue
    .line 372
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    aget v0, v0, p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/16 v0, 0x64

    goto :goto_d

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized chHz(IZ)I
    .registers 4

    .prologue
    .line 398
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p1, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    aget v0, v0, p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_18

    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    aget v0, v0, p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_18

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    goto :goto_f

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized chWave(IZ)I
    .registers 4

    .prologue
    .line 383
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p1, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    aget v0, v0, p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_18

    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    aget v0, v0, p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_18

    goto :goto_f

    :cond_16
    const/4 v0, -0x1

    goto :goto_f

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized chWidth(I)I
    .registers 3

    .prologue
    .line 375
    const-class v0, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    move-result v1

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized chWidth(IZ)I
    .registers 4

    .prologue
    .line 378
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p1, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    aget v0, v0, p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_18

    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    aget v0, v0, p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_18

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    goto :goto_f

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized channelAt(I)I
    .registers 3

    .prologue
    .line 402
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    if-ltz p0, :cond_f

    const/16 v0, 0x8

    if-ge p0, v0, :cond_f

    :try_start_9
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v0, v0, p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_12

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    add-int/lit8 v0, p0, 0x1

    goto :goto_d

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized channelsOf(I)[I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 415
    const-class v4, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v4

    move v3, v2

    move v0, v1

    .line 416
    :goto_9
    if-gt v3, v6, :cond_16

    :try_start_b
    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v5, v5, v3

    if-ne v5, p0, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 417
    :cond_16
    new-array v3, v0, [I

    .line 419
    :goto_18
    if-gt v2, v6, :cond_28

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v0, v0, v2

    if-ne v0, p0, :cond_2d

    add-int/lit8 v0, v1, 0x1

    aput v2, v3, v1
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_2a

    :goto_24
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_18

    .line 420
    :cond_28
    monitor-exit v4

    return-object v3

    .line 415
    :catchall_2a
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2d
    move v0, v1

    goto :goto_24
.end method

.method static clampChGain(I)I
    .registers 3

    .prologue
    .line 577
    const/4 v0, 0x0

    const/16 v1, 0x12c

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static clampChWave(I)I
    .registers 2

    .prologue
    .line 587
    if-ltz p0, :cond_6

    const/4 v0, 0x3

    if-gt p0, v0, :cond_6

    :goto_5
    return p0

    :cond_6
    const/4 p0, -0x1

    goto :goto_5
.end method

.method static clampGain(I)I
    .registers 3

    .prologue
    .line 589
    const/16 v0, 0x32

    const/16 v1, 0x12c

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static clampGroup(I)I
    .registers 2

    .prologue
    .line 583
    if-ltz p0, :cond_6

    const/4 v0, 0x2

    if-gt p0, v0, :cond_6

    :goto_5
    return p0

    :cond_6
    const/4 p0, 0x0

    goto :goto_5
.end method

.method static clampHz(II)I
    .registers 3

    .prologue
    .line 575
    if-gtz p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3
.end method

.method static clampSlider(I)I
    .registers 2

    .prologue
    .line 581
    if-ltz p0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->SLIDERS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_8

    :goto_7
    return p0

    :cond_8
    const/4 p0, -0x1

    goto :goto_7
.end method

.method static clampWave(I)I
    .registers 2

    .prologue
    .line 585
    if-ltz p0, :cond_6

    const/4 v0, 0x3

    if-gt p0, v0, :cond_6

    :goto_5
    return p0

    :cond_6
    const/4 p0, -0x1

    goto :goto_5
.end method

.method static clampWidth(I)I
    .registers 3

    .prologue
    .line 573
    if-gtz p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/16 v0, 0x32

    const/16 v1, 0x1ff

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3
.end method

.method public static declared-synchronized clearChannel(I)V
    .registers 5

    .prologue
    .line 502
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_30

    move-result v0

    if-nez v0, :cond_b

    .line 508
    :goto_9
    monitor-exit v1

    return-void

    .line 503
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    const/16 v2, 0x64

    aput v2, v0, p0

    .line 504
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    const/4 v3, 0x0

    aput v3, v2, p0

    aput v3, v0, p0

    .line 505
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    const/4 v3, 0x0

    aput v3, v2, p0

    aput v3, v0, p0

    .line 506
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    const/4 v3, -0x1

    aput v3, v2, p0

    aput v3, v0, p0

    .line 507
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_30

    goto :goto_9

    .line 502
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized copyToAll(I)V
    .registers 5

    .prologue
    .line 486
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4e

    move-result v0

    if-nez v0, :cond_b

    .line 498
    :goto_9
    monitor-exit v1

    return-void

    .line 487
    :cond_b
    const/4 v0, 0x1

    :goto_c
    const/16 v2, 0x8

    if-gt v0, v2, :cond_51

    .line 488
    if-ne v0, p0, :cond_15

    .line 487
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 489
    :cond_15
    :try_start_15
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 490
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 491
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 492
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 493
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 494
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 495
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    aget v3, v3, p0

    aput v3, v2, v0
    :try_end_4d
    .catchall {:try_start_15 .. :try_end_4d} :catchall_4e

    goto :goto_12

    .line 486
    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 497
    :cond_51
    :try_start_51
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    goto :goto_9
.end method

.method private static firstOn(I)I
    .registers 3

    .prologue
    .line 202
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x8

    if-gt v0, v1, :cond_f

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_c

    .line 203
    :goto_b
    return v0

    .line 202
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static declared-synchronized gain()I
    .registers 2

    .prologue
    .line 369
    const-class v0, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized group(I)I
    .registers 3

    .prologue
    .line 365
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    aget v0, v0, p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized hasChannel(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 274
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v2

    :try_start_4
    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_1a

    if-nez v1, :cond_a

    .line 276
    :cond_8
    :goto_8
    monitor-exit v2

    return v0

    :cond_a
    move v1, v0

    .line 275
    :goto_b
    const/16 v3, 0x8

    if-gt v1, v3, :cond_18

    :try_start_f
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v3, v3, v1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1a

    if-eq v3, p0, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 276
    :cond_18
    const/4 v0, 0x0

    goto :goto_8

    .line 274
    :catchall_1a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized hold()Z
    .registers 2

    .prologue
    .line 467
    const-class v0, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized legChannel(Z)I
    .registers 3

    .prologue
    .line 219
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    if-eqz p0, :cond_9

    :try_start_5
    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_c

    :goto_7
    monitor-exit v1

    return v0

    :cond_9
    :try_start_9
    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_7

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized legSlider(Z)I
    .registers 4

    .prologue
    .line 224
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    if-eqz p0, :cond_d

    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    :goto_9
    aget v0, v2, v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    return v0

    :cond_d
    :try_start_d
    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_9

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized legSliders()[I
    .registers 9

    .prologue
    const/16 v8, 0xa

    const/4 v3, 0x0

    .line 281
    const-class v5, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v5

    const/16 v0, 0xa

    :try_start_8
    new-array v6, v0, [I

    move v4, v3

    move v0, v3

    move v1, v3

    move v2, v3

    .line 284
    :goto_e
    if-ge v4, v8, :cond_2e

    .line 285
    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->rowTag(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    if-nez v3, :cond_1a

    .line 284
    :goto_16
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_e

    .line 287
    :cond_1a
    const-string v7, "\u041b"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 288
    const-string v7, "\u0414"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 289
    add-int/lit8 v3, v2, 0x1

    aput v4, v6, v2

    move v2, v3

    goto :goto_16

    .line 291
    :cond_2e
    if-eqz v1, :cond_32

    if-nez v0, :cond_37

    :cond_32
    const/4 v0, 0x0

    new-array v0, v0, [I
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3f

    .line 294
    :goto_35
    monitor-exit v5

    return-object v0

    .line 292
    :cond_37
    :try_start_37
    new-array v0, v2, [I

    .line 293
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_35

    .line 281
    :catchall_3f
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method static legs()Z
    .registers 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v6, v2

    move v3, v1

    .line 159
    :goto_6
    const/16 v0, 0x8

    if-gt v6, v0, :cond_83

    .line 160
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v7, v0, v6

    .line 161
    const-string v0, "\u041b\u044f\u0432 \u043a\u0440\u0430\u043a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u041b\u044f\u0432\u043e \u0431\u0435\u0434\u0440\u043e"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    if-ne v6, v8, :cond_4c

    const-string v0, "\u0413\u044a\u0440\u0434\u0438"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_28
    move v0, v2

    .line 162
    :goto_29
    const-string v4, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "\u0414\u044f\u0441\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    if-ne v6, v9, :cond_4e

    const-string v4, "\u0411\u0435\u0434\u0440\u0430"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    :cond_43
    move v4, v2

    .line 163
    :goto_44
    if-nez v0, :cond_50

    if-nez v4, :cond_50

    .line 159
    :cond_48
    :goto_48
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_6

    :cond_4c
    move v0, v1

    .line 161
    goto :goto_29

    :cond_4e
    move v4, v1

    .line 162
    goto :goto_44

    .line 164
    :cond_50
    if-eqz v0, :cond_77

    const-string v4, "\u041b\u044f\u0432\u043e \u0431\u0435\u0434\u0440\u043e"

    move-object v5, v4

    .line 166
    :goto_55
    if-eqz v0, :cond_7b

    const/4 v4, 0x2

    .line 167
    :goto_58
    if-eqz v0, :cond_7e

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    aget v0, v0, v8

    .line 168
    :goto_5e
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_69

    .line 169
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aput-object v5, v3, v6

    move v3, v2

    .line 172
    :cond_69
    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v5, v5, v6

    if-ne v5, v4, :cond_48

    if-eq v4, v0, :cond_48

    .line 173
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aput v0, v3, v6

    move v3, v2

    .line 174
    goto :goto_48

    .line 164
    :cond_77
    const-string v4, "\u0414\u044f\u0441\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    move-object v5, v4

    goto :goto_55

    .line 166
    :cond_7b
    const/16 v4, 0x9

    goto :goto_58

    .line 167
    :cond_7e
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    aget v0, v0, v9

    goto :goto_5e

    .line 177
    :cond_83
    return v3
.end method

.method public static declared-synchronized load(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x5

    const/4 v0, 0x1

    .line 114
    const-class v4, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v4

    :try_start_6
    sget-boolean v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_221

    if-nez v3, :cond_c

    if-nez p0, :cond_e

    .line 154
    :cond_c
    :goto_c
    monitor-exit v4

    return-void

    .line 115
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    .line 116
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    const-string v5, "xems_bodytech"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    move v3, v0

    .line 117
    :goto_1e
    const/16 v6, 0x8

    if-gt v3, v6, :cond_87

    .line 118
    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 119
    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    aget v8, v8, v3

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampSlider(I)I

    move-result v7

    aput v7, v6, v3

    .line 120
    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "group"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGroup(I)I

    move-result v7

    aput v7, v6, v3

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 122
    :cond_87
    :goto_87
    const/16 v3, 0x8

    if-gt v0, v3, :cond_174

    .line 123
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cgain"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x64

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChGain(I)I

    move-result v6

    aput v6, v3, v0

    .line 124
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cwidth"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWidth(I)I

    move-result v6

    aput v6, v3, v0

    .line 125
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cwidths"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWidth(I)I

    move-result v6

    aput v6, v3, v0

    .line 126
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cwavem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChWave(I)I

    move-result v6

    aput v6, v3, v0

    .line 127
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cwaves"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChWave(I)I

    move-result v6

    aput v6, v3, v0

    .line 128
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chzm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampHz(II)I

    move-result v6

    aput v6, v3, v0

    .line 129
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chzs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampHz(II)I

    move-result v6

    aput v6, v3, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_87

    .line 131
    :cond_174
    const-string v0, "legl"

    const/4 v3, 0x0

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    .line 132
    const-string v0, "legr"

    const/4 v3, 0x0

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    .line 133
    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_19c

    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_19c

    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    sget v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    if-ne v0, v3, :cond_1ba

    .line 135
    :cond_19c
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->firstOn(I)I

    move-result v3

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    const/4 v6, 0x7

    aget v0, v0, v6

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->firstOn(I)I

    move-result v0

    .line 136
    if-eqz v3, :cond_224

    :goto_1b0
    sput v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    .line 137
    if-eqz v0, :cond_226

    sget v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    if-eq v0, v3, :cond_226

    :goto_1b8
    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    .line 141
    :cond_1ba
    const-string v0, "legs389"

    const/4 v1, 0x0

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1cc

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legs()Z

    move-result v0

    if-eqz v0, :cond_1cc

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V

    .line 143
    :cond_1cc
    const-string v0, "thighs456"

    const/4 v1, 0x0

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1db

    .line 144
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->thighs()Z

    .line 145
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V

    .line 147
    :cond_1db
    const-string v0, "unlimited"

    const/4 v1, 0x1

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 148
    const-string v0, "slots2"

    const/4 v1, 0x1

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slots:Z

    .line 149
    const-string v0, "hold"

    const/4 v1, 0x1

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold:Z

    .line 150
    const-string v0, "order"

    const-string v1, ""

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->loadOrder(Ljava/lang/String;)V

    .line 151
    const-string v0, "wave"

    const/4 v1, -0x1

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWave(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 152
    const-string v0, "gain"

    const/16 v1, 0x64

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGain(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_21f
    .catchall {:try_start_e .. :try_end_21f} :catchall_221

    goto/16 :goto_c

    .line 114
    :catchall_221
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_224
    move v3, v1

    .line 136
    goto :goto_1b0

    .line 137
    :cond_226
    :try_start_226
    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I
    :try_end_228
    .catchall {:try_start_226 .. :try_end_228} :catchall_221

    if-ne v0, v2, :cond_22c

    move v0, v1

    goto :goto_1b8

    :cond_22c
    move v0, v2

    goto :goto_1b8
.end method

.method static loadOrder(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 562
    const/16 v0, 0x9

    new-array v4, v0, [Z

    .line 563
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_28

    move v0, v1

    :goto_11
    move v3, v2

    .line 564
    :goto_12
    if-eqz v0, :cond_2d

    if-ge v3, v7, :cond_2d

    .line 565
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    .line 566
    if-lt v5, v1, :cond_24

    if-gt v5, v7, :cond_24

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_2a

    :cond_24
    move v0, v2

    .line 564
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_28
    move v0, v2

    .line 563
    goto :goto_11

    .line 567
    :cond_2a
    aput-boolean v1, v4, v5

    goto :goto_25

    .line 569
    :cond_2d
    :goto_2d
    if-ge v2, v7, :cond_41

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    if-eqz v0, :cond_3e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    :goto_39
    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_3e
    add-int/lit8 v1, v2, 0x1

    goto :goto_39

    .line 570
    :cond_41
    return-void
.end method

.method public static declared-synchronized move(II)V
    .registers 8

    .prologue
    .line 540
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->positionOf(I)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_25

    move-result v0

    .line 541
    add-int v2, v0, p1

    .line 542
    if-ltz v2, :cond_f

    const/16 v3, 0x8

    if-lt v2, v3, :cond_11

    .line 547
    :cond_f
    :goto_f
    monitor-exit v1

    return-void

    .line 543
    :cond_11
    :try_start_11
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v3, v3, v0

    .line 544
    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v5, v5, v2

    aput v5, v4, v0

    .line 545
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aput v3, v0, v2

    .line 546
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_25

    goto :goto_f

    .line 540
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized name(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 358
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    .line 360
    :goto_b
    monitor-exit v1

    return-object v0

    .line 359
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 360
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_31

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_36

    move-result-object v0

    goto :goto_b

    .line 358
    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized positionOf(I)I
    .registers 4

    .prologue
    .line 405
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x8

    if-ge v0, v2, :cond_13

    :try_start_8
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v2, v2, v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_16

    if-ne v2, p0, :cond_10

    .line 406
    :goto_e
    monitor-exit v1

    return v0

    .line 405
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 406
    :cond_13
    add-int/lit8 v0, p0, -0x1

    goto :goto_e

    .line 405
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reset()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 331
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :goto_4
    const/16 v2, 0x8

    if-gt v0, v2, :cond_44

    .line 332
    :try_start_8
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 333
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 334
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 335
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    const/16 v3, 0x64

    aput v3, v2, v0

    .line 336
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 337
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 338
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 339
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 340
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 341
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 343
    :cond_44
    const-string v0, ""

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->loadOrder(Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x5

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    .line 345
    const/4 v0, 0x7

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    .line 346
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 347
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slots:Z

    .line 348
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold:Z

    .line 349
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 350
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 351
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_62
    .catchall {:try_start_8 .. :try_end_62} :catchall_64

    .line 352
    monitor-exit v1

    return-void

    .line 331
    :catchall_64
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized rowName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 198
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    if-ltz p0, :cond_f

    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->thighSlider()I

    move-result v0

    if-ne p0, v0, :cond_f

    const-string v0, "\u0411\u0435\u0434\u0440\u0430"
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    :goto_d
    monitor-exit v1

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized rowTag(I)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 211
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_4
    sget-boolean v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_22

    if-eqz v2, :cond_a

    if-gez p0, :cond_c

    .line 214
    :cond_a
    :goto_a
    monitor-exit v1

    return-object v0

    .line 212
    :cond_c
    const/4 v2, 0x0

    :try_start_d
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSlider(Z)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSlider(Z)I

    move-result v3

    .line 213
    if-eq v2, v3, :cond_a

    .line 214
    if-ne p0, v2, :cond_1d

    const-string v0, "\u041b"

    goto :goto_a

    :cond_1d
    if-ne p0, v3, :cond_a

    const-string v0, "\u0414"
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_22

    goto :goto_a

    .line 211
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static save()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x8

    const/4 v2, 0x1

    .line 298
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    if-nez v1, :cond_9

    .line 327
    :goto_8
    return-void

    .line 299
    :cond_9
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    const-string v3, "xems_bodytech"

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move v1, v2

    .line 300
    :goto_16
    if-gt v1, v6, :cond_69

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v5, v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    aget v5, v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_69
    move v1, v2

    .line 305
    :goto_6a
    if-gt v1, v6, :cond_126

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cgain"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    aget v5, v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cwidth"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    aget v5, v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cwidths"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    aget v5, v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cwavem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    aget v5, v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cwaves"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    aget v5, v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chzm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    aget v5, v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chzs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    aget v5, v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6a

    .line 314
    :cond_126
    const-string v1, "legs389"

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    const-string v1, "thighs456"

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 316
    const-string v1, "legl"

    sget v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 317
    const-string v1, "legr"

    sget v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    :goto_143
    if-ge v0, v6, :cond_14f

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_143

    .line 320
    :cond_14f
    const-string v0, "order"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    const-string v0, "unlimited"

    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 322
    const-string v0, "slots2"

    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->slots:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 323
    const-string v0, "hold"

    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 324
    const-string v0, "wave"

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 325
    const-string v0, "gain"

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_8
.end method

.method public static declared-synchronized setChGain(II)V
    .registers 5

    .prologue
    .line 444
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v0

    if-nez v0, :cond_b

    .line 447
    :goto_9
    monitor-exit v1

    return-void

    .line 445
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChGain(I)I

    move-result v2

    aput v2, v0, p0

    .line 446
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_9

    .line 444
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setChHz(IZI)V
    .registers 6

    .prologue
    .line 511
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1b

    move-result v0

    if-nez v0, :cond_b

    .line 515
    :goto_9
    monitor-exit v1

    return-void

    .line 512
    :cond_b
    if-eqz p1, :cond_1e

    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    const/16 v2, 0x3e8

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampHz(II)I

    move-result v2

    aput v2, v0, p0

    .line 514
    :goto_17
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1b

    goto :goto_9

    .line 511
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 513
    :cond_1e
    :try_start_1e
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    const/16 v2, 0x3e8

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampHz(II)I

    move-result v2

    aput v2, v0, p0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_1b

    goto :goto_17
.end method

.method public static declared-synchronized setChWave(IZI)V
    .registers 6

    .prologue
    .line 461
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    move-result v0

    if-nez v0, :cond_b

    .line 465
    :goto_9
    monitor-exit v1

    return-void

    .line 462
    :cond_b
    if-eqz p1, :cond_1c

    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChWave(I)I

    move-result v2

    aput v2, v0, p0

    .line 464
    :goto_15
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_9

    .line 461
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 463
    :cond_1c
    :try_start_1c
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChWave(I)I

    move-result v2

    aput v2, v0, p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_19

    goto :goto_15
.end method

.method public static declared-synchronized setChWidth(II)V
    .registers 4

    .prologue
    .line 450
    const-class v0, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChWidth(IZI)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 451
    monitor-exit v0

    return-void

    .line 450
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setChWidth(IZI)V
    .registers 6

    .prologue
    .line 454
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    move-result v0

    if-nez v0, :cond_b

    .line 458
    :goto_9
    monitor-exit v1

    return-void

    .line 455
    :cond_b
    if-eqz p1, :cond_1c

    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWidth(I)I

    move-result v2

    aput v2, v0, p0

    .line 457
    :goto_15
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_9

    .line 454
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 456
    :cond_1c
    :try_start_1c
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWidth(I)I

    move-result v2

    aput v2, v0, p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_19

    goto :goto_15
.end method

.method public static declared-synchronized setGain(I)V
    .registers 3

    .prologue
    .line 555
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGain(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 556
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 557
    monitor-exit v1

    return-void

    .line 555
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setGroup(II)V
    .registers 5

    .prologue
    .line 438
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v0

    if-nez v0, :cond_b

    .line 441
    :goto_9
    monitor-exit v1

    return-void

    .line 439
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGroup(I)I

    move-result v2

    aput v2, v0, p0

    .line 440
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_9

    .line 438
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setHold(Z)V
    .registers 3

    .prologue
    .line 470
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    sput-boolean p0, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold:Z

    .line 471
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 472
    monitor-exit v1

    return-void

    .line 470
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLegChannel(ZI)V
    .registers 5

    .prologue
    .line 233
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    move-result v0

    if-nez v0, :cond_b

    .line 245
    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    .line 234
    :cond_b
    if-eqz p0, :cond_25

    :try_start_d
    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    .line 235
    :goto_f
    if-eq v0, p1, :cond_9

    .line 236
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->swapRole(II)V

    .line 237
    if-eqz p0, :cond_28

    .line 238
    sget v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    if-ne v2, p1, :cond_1c

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    .line 239
    :cond_1c
    sput p1, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    .line 244
    :goto_1e
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_22

    goto :goto_9

    .line 233
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0

    .line 234
    :cond_25
    :try_start_25
    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    goto :goto_f

    .line 241
    :cond_28
    sget v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    if-ne v2, p1, :cond_2e

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    .line 242
    :cond_2e
    sput p1, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_22

    goto :goto_1e
.end method

.method public static declared-synchronized setName(ILjava/lang/String;)V
    .registers 6

    .prologue
    const/16 v3, 0x18

    .line 426
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_19

    move-result v0

    if-nez v0, :cond_d

    .line 429
    :goto_b
    monitor-exit v1

    return-void

    .line 427
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    if-nez p1, :cond_1c

    const-string p1, ""

    :cond_13
    :goto_13
    aput-object p1, v0, p0

    .line 428
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_b

    .line 426
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 427
    :cond_1c
    :try_start_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_13

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_19

    move-result-object p1

    goto :goto_13
.end method

.method public static declared-synchronized setSlider(II)V
    .registers 5

    .prologue
    .line 432
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v0

    if-nez v0, :cond_b

    .line 435
    :goto_9
    monitor-exit v1

    return-void

    .line 433
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampSlider(I)I

    move-result v2

    aput v2, v0, p0

    .line 434
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_9

    .line 432
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSlots(Z)V
    .registers 3

    .prologue
    .line 475
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    sput-boolean p0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slots:Z

    .line 476
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 477
    monitor-exit v1

    return-void

    .line 475
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setUnlimited(Z)V
    .registers 3

    .prologue
    .line 480
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    sput-boolean p0, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 481
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 482
    monitor-exit v1

    return-void

    .line 480
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setWave(I)V
    .registers 3

    .prologue
    .line 550
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWave(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 551
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 552
    monitor-exit v1

    return-void

    .line 550
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized slider(I)I
    .registers 3

    .prologue
    .line 363
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v0, v0, p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static sliderName(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 410
    if-ltz p0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->SLIDERS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->SLIDERS:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "\u041d\u044f\u043c\u0430"

    goto :goto_b
.end method

.method public static declared-synchronized slots()Z
    .registers 2

    .prologue
    .line 394
    const-class v0, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->slots:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized sortLeftToRight()V
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v9, 0x8

    .line 519
    const-class v5, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v5

    const/16 v0, 0x9

    :try_start_9
    new-array v6, v0, [I

    move v4, v2

    .line 520
    :goto_c
    if-gt v4, v9, :cond_2d

    .line 521
    const/16 v0, 0x64

    move v1, v3

    .line 522
    :goto_11
    sget-object v7, Lcom/isaigu/gymapp/bodytech/BtSettings;->ROW_ORDER:[I

    array-length v7, v7

    if-ge v1, v7, :cond_24

    sget-object v7, Lcom/isaigu/gymapp/bodytech/BtSettings;->ROW_ORDER:[I

    aget v7, v7, v1

    sget-object v8, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v8, v8, v4

    if-ne v7, v8, :cond_21

    move v0, v1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 523
    :cond_24
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v4

    aput v0, v6, v4

    .line 520
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_c

    :cond_2d
    move v0, v3

    .line 525
    :goto_2e
    if-ge v0, v9, :cond_39

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    add-int/lit8 v3, v0, 0x1

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_39
    move v1, v2

    .line 526
    :goto_3a
    if-ge v1, v9, :cond_65

    .line 527
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v2, v0, v1

    .line 528
    add-int/lit8 v0, v1, -0x1

    .line 529
    :goto_42
    if-ltz v0, :cond_5b

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v3, v3, v0

    aget v3, v6, v3

    aget v4, v6, v2

    if-le v3, v4, :cond_5b

    .line 530
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    add-int/lit8 v4, v0, 0x1

    sget-object v7, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v7, v7, v0

    aput v7, v3, v4

    .line 531
    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    .line 533
    :cond_5b
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    add-int/lit8 v0, v0, 0x1

    aput v2, v3, v0

    .line 526
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3a

    .line 535
    :cond_65
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_68
    .catchall {:try_start_9 .. :try_end_68} :catchall_6a

    .line 536
    monitor-exit v5

    return-void

    .line 519
    :catchall_6a
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method private static swap([III)V
    .registers 5

    .prologue
    .line 267
    aget v0, p0, p1

    .line 268
    aget v1, p0, p2

    aput v1, p0, p1

    .line 269
    aput v0, p0, p2

    .line 270
    return-void
.end method

.method static swapRole(II)V
    .registers 5

    .prologue
    .line 249
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 250
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p0

    .line 251
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aput-object v0, v1, p1

    .line 252
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->swap([III)V

    .line 253
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->swap([III)V

    .line 254
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->swap([III)V

    .line 255
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->swap([III)V

    .line 256
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->swap([III)V

    .line 257
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->swap([III)V

    .line 258
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->swap([III)V

    .line 259
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->swap([III)V

    .line 260
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->swap([III)V

    .line 261
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->positionOf(I)I

    move-result v0

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->positionOf(I)I

    move-result v1

    .line 262
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aput p1, v2, v0

    .line 263
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aput p0, v0, v1

    .line 264
    return-void
.end method

.method public static declared-synchronized thighSlider()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 191
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v2

    :try_start_4
    sget-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z

    if-eqz v0, :cond_18

    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_18

    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_2b

    move-result v0

    if-nez v0, :cond_1b

    :cond_18
    move v0, v1

    .line 193
    :cond_19
    :goto_19
    monitor-exit v2

    return v0

    .line 192
    :cond_1b
    :try_start_1b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    aget v0, v0, v3

    .line 193
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    aget v3, v3, v4
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_2b

    if-eq v0, v3, :cond_19

    move v0, v1

    goto :goto_19

    .line 191
    :catchall_2b
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static thighs()Z
    .registers 4

    .prologue
    const/4 v3, -0x1

    .line 182
    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_27

    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    aget v0, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_29

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    aget v0, v0, v1

    if-eq v0, v3, :cond_29

    :cond_27
    const/4 v0, 0x0

    .line 186
    :goto_28
    return v0

    .line 183
    :cond_29
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    aget v0, v0, v1

    if-eq v0, v3, :cond_45

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    aget v0, v0, v1

    .line 184
    :goto_37
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    aput v0, v1, v2

    .line 185
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->legR:I

    aput v0, v1, v2

    .line 186
    const/4 v0, 0x1

    goto :goto_28

    .line 183
    :cond_45
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    aget v0, v0, v1

    if-eq v0, v3, :cond_54

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->legL:I

    aget v0, v0, v1

    goto :goto_37

    :cond_54
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    goto :goto_37
.end method

.method public static declared-synchronized unlimited()Z
    .registers 2

    .prologue
    .line 392
    const-class v0, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static valid(I)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 579
    if-lt p0, v0, :cond_8

    const/16 v1, 0x8

    if-gt p0, v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static declared-synchronized wave()I
    .registers 2

    .prologue
    .line 367
    const-class v0, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized waveFor(IZ)I
    .registers 4

    .prologue
    .line 388
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWave(IZ)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e

    move-result v0

    .line 389
    if-ltz v0, :cond_b

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    :try_start_b
    sget v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_e

    goto :goto_9

    .line 388
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
