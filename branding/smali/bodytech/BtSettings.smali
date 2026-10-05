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

.field static final PREFS:Ljava/lang/String; = "xems_bodytech"

.field public static final ROW_ORDER:[I

.field public static final SLIDERS:[Ljava/lang/String;

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

    .line 23
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

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_da

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->ROW_ORDER:[I

    .line 31
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

    const-string v2, "\u0413\u044a\u0440\u0434\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0420\u044a\u0446\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0411\u0435\u0434\u0440\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u041a\u043e\u0440\u0435\u043c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    .line 33
    new-array v0, v3, [I

    fill-array-data v0, :array_f2

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    .line 36
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u0418 \u0434\u0432\u0430\u0442\u0430"

    aput-object v1, v0, v5

    const-string v1, "\u041e\u0441\u043d\u043e\u0432\u0435\u043d"

    aput-object v1, v0, v4

    const-string v1, "\u0412\u0442\u043e\u0440\u0438"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->GROUPS:[Ljava/lang/String;

    .line 39
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

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    .line 44
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    .line 45
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 47
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    .line 51
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    .line 52
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    .line 53
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    .line 55
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    .line 56
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    .line 58
    sput-boolean v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 59
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    .line 60
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    return-void

    .line 28
    :array_da
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

    .line 33
    :array_f2
    .array-data 4
        -0x1
        0x7
        0x8
        0x5
        0x6
        0x0
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
    .line 159
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
    .line 183
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
    .line 170
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
    .line 162
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
    .line 165
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
    .line 187
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

    .line 200
    const-class v4, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v4

    move v3, v2

    move v0, v1

    .line 201
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

    .line 202
    :cond_16
    new-array v3, v0, [I

    .line 204
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

    .line 205
    :cond_28
    monitor-exit v4

    return-object v3

    .line 200
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
    .line 350
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
    .line 360
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
    .line 362
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
    .line 356
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
    .line 348
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
    .line 354
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
    .line 358
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
    .line 346
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
    .line 275
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_30

    move-result v0

    if-nez v0, :cond_b

    .line 281
    :goto_9
    monitor-exit v1

    return-void

    .line 276
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    const/16 v2, 0x64

    aput v2, v0, p0

    .line 277
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    const/4 v3, 0x0

    aput v3, v2, p0

    aput v3, v0, p0

    .line 278
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    const/4 v3, 0x0

    aput v3, v2, p0

    aput v3, v0, p0

    .line 279
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    const/4 v3, -0x1

    aput v3, v2, p0

    aput v3, v0, p0

    .line 280
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_30

    goto :goto_9

    .line 275
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized copyToAll(I)V
    .registers 5

    .prologue
    .line 259
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4e

    move-result v0

    if-nez v0, :cond_b

    .line 271
    :goto_9
    monitor-exit v1

    return-void

    .line 260
    :cond_b
    const/4 v0, 0x1

    :goto_c
    const/16 v2, 0x8

    if-gt v0, v2, :cond_51

    .line 261
    if-ne v0, p0, :cond_15

    .line 260
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 262
    :cond_15
    :try_start_15
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 263
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 264
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 265
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 266
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 267
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    aget v3, v3, p0

    aput v3, v2, v0

    .line 268
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    aget v3, v3, p0

    aput v3, v2, v0
    :try_end_4d
    .catchall {:try_start_15 .. :try_end_4d} :catchall_4e

    goto :goto_12

    .line 259
    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 270
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
    .line 156
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
    .line 152
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

.method public static declared-synchronized load(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v0, 0x1

    .line 70
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v2

    :try_start_6
    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1a4

    if-nez v1, :cond_c

    if-nez p0, :cond_e

    .line 92
    :cond_c
    :goto_c
    monitor-exit v2

    return-void

    .line 71
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    .line 72
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    const-string v3, "xems_bodytech"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move v1, v0

    .line 73
    :goto_1e
    if-gt v1, v7, :cond_85

    .line 74
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

    .line 75
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

    .line 76
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

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 78
    :cond_85
    :goto_85
    if-gt v0, v7, :cond_170

    .line 79
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

    .line 80
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

    .line 81
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

    .line 82
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

    .line 83
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

    .line 84
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

    .line 85
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

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_85

    .line 87
    :cond_170
    const-string v0, "unlimited"

    const/4 v1, 0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 88
    const-string v0, "order"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->loadOrder(Ljava/lang/String;)V

    .line 89
    const-string v0, "wave"

    const/4 v1, -0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWave(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 90
    const-string v0, "gain"

    const/16 v1, 0x64

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGain(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_1a2
    .catchall {:try_start_e .. :try_end_1a2} :catchall_1a4

    goto/16 :goto_c

    .line 70
    :catchall_1a4
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

    .line 335
    const/16 v0, 0x9

    new-array v4, v0, [Z

    .line 336
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_28

    move v0, v1

    :goto_11
    move v3, v2

    .line 337
    :goto_12
    if-eqz v0, :cond_2d

    if-ge v3, v7, :cond_2d

    .line 338
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    .line 339
    if-lt v5, v1, :cond_24

    if-gt v5, v7, :cond_24

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_2a

    :cond_24
    move v0, v2

    .line 337
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_28
    move v0, v2

    .line 336
    goto :goto_11

    .line 340
    :cond_2a
    aput-boolean v1, v4, v5

    goto :goto_25

    .line 342
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

    .line 343
    :cond_41
    return-void
.end method

.method public static declared-synchronized move(II)V
    .registers 8

    .prologue
    .line 313
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->positionOf(I)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_25

    move-result v0

    .line 314
    add-int v2, v0, p1

    .line 315
    if-ltz v2, :cond_f

    const/16 v3, 0x8

    if-lt v2, v3, :cond_11

    .line 320
    :cond_f
    :goto_f
    monitor-exit v1

    return-void

    .line 316
    :cond_11
    :try_start_11
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v3, v3, v0

    .line 317
    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v5, v5, v2

    aput v5, v4, v0

    .line 318
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aput v3, v0, v2

    .line 319
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_25

    goto :goto_f

    .line 313
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized name(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 145
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    .line 147
    :goto_b
    monitor-exit v1

    return-object v0

    .line 146
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 147
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

    .line 145
    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized positionOf(I)I
    .registers 4

    .prologue
    .line 190
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

    .line 191
    :goto_e
    monitor-exit v1

    return v0

    .line 190
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 191
    :cond_13
    add-int/lit8 v0, p0, -0x1

    goto :goto_e

    .line 190
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reset()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 122
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :goto_4
    const/16 v2, 0x8

    if-gt v0, v2, :cond_44

    .line 123
    :try_start_8
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 124
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 125
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 126
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    const/16 v3, 0x64

    aput v3, v2, v0

    .line 127
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 128
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 129
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveMain:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 130
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 131
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzMain:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 132
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 134
    :cond_44
    const-string v0, ""

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->loadOrder(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 136
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 137
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 138
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_58

    .line 139
    monitor-exit v1

    return-void

    .line 122
    :catchall_58
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static save()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v6, 0x8

    .line 95
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    if-nez v2, :cond_9

    .line 118
    :goto_8
    return-void

    .line 96
    :cond_9
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    const-string v3, "xems_bodytech"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move v2, v1

    .line 97
    :goto_16
    if-gt v2, v6, :cond_69

    .line 98
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

    .line 99
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

    .line 100
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

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 102
    :cond_69
    :goto_69
    if-gt v1, v6, :cond_125

    .line 103
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

    .line 104
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

    .line 105
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

    .line 106
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

    .line 107
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

    .line 108
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

    .line 109
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

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_69

    .line 111
    :cond_125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    :goto_12a
    if-ge v0, v6, :cond_136

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    .line 113
    :cond_136
    const-string v0, "order"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v0, "unlimited"

    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v0, "wave"

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v0, "gain"

    sget v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_8
.end method

.method public static declared-synchronized setChGain(II)V
    .registers 5

    .prologue
    .line 229
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v0

    if-nez v0, :cond_b

    .line 232
    :goto_9
    monitor-exit v1

    return-void

    .line 230
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain:[I

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChGain(I)I

    move-result v2

    aput v2, v0, p0

    .line 231
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_9

    .line 229
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setChHz(IZI)V
    .registers 6

    .prologue
    .line 284
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1b

    move-result v0

    if-nez v0, :cond_b

    .line 288
    :goto_9
    monitor-exit v1

    return-void

    .line 285
    :cond_b
    if-eqz p1, :cond_1e

    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHzSecond:[I

    const/16 v2, 0x3e8

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampHz(II)I

    move-result v2

    aput v2, v0, p0

    .line 287
    :goto_17
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1b

    goto :goto_9

    .line 284
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 286
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
    .line 246
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    move-result v0

    if-nez v0, :cond_b

    .line 250
    :goto_9
    monitor-exit v1

    return-void

    .line 247
    :cond_b
    if-eqz p1, :cond_1c

    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWaveSecond:[I

    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampChWave(I)I

    move-result v2

    aput v2, v0, p0

    .line 249
    :goto_15
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_9

    .line 246
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 248
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
    .line 235
    const-class v0, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChWidth(IZI)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 236
    monitor-exit v0

    return-void

    .line 235
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setChWidth(IZI)V
    .registers 6

    .prologue
    .line 239
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    move-result v0

    if-nez v0, :cond_b

    .line 243
    :goto_9
    monitor-exit v1

    return-void

    .line 240
    :cond_b
    if-eqz p1, :cond_1c

    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidthSecond:[I

    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWidth(I)I

    move-result v2

    aput v2, v0, p0

    .line 242
    :goto_15
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_9

    .line 239
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 241
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
    .line 328
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGain(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 329
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 330
    monitor-exit v1

    return-void

    .line 328
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setGroup(II)V
    .registers 5

    .prologue
    .line 223
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v0

    if-nez v0, :cond_b

    .line 226
    :goto_9
    monitor-exit v1

    return-void

    .line 224
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGroup(I)I

    move-result v2

    aput v2, v0, p0

    .line 225
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_9

    .line 223
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setName(ILjava/lang/String;)V
    .registers 6

    .prologue
    const/16 v3, 0x18

    .line 211
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_19

    move-result v0

    if-nez v0, :cond_d

    .line 214
    :goto_b
    monitor-exit v1

    return-void

    .line 212
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    if-nez p1, :cond_1c

    const-string p1, ""

    :cond_13
    :goto_13
    aput-object p1, v0, p0

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_b

    .line 211
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 212
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
    .line 217
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v0

    if-nez v0, :cond_b

    .line 220
    :goto_9
    monitor-exit v1

    return-void

    .line 218
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampSlider(I)I

    move-result v2

    aput v2, v0, p0

    .line 219
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_9

    .line 217
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setUnlimited(Z)V
    .registers 3

    .prologue
    .line 253
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    sput-boolean p0, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited:Z

    .line 254
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 255
    monitor-exit v1

    return-void

    .line 253
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setWave(I)V
    .registers 3

    .prologue
    .line 323
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWave(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 324
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 325
    monitor-exit v1

    return-void

    .line 323
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized slider(I)I
    .registers 3

    .prologue
    .line 150
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
    .line 195
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

    .line 292
    const-class v5, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v5

    const/16 v0, 0x9

    :try_start_9
    new-array v6, v0, [I

    move v4, v2

    .line 293
    :goto_c
    if-gt v4, v9, :cond_2d

    .line 294
    const/16 v0, 0x64

    move v1, v3

    .line 295
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

    .line 296
    :cond_24
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v4

    aput v0, v6, v4

    .line 293
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_c

    :cond_2d
    move v0, v3

    .line 298
    :goto_2e
    if-ge v0, v9, :cond_39

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    add-int/lit8 v3, v0, 0x1

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_39
    move v1, v2

    .line 299
    :goto_3a
    if-ge v1, v9, :cond_65

    .line 300
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v2, v0, v1

    .line 301
    add-int/lit8 v0, v1, -0x1

    .line 302
    :goto_42
    if-ltz v0, :cond_5b

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v3, v3, v0

    aget v3, v6, v3

    aget v4, v6, v2

    if-le v3, v4, :cond_5b

    .line 303
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    add-int/lit8 v4, v0, 0x1

    sget-object v7, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    aget v7, v7, v0

    aput v7, v3, v4

    .line 304
    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    .line 306
    :cond_5b
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->order:[I

    add-int/lit8 v0, v0, 0x1

    aput v2, v3, v0

    .line 299
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3a

    .line 308
    :cond_65
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_68
    .catchall {:try_start_9 .. :try_end_68} :catchall_6a

    .line 309
    monitor-exit v5

    return-void

    .line 292
    :catchall_6a
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static declared-synchronized unlimited()Z
    .registers 2

    .prologue
    .line 179
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

    .line 352
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
    .line 154
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
    .line 175
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWave(IZ)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e

    move-result v0

    .line 176
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

    .line 175
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
