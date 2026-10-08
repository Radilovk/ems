.class public final Lcom/isaigu/gymapp/wearable/vr/VrDrive;
.super Ljava/lang/Object;
.source "VrDrive.java"


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static final RISE_TIME_MAX_MS:I = 0x258

.field private static final TICK:Lcom/isaigu/gymapp/wearable/vr/VrMainCall;

.field static final TICK_MS:J = 0xaL

.field private static final UI_INTERVAL_MS:J = 0x50L

.field private static app:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static driving:Z

.field private static lastSent:I

.field private static lastUiMs:J

.field private static linked:Z

.field private static volatile liveApplied:I

.field private static volatile liveLevel:I

.field private static savedFloor:I

.field private static slewLastMs:J

.field private static slewLevel:F

.field private static yieldedToMusic:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->MAIN:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v3, v1}, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->TICK:Lcom/isaigu/gymapp/wearable/vr/VrMainCall;

    .line 38
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->app:Ljava/lang/String;

    .line 39
    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->lastSent:I

    .line 44
    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->savedFloor:I

    .line 47
    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->liveApplied:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 226
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->linked:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->app:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method private static engage(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 166
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->savedFloor:I

    .line 168
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floorPercent()I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 169
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setSyncActive(Z)V

    .line 170
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 171
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 172
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->lastSent:I

    .line 173
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->slewLevel:F

    .line 174
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->slewLastMs:J

    .line 175
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->driving:Z

    .line 176
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrZones;->engage(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 177
    return-void
.end method

.method public static hitsDropped()I
    .registers 1

    .prologue
    .line 251
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->dropped:I

    return v0
.end method

.method public static hitsPassed()I
    .registers 1

    .prologue
    .line 247
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->passed:I

    return v0
.end method

.method public static isDriving()Z
    .registers 1

    .prologue
    .line 221
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->driving:Z

    return v0
.end method

.method public static isLinked()Z
    .registers 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->linked:Z

    return v0
.end method

.method public static isYieldedToMusic()Z
    .registers 1

    .prologue
    .line 243
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->linked:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->yieldedToMusic:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static limitRise(I)I
    .registers 11

    .prologue
    const/4 v2, 0x1

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 204
    sget-wide v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->slewLastMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_44

    const-wide/16 v0, 0xa

    .line 205
    :goto_f
    sput-wide v4, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->slewLastMs:J

    .line 206
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->smoothness()I

    move-result v3

    mul-int/lit16 v3, v3, 0x258

    div-int/lit8 v3, v3, 0x64

    .line 207
    if-lez v3, :cond_49

    int-to-float v4, p0

    sget v5, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->slewLevel:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_49

    .line 208
    int-to-float v4, p0

    sget v5, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->slewLevel:F

    const/high16 v6, 0x42c80000    # 100.0f

    const-wide/16 v8, 0x1

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, v6

    int-to-float v1, v3

    div-float/2addr v0, v1

    add-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->slewLevel:F

    .line 212
    :goto_38
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 213
    if-lez p0, :cond_43

    if-ge v0, v2, :cond_43

    move v0, v2

    :cond_43
    return v0

    .line 204
    :cond_44
    sget-wide v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->slewLastMs:J

    sub-long v0, v4, v0

    goto :goto_f

    .line 210
    :cond_49
    int-to-float v0, p0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->slewLevel:F

    goto :goto_38
.end method

.method static link(ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 84
    :try_start_0
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->linked:Z

    if-ne p0, v0, :cond_5

    .line 103
    :goto_4
    return-void

    .line 87
    :cond_5
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->linked:Z

    .line 88
    if-eqz p1, :cond_64

    :goto_9
    sput-object p1, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->app:Ljava/lang/String;

    .line 89
    const-string v1, "vr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_67

    const-string v0, "link up "

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->app:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-eqz p0, :cond_6a

    .line 91
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->TICK:Lcom/isaigu/gymapp/wearable/vr/VrMainCall;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->TICK:Lcom/isaigu/gymapp/wearable/vr/VrMainCall;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VR \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d: "

    const-string v2, "VR connected: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->app:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->shortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->toast(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->onVrLinked()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5c} :catch_5d

    goto :goto_4

    .line 100
    :catch_5d
    move-exception v0

    .line 101
    const-string v1, "VrDrive.link"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 88
    :cond_64
    :try_start_64
    const-string p1, ""

    goto :goto_9

    .line 89
    :cond_67
    const-string v0, "link down "

    goto :goto_16

    .line 96
    :cond_6a
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->TICK:Lcom/isaigu/gymapp/wearable/vr/VrMainCall;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->release()V

    .line 98
    const-string v0, "VR \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u0441\u043f\u0440\u044f"

    const-string v1, "VR disconnected"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->toast(Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_7f} :catch_5d

    goto :goto_4
.end method

.method public static liveApplied()I
    .registers 1

    .prologue
    .line 238
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->liveApplied:I

    return v0
.end method

.method public static liveLevel()I
    .registers 1

    .prologue
    .line 234
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->driving:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->liveLevel:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static onSettingsChanged()V
    .registers 5

    .prologue
    .line 58
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_18

    .line 59
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;-><init>(IZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_17
    :goto_17
    return-void

    .line 63
    :cond_18
    :try_start_18
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->driving:Z

    if-eqz v0, :cond_17

    .line 66
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 67
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->release()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_25} :catch_26

    goto :goto_17

    .line 72
    :catch_26
    move-exception v0

    .line 73
    const-string v1, "VrDrive.settings"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 70
    :cond_2d
    :try_start_2d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floorPercent()I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrZones;->reapply()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_37} :catch_26

    goto :goto_17
.end method

.method public static onTrainingStopped()V
    .registers 2

    .prologue
    .line 107
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->stop(I)V

    .line 108
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->driving:Z

    if-eqz v0, :cond_d

    .line 109
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->release()V

    .line 111
    :cond_d
    return-void
.end method

.method static postLink(ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 79
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;-><init>(IZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method private static release()V
    .registers 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 181
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->driving:Z

    if-nez v0, :cond_7

    .line 199
    :goto_6
    return-void

    .line 184
    :cond_7
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->driving:Z

    .line 185
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrZones;->release()V

    .line 186
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->savedFloor:I

    if-ltz v0, :cond_17

    .line 187
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->savedFloor:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 188
    sput v3, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->savedFloor:I

    .line 190
    :cond_17
    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->liveLevel:I

    .line 191
    sput v3, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->liveApplied:I

    .line 192
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    .line 193
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->sendImpulseLevel(I)V

    .line 194
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setSyncActive(Z)V

    .line 195
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 196
    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZ)V

    .line 197
    sput v3, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->lastSent:I

    .line 198
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->slewLevel:F

    goto :goto_6
.end method

.method static setContext(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 52
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_6
    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->context:Landroid/content/Context;

    .line 53
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->load(Landroid/content/Context;)V

    .line 54
    return-void

    .line 52
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static shortAppName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 230
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->appName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->shortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static shortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 255
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 256
    if-ltz v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_16

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_16
    return-object p0
.end method

.method private static step()V
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 127
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v4

    .line 128
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 129
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->driving:Z

    if-eqz v0, :cond_17

    .line 130
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->release()V

    .line 132
    :cond_17
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->yieldedToMusic:Z

    if-nez v0, :cond_28

    .line 133
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->yieldedToMusic:Z

    .line 134
    const-string v0, "VR \u0447\u0430\u043a\u0430 \u2014 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v1, "VR waits \u2014 music drives the strength"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->toast(Ljava/lang/String;)V

    .line 162
    :cond_28
    :goto_28
    return-void

    .line 138
    :cond_29
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->yieldedToMusic:Z

    .line 139
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->isPaused()Z

    move-result v5

    if-nez v5, :cond_3d

    if-eqz v4, :cond_3d

    iget-object v5, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v5, :cond_3d

    iget-object v5, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v5, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v5, :cond_45

    .line 140
    :cond_3d
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->driving:Z

    if-eqz v0, :cond_28

    .line 141
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->release()V

    goto :goto_28

    .line 145
    :cond_45
    sget-boolean v5, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->driving:Z

    if-nez v5, :cond_4c

    .line 146
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->engage(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 148
    :cond_4c
    sget-object v5, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->level(J)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 149
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->limitRise(I)I

    move-result v3

    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v3

    .line 150
    sput v2, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->liveLevel:I

    .line 151
    sput v3, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->liveApplied:I

    .line 152
    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->lastSent:I

    if-eq v3, v2, :cond_28

    invoke-virtual {v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->isSenderBusy()Z

    move-result v2

    if-nez v2, :cond_28

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 156
    sget-wide v6, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->lastUiMs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x50

    cmp-long v2, v6, v8

    if-ltz v2, :cond_7e

    move v0, v1

    .line 157
    :cond_7e
    if-eqz v0, :cond_82

    .line 158
    sput-wide v4, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->lastUiMs:J

    .line 160
    :cond_82
    invoke-static {v3, v0, v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZ)V

    .line 161
    sput v3, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->lastSent:I

    goto :goto_28
.end method

.method static tick()V
    .registers 4

    .prologue
    .line 114
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->linked:Z

    if-nez v0, :cond_5

    .line 123
    :goto_4
    return-void

    .line 118
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->step()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_12

    .line 122
    :goto_8
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->TICK:Lcom/isaigu/gymapp/wearable/vr/VrMainCall;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 119
    :catch_12
    move-exception v0

    .line 120
    const-string v1, "VrDrive.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method private static toast(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 260
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->context:Landroid/content/Context;

    .line 261
    if-eqz v0, :cond_c

    .line 262
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 264
    :cond_c
    return-void
.end method
