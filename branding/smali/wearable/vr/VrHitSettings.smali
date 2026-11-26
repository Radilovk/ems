.class public final Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;
.super Ljava/lang/Object;
.source "VrHitSettings.java"


# static fields
.field public static final FEEL_CLICK:I = 0x1

.field public static final FEEL_HIT:I = 0x0

.field public static final FEEL_STAB:I = 0x2

.field private static final PREFS:Ljava/lang/String; = "xems_vr_hit"

.field private static volatile depth:I

.field private static volatile hz:I

.field private static loaded:Z

.field private static volatile mFeel:I

.field private static volatile mLevel:I

.field private static volatile mMs:I

.field private static volatile pct:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->pct:I

    .line 20
    const/16 v0, 0x18

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mLevel:I

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mFeel:I

    .line 22
    const/16 v0, 0x28

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mMs:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clamp(III)I
    .registers 4

    .prologue
    .line 97
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static clampDepth(I)I
    .registers 4

    .prologue
    .line 67
    if-gtz p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    add-int/lit8 v0, p0, 0x19

    div-int/lit8 v0, v0, 0x32

    mul-int/lit8 v0, v0, 0x32

    const/16 v1, 0x32

    const/16 v2, 0x190

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clamp(III)I

    move-result v0

    goto :goto_3
.end method

.method static clampHz(I)I
    .registers 3

    .prologue
    .line 62
    if-gtz p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    const/16 v1, 0x78

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clamp(III)I

    move-result v0

    goto :goto_3
.end method

.method public static depth()I
    .registers 1

    .prologue
    .line 48
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->depth:I

    return v0
.end method

.method public static hz()I
    .registers 1

    .prologue
    .line 47
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->hz:I

    return v0
.end method

.method public static declared-synchronized load(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 28
    const-class v1, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->loaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_82

    if-nez v0, :cond_9

    if-nez p0, :cond_b

    .line 44
    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    .line 32
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "xems_vr_hit"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    const-string v2, "pct"

    const/16 v3, 0x64

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clamp(III)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->pct:I

    .line 34
    const-string v2, "hz"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clampHz(I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->hz:I

    .line 35
    const-string v2, "depth"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clampDepth(I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->depth:I

    .line 36
    const-string v2, "mlevel"

    const/16 v3, 0x18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x19

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clamp(III)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mLevel:I

    .line 37
    const-string v2, "mfeel"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clamp(III)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mFeel:I

    .line 38
    const-string v2, "mms"

    const/16 v3, 0x28

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xa

    const/16 v3, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mMs:I

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->loaded:Z

    .line 40
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->push()V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_7a} :catch_7b
    .catchall {:try_start_b .. :try_end_7a} :catchall_82

    goto :goto_9

    .line 41
    :catch_7b
    move-exception v0

    .line 42
    :try_start_7c
    const-string v2, "VrHitSettings.load"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_82

    goto :goto_9

    .line 28
    :catchall_82
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static mastogoFeel()I
    .registers 1

    .prologue
    .line 50
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mFeel:I

    return v0
.end method

.method public static mastogoLevel()I
    .registers 1

    .prologue
    .line 49
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mLevel:I

    return v0
.end method

.method public static mastogoMs()I
    .registers 1

    .prologue
    .line 51
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mMs:I

    return v0
.end method

.method public static nextHz(II)I
    .registers 4

    .prologue
    const/4 v0, 0x5

    .line 72
    if-lez p1, :cond_f

    .line 73
    if-gtz p0, :cond_6

    .line 75
    :goto_5
    return v0

    .line 73
    :cond_6
    const/16 v0, 0x78

    add-int/lit8 v1, p0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    .line 75
    :cond_f
    if-gt p0, v0, :cond_13

    const/4 v0, 0x0

    goto :goto_5

    :cond_13
    add-int/lit8 v0, p0, -0x5

    goto :goto_5
.end method

.method public static pct()I
    .registers 1

    .prologue
    .line 46
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->pct:I

    return v0
.end method

.method private static push()V
    .registers 1

    .prologue
    .line 79
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->hz:I

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitParams;->hz:I

    .line 80
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->depth:I

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitParams;->width:I

    .line 81
    return-void
.end method

.method private static save(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->push()V

    .line 86
    if-eqz p0, :cond_47

    .line 87
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_vr_hit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pct"

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->pct:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hz"

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->hz:I

    .line 88
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "depth"

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->depth:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mlevel"

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mfeel"

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mFeel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mms"

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mMs:I

    .line 89
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_47} :catch_48

    .line 94
    :cond_47
    :goto_47
    return-void

    .line 91
    :catch_48
    move-exception v0

    .line 92
    const-string v1, "VrHitSettings.save"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47
.end method

.method public static setDepth(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 55
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clampDepth(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->depth:I

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->save(Landroid/content/Context;)V

    return-void
.end method

.method public static setHz(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 54
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clampHz(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->hz:I

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->save(Landroid/content/Context;)V

    return-void
.end method

.method public static setMastogoFeel(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mFeel:I

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->save(Landroid/content/Context;)V

    return-void
.end method

.method public static setMastogoLevel(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 56
    const/4 v0, 0x1

    const/16 v1, 0x19

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mLevel:I

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->save(Landroid/content/Context;)V

    return-void
.end method

.method public static setMastogoMs(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 58
    const/16 v0, 0xa

    const/16 v1, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mMs:I

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->save(Landroid/content/Context;)V

    return-void
.end method

.method public static setPct(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 53
    const/16 v0, 0xa

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->pct:I

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->save(Landroid/content/Context;)V

    return-void
.end method
