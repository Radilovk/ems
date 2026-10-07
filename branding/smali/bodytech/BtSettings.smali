.class public final Lcom/isaigu/gymapp/bodytech/BtSettings;
.super Ljava/lang/Object;
.source "BtSettings.java"


# static fields
.field public static final CALF:I = 0x3

.field public static final CHANNELS:I = 0x8

.field public static final CHEST:I = 0x0

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

.field public static final LEFT_LEG:I = 0x2

.field public static final NO_SLIDER:I = -0x1

.field static final OLD_C5:Ljava/lang/String; = "\u0413\u044a\u0440\u0434\u0438"

.field static final OLD_C5_SLIDER:I = 0x0

.field static final OLD_C7:Ljava/lang/String; = "\u0411\u0435\u0434\u0440\u0430"

.field static final OLD_C7_SLIDER:I = 0x2

.field static final PREFS:Ljava/lang/String; = "xems_bodytech"

.field public static final RIGHT_LEG:I = 0x9

.field public static final ROW_ORDER:[I

.field public static final SLIDERS:[Ljava/lang/String;

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

.field static loaded:Z

.field static final names:[Ljava/lang/String;

.field static final order:[I

.field static final slider:[I

.field static sync:Z

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

    const-string v1, "\u041b\u044f\u0432 \u043a\u0440\u0430\u043a"

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

    const-string v1, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    aput-object v1, v0, v3

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->SLIDERS:[Ljava/lang/String;

    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_dc

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

    const-string v2, "\u041b\u044f\u0432 \u043a\u0440\u0430\u043a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0420\u044a\u0446\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u041a\u043e\u0440\u0435\u043c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    .line 42
    new-array v0, v3, [I

    fill-array-data v0, :array_f4

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    .line 50
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u0418 \u0434\u0432\u0430\u0442\u0430"

    aput-object v1, v0, v5

    const-string v1, "\u041e\u0441\u043d\u043e\u0432\u0435\u043d"

    aput-object v1, v0, v4

    const-string v1, "\u0412\u0442\u043e\u0440\u0438"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->GROUPS:[Ljava/lang/String;

    .line 53
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

    .line 57
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    .line 58
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    .line 59
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 61
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    .line 65
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    .line 66
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    .line 67
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    .line 69
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    .line 70
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    .line 72
    sput-boolean v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 79
    sput-boolean v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->sync:Z

    .line 80
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    .line 81
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    return-void

    .line 32
    :array_dc
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

    .line 42
    :array_f4
    .array-data 4
        -0x1
        0x7
        0x8
        0x5
        0x6
        0x2
        0x4
        0x9
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
    .line 278
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
    .line 304
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
    .line 289
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
    .line 281
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
    .line 284
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
    .line 308
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

    .line 321
    const-class v4, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v4

    move v3, v2

    move v0, v1

    .line 322
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

    .line 323
    :cond_16
    new-array v3, v0, [I

    .line 325
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

    .line 326
    :cond_28
    monitor-exit v4

    return-object v3

    .line 321
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
    .line 476
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
    .line 486
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
    .line 488
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
    .line 482
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
    .line 474
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
    .line 480
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
    .line 484
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
    .line 472
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
    .line 401
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_30

    move-result v0

    if-nez v0, :cond_b

    .line 407
    :goto_9
    monitor-exit v1

    return-void

    .line 402
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    const/16 v2, 0x64

    aput v2, v0, p0

    .line 403
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    const/4 v3, 0x0

    aput v3, v2, p0

    aput v3, v0, p0

    .line 404
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    const/4 v3, 0x0

    aput v3, v2, p0

    aput v3, v0, p0

    .line 405
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    const/4 v3, -0x1

    aput v3, v2, p0

    aput v3, v0, p0

    .line 406
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_30

    goto :goto_9

    .line 401
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized copyToAll(I)V
    .registers 5

    .prologue
    .line 385
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4e

    move-result v0

    if-nez v0, :cond_b

    .line 397
    :goto_9
    monitor-exit v1

    return-void

    .line 386
    :cond_b
    const/4 v0, 0x1

    :goto_c
    const/16 v2, 0x8

    if-gt v0, v2, :cond_51

    .line 387
    if-ne v0, p0, :cond_15

    .line 386
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 388
    :cond_15
    :try_start_15
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 389
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 390
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 391
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 392
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 393
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 394
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    aget v3, v3, p0

    aput v3, v2, v0
    :try_end_4d
    .catchall {:try_start_15 .. :try_end_4d} :catchall_4e

    goto :goto_12

    .line 385
    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 396
    :cond_51
    :try_start_51
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    goto :goto_9
.end method

.method public static declared-synchronized gain()I
    .registers 2

    .prologue
    .line 275
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
    .line 271
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

    .line 188
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v2

    :try_start_4
    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_1a

    if-nez v1, :cond_a

    .line 190
    :cond_8
    :goto_8
    monitor-exit v2

    return v0

    :cond_a
    move v1, v0

    .line 189
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

    .line 190
    :cond_18
    const/4 v0, 0x0

    goto :goto_8

    .line 188
    :catchall_1a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static hidden(I)Z
    .registers 2

    .prologue
    .line 161
    if-eqz p0, :cond_5

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static declared-synchronized legSliders()[I
    .registers 9

    .prologue
    const/16 v8, 0xa

    const/4 v3, 0x0

    .line 195
    const-class v5, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v5

    const/16 v0, 0xa

    :try_start_8
    new-array v6, v0, [I

    move v4, v3

    move v0, v3

    move v1, v3

    move v2, v3

    .line 198
    :goto_e
    if-ge v4, v8, :cond_2e

    .line 199
    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->rowTag(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    if-nez v3, :cond_1a

    .line 198
    :goto_16
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_e

    .line 201
    :cond_1a
    const-string v7, "\u041b"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 202
    const-string v7, "\u0414"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 203
    add-int/lit8 v3, v2, 0x1

    aput v4, v6, v2

    move v2, v3

    goto :goto_16

    .line 205
    :cond_2e
    if-eqz v1, :cond_32

    if-nez v0, :cond_37

    :cond_32
    const/4 v0, 0x0

    new-array v0, v0, [I
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3f

    .line 208
    :goto_35
    monitor-exit v5

    return-object v0

    .line 206
    :cond_37
    :try_start_37
    new-array v0, v2, [I

    .line 207
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_35

    .line 195
    :catchall_3f
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method static legs()Z
    .registers 9

    .prologue
    const/16 v8, 0x8

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v7, 0x7

    const/4 v6, 0x5

    .line 119
    const/4 v0, 0x0

    .line 120
    const-string v3, "\u0413\u044a\u0440\u0434\u0438"

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v3, v3, v6

    if-nez v3, :cond_2a

    .line 121
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v0, v6

    .line 122
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    aget v3, v3, v6

    aput v3, v0, v6

    move v0, v1

    .line 125
    :cond_2a
    const-string v3, "\u0411\u0435\u0434\u0440\u0430"

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v3, v3, v7

    if-ne v3, v2, :cond_4d

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v7

    aput-object v3, v0, v7

    .line 127
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    aget v3, v3, v7

    aput v3, v0, v7

    move v0, v1

    :cond_4d
    move v3, v1

    .line 130
    :goto_4e
    if-gt v3, v8, :cond_7e

    .line 131
    const-string v4, "\u041b\u044f\u0432\u043e \u0431\u0435\u0434\u0440\u043e"

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 132
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v6

    aput-object v4, v0, v3

    move v0, v1

    .line 130
    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 134
    :cond_68
    const-string v4, "\u0414\u044f\u0441\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 135
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v0, v3

    move v0, v1

    .line 136
    goto :goto_65

    :cond_7e
    move v4, v1

    .line 141
    :goto_7f
    if-gt v4, v8, :cond_db

    .line 142
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v3, v3, v4

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hidden(I)Z

    move-result v3

    if-nez v3, :cond_8f

    .line 141
    :goto_8b
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_7f

    .line 143
    :cond_8f
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->onSlider(I)Z

    move-result v0

    if-nez v0, :cond_c6

    move v0, v2

    .line 144
    :goto_96
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aput v0, v3, v4

    .line 145
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-nez v3, :cond_c9

    const-string v3, ""

    .line 146
    :goto_a2
    const-string v5, "\u043b\u044f\u0432"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c4

    const-string v5, "\u0434\u044f\u0441\u043d"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c4

    const-string v5, "\u0434\u0435\u0441"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c4

    .line 147
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    if-ne v0, v2, :cond_d6

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    :goto_c2
    aput-object v0, v3, v4

    :cond_c4
    move v0, v1

    .line 149
    goto :goto_8b

    .line 143
    :cond_c6
    const/16 v0, 0x9

    goto :goto_96

    .line 145
    :cond_c9
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_a2

    .line 147
    :cond_d6
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v7

    goto :goto_c2

    .line 151
    :cond_db
    return v0
.end method

.method public static declared-synchronized load(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v0, 0x1

    .line 91
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v2

    :try_start_6
    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1b6

    if-nez v1, :cond_c

    if-nez p0, :cond_e

    .line 115
    :cond_c
    :goto_c
    monitor-exit v2

    return-void

    .line 92
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    .line 93
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    const-string v3, "xems_bodytech"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move v1, v0

    .line 94
    :goto_1e
    if-gt v1, v7, :cond_85

    .line 95
    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 96
    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    aget v6, v6, v1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampSlider(I)I

    move-result v5

    aput v5, v4, v1

    .line 97
    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGroup(I)I

    move-result v5

    aput v5, v4, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 99
    :cond_85
    :goto_85
    if-gt v0, v7, :cond_170

    .line 100
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cgain"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChGain(I)I

    move-result v4

    aput v4, v1, v0

    .line 101
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cwidth"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWidth(I)I

    move-result v4

    aput v4, v1, v0

    .line 102
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cwidths"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWidth(I)I

    move-result v4

    aput v4, v1, v0

    .line 103
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cwavem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChWave(I)I

    move-result v4

    aput v4, v1, v0

    .line 104
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cwaves"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChWave(I)I

    move-result v4

    aput v4, v1, v0

    .line 105
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chzm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampHz(II)I

    move-result v4

    aput v4, v1, v0

    .line 106
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chzs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampHz(II)I

    move-result v4

    aput v4, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_85

    .line 108
    :cond_170
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legs()Z

    move-result v0

    if-eqz v0, :cond_179

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V

    .line 109
    :cond_179
    const-string v0, "unlimited"

    const/4 v1, 0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 110
    const-string v0, "sync"

    const/4 v1, 0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->sync:Z

    .line 111
    const-string v0, "order"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->loadOrder(Ljava/lang/String;)V

    .line 112
    const-string v0, "wave"

    const/4 v1, -0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWave(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 113
    const-string v0, "gain"

    const/16 v1, 0x64

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGain(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_1b4
    .catchall {:try_start_e .. :try_end_1b4} :catchall_1b6

    goto/16 :goto_c

    .line 91
    :catchall_1b6
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static loadOrder(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 461
    const/16 v0, 0x9

    new-array v4, v0, [Z

    .line 462
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_28

    move v0, v1

    :goto_11
    move v3, v2

    .line 463
    :goto_12
    if-eqz v0, :cond_2d

    if-ge v3, v7, :cond_2d

    .line 464
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    .line 465
    if-lt v5, v1, :cond_24

    if-gt v5, v7, :cond_24

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_2a

    :cond_24
    move v0, v2

    .line 463
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_28
    move v0, v2

    .line 462
    goto :goto_11

    .line 466
    :cond_2a
    aput-boolean v1, v4, v5

    goto :goto_25

    .line 468
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

    .line 469
    :cond_41
    return-void
.end method

.method public static declared-synchronized move(II)V
    .registers 8

    .prologue
    .line 439
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->positionOf(I)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_25

    move-result v0

    .line 440
    add-int v2, v0, p1

    .line 441
    if-ltz v2, :cond_f

    const/16 v3, 0x8

    if-lt v2, v3, :cond_11

    .line 446
    :cond_f
    :goto_f
    monitor-exit v1

    return-void

    .line 442
    :cond_11
    :try_start_11
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v3, v3, v0

    .line 443
    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v5, v5, v2

    aput v5, v4, v0

    .line 444
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aput v3, v0, v2

    .line 445
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_25

    goto :goto_f

    .line 439
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized name(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 264
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    .line 266
    :goto_b
    monitor-exit v1

    return-object v0

    .line 265
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 266
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

    .line 264
    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static onSlider(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 165
    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-gt v1, v2, :cond_10

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v2, v2, v1

    if-ne v2, p0, :cond_d

    .line 166
    :goto_c
    return v0

    .line 165
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 166
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static declared-synchronized positionOf(I)I
    .registers 4

    .prologue
    .line 311
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

    .line 312
    :goto_e
    monitor-exit v1

    return v0

    .line 311
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 312
    :cond_13
    add-int/lit8 v0, p0, -0x1

    goto :goto_e

    .line 311
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reset()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 240
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :goto_4
    const/16 v2, 0x8

    if-gt v0, v2, :cond_44

    .line 241
    :try_start_8
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 242
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 243
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 244
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    const/16 v3, 0x64

    aput v3, v2, v0

    .line 245
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 246
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 247
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 248
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 249
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 250
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 252
    :cond_44
    const-string v0, ""

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->loadOrder(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 254
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->sync:Z

    .line 255
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 256
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 257
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_5b

    .line 258
    monitor-exit v1

    return-void

    .line 240
    :catchall_5b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized rowTag(I)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 174
    const-class v4, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v4

    :try_start_4
    sget-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_5e

    if-nez v0, :cond_b

    move-object v0, v2

    .line 183
    :cond_9
    :goto_9
    monitor-exit v4

    return-object v0

    .line 176
    :cond_b
    const/4 v1, 0x1

    move v3, v1

    move-object v0, v2

    :goto_e
    const/16 v1, 0x8

    if-gt v3, v1, :cond_9

    .line 177
    :try_start_12
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v1, v1, v3

    if-eq v1, p0, :cond_1c

    .line 176
    :goto_18
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_e

    .line 178
    :cond_1c
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-nez v1, :cond_3a

    const-string v1, ""

    .line 179
    :goto_24
    const-string v5, "\u043b\u044f\u0432"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    const-string v1, "\u041b"

    .line 180
    :goto_2e
    if-eqz v1, :cond_38

    if-eqz v0, :cond_5c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_38
    move-object v0, v2

    goto :goto_9

    .line 178
    :cond_3a
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    .line 179
    :cond_47
    const-string v5, "\u0434\u044f\u0441\u043d"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_57

    const-string v5, "\u0434\u0435\u0441"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    :cond_57
    const-string v1, "\u0414"
    :try_end_59
    .catchall {:try_start_12 .. :try_end_59} :catchall_5e

    goto :goto_2e

    :cond_5a
    move-object v1, v2

    goto :goto_2e

    :cond_5c
    move-object v0, v1

    .line 181
    goto :goto_18

    .line 174
    :catchall_5e
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method static save()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v6, 0x8

    .line 212
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    if-nez v2, :cond_9

    .line 236
    :goto_8
    return-void

    .line 213
    :cond_9
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    const-string v3, "xems_bodytech"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move v2, v1

    .line 214
    :goto_16
    if-gt v2, v6, :cond_69

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v5, v5, v2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    aget v5, v5, v2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 219
    :cond_69
    :goto_69
    if-gt v1, v6, :cond_125

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cgain"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    aget v4, v4, v1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cwidth"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    aget v4, v4, v1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cwidths"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    aget v4, v4, v1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cwavem"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    aget v4, v4, v1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cwaves"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    aget v4, v4, v1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chzm"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    aget v4, v4, v1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chzs"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    aget v4, v4, v1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_69

    .line 228
    :cond_125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    :goto_12a
    if-ge v0, v6, :cond_136

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    .line 230
    :cond_136
    const-string v0, "order"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    const-string v0, "unlimited"

    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 232
    const-string v0, "sync"

    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->sync:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    const-string v0, "wave"

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 234
    const-string v0, "gain"

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_8
.end method

.method public static declared-synchronized setChGain(II)V
    .registers 5

    .prologue
    .line 350
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v0

    if-nez v0, :cond_b

    .line 353
    :goto_9
    monitor-exit v1

    return-void

    .line 351
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChGain(I)I

    move-result v2

    aput v2, v0, p0

    .line 352
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_9

    .line 350
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setChHz(IZI)V
    .registers 6

    .prologue
    .line 410
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1b

    move-result v0

    if-nez v0, :cond_b

    .line 414
    :goto_9
    monitor-exit v1

    return-void

    .line 411
    :cond_b
    if-eqz p1, :cond_1e

    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    const/16 v2, 0x3e8

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampHz(II)I

    move-result v2

    aput v2, v0, p0

    .line 413
    :goto_17
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1b

    goto :goto_9

    .line 410
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 412
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
    .line 367
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    move-result v0

    if-nez v0, :cond_b

    .line 371
    :goto_9
    monitor-exit v1

    return-void

    .line 368
    :cond_b
    if-eqz p1, :cond_1c

    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChWave(I)I

    move-result v2

    aput v2, v0, p0

    .line 370
    :goto_15
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_9

    .line 367
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 369
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
    .line 356
    const-class v0, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChWidth(IZI)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 357
    monitor-exit v0

    return-void

    .line 356
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setChWidth(IZI)V
    .registers 6

    .prologue
    .line 360
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    move-result v0

    if-nez v0, :cond_b

    .line 364
    :goto_9
    monitor-exit v1

    return-void

    .line 361
    :cond_b
    if-eqz p1, :cond_1c

    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWidth(I)I

    move-result v2

    aput v2, v0, p0

    .line 363
    :goto_15
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_9

    .line 360
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 362
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
    .line 454
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGain(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 455
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 456
    monitor-exit v1

    return-void

    .line 454
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setGroup(II)V
    .registers 5

    .prologue
    .line 344
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v0

    if-nez v0, :cond_b

    .line 347
    :goto_9
    monitor-exit v1

    return-void

    .line 345
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGroup(I)I

    move-result v2

    aput v2, v0, p0

    .line 346
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_9

    .line 344
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setName(ILjava/lang/String;)V
    .registers 6

    .prologue
    const/16 v3, 0x18

    .line 332
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_19

    move-result v0

    if-nez v0, :cond_d

    .line 335
    :goto_b
    monitor-exit v1

    return-void

    .line 333
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    if-nez p1, :cond_1c

    const-string p1, ""

    :cond_13
    :goto_13
    aput-object p1, v0, p0

    .line 334
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_b

    .line 332
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 333
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
    .line 338
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hidden(I)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    move-result v0

    if-eqz v0, :cond_11

    .line 341
    :cond_f
    :goto_f
    monitor-exit v1

    return-void

    .line 339
    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampSlider(I)I

    move-result v2

    aput v2, v0, p0

    .line 340
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1d

    goto :goto_f

    .line 338
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSync(Z)V
    .registers 3

    .prologue
    .line 374
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    sput-boolean p0, Lcom/isaigu/gymapp/bodytech/BtSettings;->sync:Z

    .line 375
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 376
    monitor-exit v1

    return-void

    .line 374
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setUnlimited(Z)V
    .registers 3

    .prologue
    .line 379
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    sput-boolean p0, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 380
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 381
    monitor-exit v1

    return-void

    .line 379
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setWave(I)V
    .registers 3

    .prologue
    .line 449
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWave(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 451
    monitor-exit v1

    return-void

    .line 449
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized slider(I)I
    .registers 3

    .prologue
    .line 269
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
    .line 316
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

.method public static declared-synchronized sortLeftToRight()V
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v9, 0x8

    .line 418
    const-class v5, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v5

    const/16 v0, 0x9

    :try_start_9
    new-array v6, v0, [I

    move v4, v2

    .line 419
    :goto_c
    if-gt v4, v9, :cond_2d

    .line 420
    const/16 v0, 0x64

    move v1, v3

    .line 421
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

    .line 422
    :cond_24
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v4

    aput v0, v6, v4

    .line 419
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_c

    :cond_2d
    move v0, v3

    .line 424
    :goto_2e
    if-ge v0, v9, :cond_39

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    add-int/lit8 v3, v0, 0x1

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_39
    move v1, v2

    .line 425
    :goto_3a
    if-ge v1, v9, :cond_65

    .line 426
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v2, v0, v1

    .line 427
    add-int/lit8 v0, v1, -0x1

    .line 428
    :goto_42
    if-ltz v0, :cond_5b

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v3, v3, v0

    aget v3, v6, v3

    aget v4, v6, v2

    if-le v3, v4, :cond_5b

    .line 429
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    add-int/lit8 v4, v0, 0x1

    sget-object v7, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v7, v7, v0

    aput v7, v3, v4

    .line 430
    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    .line 432
    :cond_5b
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    add-int/lit8 v0, v0, 0x1

    aput v2, v3, v0

    .line 425
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3a

    .line 434
    :cond_65
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_68
    .catchall {:try_start_9 .. :try_end_68} :catchall_6a

    .line 435
    monitor-exit v5

    return-void

    .line 418
    :catchall_6a
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static declared-synchronized sync()Z
    .registers 2

    .prologue
    .line 300
    const-class v0, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->sync:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unlimited()Z
    .registers 2

    .prologue
    .line 298
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

    .line 478
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
    .line 273
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
    .line 294
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWave(IZ)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e

    move-result v0

    .line 295
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

    .line 294
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
