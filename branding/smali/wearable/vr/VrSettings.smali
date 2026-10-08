.class public final Lcom/isaigu/gymapp/wearable/vr/VrSettings;
.super Ljava/lang/Object;
.source "VrSettings.java"


# static fields
.field public static final CHANNELS:I = 0xa

.field public static final DEFAULT_FLOOR:I = 0x14

.field public static final DEFAULT_ZONES:I = 0xe8

.field public static final FLOOR_MAX:I = 0x5a

.field private static final K_FLOOR:Ljava/lang/String; = "floor"

.field private static final K_SENS:Ljava/lang/String; = "sensitivity"

.field private static final K_SMOOTH:Ljava/lang/String; = "smooth"

.field private static final K_ZONES:Ljava/lang/String; = "zones"

.field private static final PREFS:Ljava/lang/String; = "xems_vr"

.field public static final SENS_ALL:I = 0x2

.field public static final SENS_NORMAL:I = 0x1

.field public static final SENS_STRONG:I = 0x0

.field public static final SMOOTHNESS:[I

.field public static final SMOOTH_NORMAL:I = 0x1

.field private static volatile floor:I

.field private static loaded:Z

.field private static volatile paused:Z

.field private static volatile sensitivity:I

.field private static volatile smooth:I

.field private static volatile zones:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->SMOOTHNESS:[I

    .line 37
    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity:I

    .line 38
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floor:I

    .line 39
    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->smooth:I

    .line 40
    const/16 v0, 0xe8

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->zones:I

    return-void

    .line 20
    :array_16
    .array-data 4
        0x0
        0x14
        0x32
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clamp(III)I
    .registers 4

    .prologue
    .line 144
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static floorPercent()I
    .registers 1

    .prologue
    .line 68
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floor:I

    return v0
.end method

.method public static isDefault()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 88
    sget v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity:I

    if-ne v1, v0, :cond_16

    sget v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floor:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_16

    sget v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->smooth:I

    if-ne v1, v0, :cond_16

    sget v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->zones:I

    const/16 v2, 0xe8

    if-ne v1, v2, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isPaused()Z
    .registers 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->paused:Z

    return v0
.end method

.method public static declared-synchronized load(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 47
    const-class v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->loaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5e

    if-nez v0, :cond_9

    if-nez p0, :cond_b

    .line 61
    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    .line 51
    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    const-string v2, "sensitivity"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->clamp(III)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity:I

    .line 53
    const-string v2, "floor"

    const/16 v3, 0x14

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x5a

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->clamp(III)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floor:I

    .line 54
    const-string v2, "smooth"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->SMOOTHNESS:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->clamp(III)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->smooth:I

    .line 55
    const-string v2, "zones"

    const/16 v3, 0xe8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->zones:I

    .line 56
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->setPreset(I)V

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->loaded:Z
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_56} :catch_57
    .catchall {:try_start_b .. :try_end_56} :catchall_5e

    goto :goto_9

    .line 58
    :catch_57
    move-exception v0

    .line 59
    :try_start_58
    const-string v2, "VrSettings.load"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_5e

    goto :goto_9

    .line 47
    :catchall_5e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_vr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static reset(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 119
    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity:I

    .line 120
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floor:I

    .line 121
    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->smooth:I

    .line 122
    const/16 v0, 0xe8

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->zones:I

    .line 123
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->setPreset(I)V

    .line 124
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->save(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public static rests(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 80
    sget v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->zones:I

    shl-int v2, v0, p0

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static save(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 129
    if-eqz p0, :cond_2d

    .line 130
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sensitivity"

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "floor"

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "smooth"

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->smooth:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zones"

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->zones:I

    .line 131
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_31

    .line 136
    :cond_2d
    :goto_2d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->onSettingsChanged()V

    .line 137
    return-void

    .line 133
    :catch_31
    move-exception v0

    .line 134
    const-string v1, "VrSettings.save"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method public static sensitivity()I
    .registers 1

    .prologue
    .line 64
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity:I

    return v0
.end method

.method public static setFloorPercent(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 98
    const/4 v0, 0x0

    const/16 v1, 0x5a

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floor:I

    .line 99
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->save(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public static setPaused(Landroid/content/Context;Z)V
    .registers 2

    .prologue
    .line 113
    sput-boolean p1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->paused:Z

    .line 114
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->onSettingsChanged()V

    .line 115
    return-void
.end method

.method public static setRests(Landroid/content/Context;IZ)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 108
    if-eqz p2, :cond_d

    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->zones:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    :goto_7
    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->zones:I

    .line 109
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->save(Landroid/content/Context;)V

    .line 110
    return-void

    .line 108
    :cond_d
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->zones:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    goto :goto_7
.end method

.method public static setSensitivity(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity:I

    .line 93
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->setPreset(I)V

    .line 94
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->save(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public static setSmoothIndex(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 103
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->SMOOTHNESS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->smooth:I

    .line 104
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->save(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public static smoothIndex()I
    .registers 1

    .prologue
    .line 72
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->smooth:I

    return v0
.end method

.method public static smoothness()I
    .registers 2

    .prologue
    .line 76
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->SMOOTHNESS:[I

    sget v1, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->smooth:I

    aget v0, v0, v1

    return v0
.end method
