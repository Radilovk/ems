.class public final Lcom/isaigu/gymapp/bodytech/BtSettings;
.super Ljava/lang/Object;
.source "BtSettings.java"


# static fields
.field public static final CHANNELS:I = 0x8

.field static final DEFAULT_NAMES:[Ljava/lang/String;

.field static final DEFAULT_SLIDER:[I

.field public static final GAIN_MAX:I = 0x96

.field public static final GAIN_MIN:I = 0x32

.field public static final GROUPS:[Ljava/lang/String;

.field public static final GROUP_BOTH:I = 0x0

.field public static final GROUP_MAIN:I = 0x1

.field public static final GROUP_SECOND:I = 0x2

.field public static final NO_SLIDER:I = -0x1

.field static final PREFS:Ljava/lang/String; = "xems_bodytech"

.field public static final SLIDERS:[Ljava/lang/String;

.field public static final WAVES:[Ljava/lang/String;

.field public static final WAVE_SUIT:I = -0x1

.field static app:Landroid/content/Context;

.field static gain:I

.field static final group:[I

.field static loaded:Z

.field static final names:[Ljava/lang/String;

.field static final slider:[I

.field static wave:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 23
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0413\u044a\u0440\u0434\u0438"

    aput-object v1, v0, v4

    const-string v1, "\u041a\u043e\u0440\u0435\u043c"

    aput-object v1, v0, v5

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
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\u041a\u0440\u044a\u0441\u0442"

    aput-object v1, v0, v5

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

    .line 30
    new-array v0, v3, [I

    fill-array-data v0, :array_ae

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    .line 33
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u0418 \u0434\u0432\u0430\u0442\u0430"

    aput-object v1, v0, v4

    const-string v1, "\u041e\u0441\u043d\u043e\u0432\u0435\u043d"

    aput-object v1, v0, v5

    const-string v1, "\u0412\u0442\u043e\u0440\u0438"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->GROUPS:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u041d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430"

    aput-object v1, v0, v4

    const-string v1, "\u041a\u0432\u0430\u0434\u0440\u0430\u0442"

    aput-object v1, v0, v5

    const-string v1, "\u0421\u0438\u043d\u0443\u0441"

    aput-object v1, v0, v6

    const-string v1, "\u0422\u0440\u0430\u043f\u0435\u0446"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0422\u0440\u0430\u043f\u0435\u0446 2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    .line 40
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    .line 42
    new-array v0, v3, [I

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 44
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    return-void

    .line 30
    nop

    :array_ae
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

.method public static declared-synchronized channelsOf(I)[I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    const-class v4, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v4

    move v3, v2

    move v0, v1

    .line 112
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

    .line 113
    :cond_16
    new-array v3, v0, [I

    .line 115
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

    .line 116
    :cond_28
    monitor-exit v4

    return-object v3

    .line 111
    :catchall_2a
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2d
    move v0, v1

    goto :goto_24
.end method

.method static clampGain(I)I
    .registers 3

    .prologue
    .line 159
    const/16 v0, 0x32

    const/16 v1, 0x96

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static clampGroup(I)I
    .registers 2

    .prologue
    .line 155
    if-ltz p0, :cond_6

    const/4 v0, 0x2

    if-gt p0, v0, :cond_6

    :goto_5
    return p0

    :cond_6
    const/4 p0, 0x0

    goto :goto_5
.end method

.method static clampSlider(I)I
    .registers 2

    .prologue
    .line 153
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
    .line 157
    if-ltz p0, :cond_6

    const/4 v0, 0x3

    if-gt p0, v0, :cond_6

    :goto_5
    return p0

    :cond_6
    const/4 p0, -0x1

    goto :goto_5
.end method

.method public static declared-synchronized gain()I
    .registers 2

    .prologue
    .line 103
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
    .line 99
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
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 50
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_4
    sget-boolean v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_a4

    if-nez v2, :cond_a

    if-nez p0, :cond_c

    .line 61
    :cond_a
    :goto_a
    monitor-exit v1

    return-void

    .line 51
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    .line 52
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    const-string v3, "xems_bodytech"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 53
    :goto_1b
    const/16 v3, 0x8

    if-gt v0, v3, :cond_84

    .line 54
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 55
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    aget v5, v5, v0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampSlider(I)I

    move-result v4

    aput v4, v3, v0

    .line 56
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGroup(I)I

    move-result v4

    aput v4, v3, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 58
    :cond_84
    const-string v0, "wave"

    const/4 v3, -0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWave(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 59
    const-string v0, "gain"

    const/16 v3, 0x64

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGain(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->loaded:Z
    :try_end_a2
    .catchall {:try_start_c .. :try_end_a2} :catchall_a4

    goto/16 :goto_a

    .line 50
    :catchall_a4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized name(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 92
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    .line 94
    :goto_b
    monitor-exit v1

    return-object v0

    .line 93
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 94
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

    .line 92
    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reset()V
    .registers 4

    .prologue
    .line 78
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    const/4 v0, 0x1

    :goto_4
    const/16 v2, 0x8

    if-gt v0, v2, :cond_20

    .line 79
    :try_start_8
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 80
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->DEFAULT_SLIDER:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 81
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 83
    :cond_20
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 84
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 85
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2c

    .line 86
    monitor-exit v1

    return-void

    .line 78
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static save()V
    .registers 4

    .prologue
    .line 64
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 74
    :goto_4
    return-void

    .line 65
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->app:Landroid/content/Context;

    const-string v1, "xems_bodytech"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 66
    const/4 v0, 0x1

    :goto_13
    const/16 v2, 0x8

    if-gt v0, v2, :cond_68

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    aget v3, v3, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    aget v3, v3, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 71
    :cond_68
    const-string v0, "wave"

    sget v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    const-string v0, "gain"

    sget v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4
.end method

.method public static declared-synchronized setGain(I)V
    .registers 3

    .prologue
    .line 145
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGain(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain:I

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 147
    monitor-exit v1

    return-void

    .line 145
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setGroup(II)V
    .registers 5

    .prologue
    .line 134
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v0

    if-nez v0, :cond_b

    .line 137
    :goto_9
    monitor-exit v1

    return-void

    .line 135
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->group:[I

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampGroup(I)I

    move-result v2

    aput v2, v0, p0

    .line 136
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_9

    .line 134
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setName(ILjava/lang/String;)V
    .registers 6

    .prologue
    const/16 v3, 0x18

    .line 122
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_19

    move-result v0

    if-nez v0, :cond_d

    .line 125
    :goto_b
    monitor-exit v1

    return-void

    .line 123
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->names:[Ljava/lang/String;

    if-nez p1, :cond_1c

    const-string p1, ""

    :cond_13
    :goto_13
    aput-object p1, v0, p0

    .line 124
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_b

    .line 122
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 123
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
    .line 128
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->valid(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v0

    if-nez v0, :cond_b

    .line 131
    :goto_9
    monitor-exit v1

    return-void

    .line 129
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider:[I

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampSlider(I)I

    move-result v2

    aput v2, v0, p0

    .line 130
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_9

    .line 128
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setWave(I)V
    .registers 3

    .prologue
    .line 140
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtSettings;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->clampWave(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave:I

    .line 141
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->save()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 142
    monitor-exit v1

    return-void

    .line 140
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized slider(I)I
    .registers 3

    .prologue
    .line 97
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
    .line 106
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

.method static valid(I)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 151
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
    .line 101
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
