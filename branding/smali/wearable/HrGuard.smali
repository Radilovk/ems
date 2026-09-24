.class public final Lcom/isaigu/gymapp/wearable/HrGuard;
.super Ljava/lang/Object;
.source "HrGuard.java"


# static fields
.field private static final IDLE_STOP_MS:J = 0xea60L

.field static final LOG_FILE:Ljava/lang/String; = "hr-guard.csv"

.field private static final TICK:Ljava/lang/Runnable;

.field private static final TICK_MS:J = 0x3e8L

.field private static final base:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

.field private static final handler:Landroid/os/Handler;

.field private static lastHrMs:J

.field private static loadedRest:Z

.field private static ticking:Z

.field private static final written:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->handler:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    .line 69
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuard$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/HrGuard$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->TICK:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 22
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->tick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 22
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z

    return p0
.end method

.method static actionText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 258
    const-string v0, "strength_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u0441\u0438\u043b\u0430 \u2193"

    const-string v1, "strength \u2193"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    :goto_10
    return-object v0

    .line 259
    :cond_11
    const-string v0, "width_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u0438\u043c\u043f\u0443\u043b\u0441 \u00b5s \u2193"

    const-string v1, "pulse \u00b5s \u2193"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 260
    :cond_22
    const-string v0, "freq_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u2193"

    const-string v1, "frequency \u2193"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 261
    :cond_33
    const-string v0, "restore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0432\u0440\u044a\u0449\u0430\u043d\u0435 \u2191"

    const-string v1, "restoring \u2191"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 262
    :cond_44
    const-string v0, "cap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0421\u0422\u041e\u041f \u2014 \u0442\u0430\u0432\u0430\u043d"

    const-string v1, "STOP \u2014 ceiling"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 263
    :cond_55
    const-string v0, "resume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430"

    const-string v1, "resumed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 264
    :cond_66
    const-string v0, "calibrated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "\u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u043e"

    const-string v1, "calibrated"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 265
    :cond_77
    const-string v0, ""

    goto :goto_10
.end method

.method private static aiOwnsOutput()Z
    .registers 1

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ownsOutput()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 158
    :goto_4
    return v0

    .line 157
    :catch_5
    move-exception v0

    .line 158
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static applyFactors(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 199
    if-nez p0, :cond_4

    .line 213
    :cond_3
    return-void

    .line 202
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 203
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 204
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 205
    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v4, :cond_8

    .line 208
    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-double v4, v4

    sget-object v6, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 209
    const/16 v5, 0x32

    aget v6, v1, v10

    int-to-double v6, v6

    sget-object v8, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getWidthFactor()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 210
    const/4 v6, 0x2

    aget v1, v1, v6

    int-to-double v6, v1

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getFreqFactor()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 211
    invoke-static {v0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/wearable/HrGuard;->write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V

    goto :goto_8
.end method

.method private static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 2

    .prologue
    .line 163
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-nez v0, :cond_10

    .line 164
    :cond_e
    const/4 v0, 0x0

    .line 166
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_f
.end method

.method public static core()Lcom/isaigu/gymapp/wearable/HrGuardCore;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    return-object v0
.end method

.method private static ensureTicking()V
    .registers 4

    .prologue
    .line 63
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z

    if-nez v0, :cond_10

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z

    .line 65
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->TICK:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    :cond_10
    return-void
.end method

.method static onHeartRate(I)V
    .registers 5

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    sput-wide v0, Lcom/isaigu/gymapp/wearable/HrGuard;->lastHrMs:J

    .line 46
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p0, v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onHr(JIZ)V

    .line 47
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->ensureTicking()V

    .line 48
    return-void
.end method

.method private static restoreBase()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 216
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 218
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 219
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 222
    if-eqz v4, :cond_d

    if-eqz v2, :cond_d

    iget v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aget v6, v2, v7

    if-ne v5, v6, :cond_d

    iget v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aget v6, v2, v8

    if-ne v5, v6, :cond_d

    iget v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aget v2, v2, v9

    if-ne v5, v2, :cond_d

    .line 223
    aget v2, v0, v7

    aget v5, v0, v8

    aget v0, v0, v9

    invoke-static {v1, v4, v2, v5, v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V

    goto :goto_d

    .line 226
    :cond_51
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 228
    return-void
.end method

.method public static startCalibration()V
    .registers 3

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->startCalibration(J)V

    .line 54
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->resetEnergy()V

    .line 56
    :try_start_e
    const-string v0, "hr-guard.csv"

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->csvHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_19} :catch_1d

    .line 59
    :goto_19
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->ensureTicking()V

    .line 60
    return-void

    .line 57
    :catch_1d
    move-exception v0

    goto :goto_19
.end method

.method private static tick()Z
    .registers 15

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 90
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 91
    if-eqz v8, :cond_36

    .line 92
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->loadedRest:Z

    if-nez v0, :cond_1c

    .line 93
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/HrGuard;->loadedRest:Z

    .line 94
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setRestHr(I)V

    .line 96
    :cond_1c
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isHrThresholdManual(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 97
    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v0

    .line 96
    :goto_28
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setManualUpper(I)V

    .line 98
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setMaxStepPct(I)V

    .line 100
    :cond_36
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v9

    .line 101
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->aiOwnsOutput()Z

    move-result v10

    .line 102
    if-eqz v8, :cond_a2

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a2

    if-nez v10, :cond_a2

    move v1, v2

    .line 103
    :goto_4b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    .line 106
    :goto_56
    new-instance v11, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;

    invoke-direct {v11}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;-><init>()V

    .line 108
    if-eqz v4, :cond_a6

    if-nez v10, :cond_a6

    .line 109
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_63
    :goto_63
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 110
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v13

    .line 111
    if-eqz v13, :cond_63

    iget-object v14, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v14, :cond_63

    iget-object v14, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v14, v14, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v14, :cond_63

    .line 114
    invoke-static {v0, v13}, Lcom/isaigu/gymapp/wearable/HrGuard;->trackTrainerChanges(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 115
    if-nez v5, :cond_16d

    .line 117
    iput-boolean v2, v11, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    .line 118
    iget v5, v13, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v5, v11, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    .line 119
    iget v5, v13, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v5, v11, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    .line 120
    iget v5, v13, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v5, v11, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    .line 121
    iget v5, v13, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v5, v11, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    .line 122
    iget v5, v13, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v5, v11, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    .line 123
    iget-boolean v5, v13, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v5, v11, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    :goto_9e
    move-object v5, v0

    .line 125
    goto :goto_63

    .line 97
    :cond_a0
    const/4 v0, -0x1

    goto :goto_28

    :cond_a2
    move v1, v3

    .line 102
    goto :goto_4b

    :cond_a4
    move-object v4, v5

    .line 104
    goto :goto_56

    .line 127
    :cond_a6
    if-eqz v10, :cond_b7

    .line 129
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 131
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->resetFactors()V

    .line 133
    :cond_b7
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0, v6, v7, v11, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->tick(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Z

    move-result v5

    .line 134
    if-eqz v9, :cond_10e

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v0

    if-nez v0, :cond_10e

    if-eqz v8, :cond_10e

    .line 135
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v0

    invoke-static {v8, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setRestHr(Landroid/content/Context;I)V

    .line 136
    const-string v8, "hr_guard"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rest="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v9, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " upper="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v9, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 137
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isManualUpper()Z

    move-result v0

    if-eqz v0, :cond_159

    const-string v0, " (trainer)"

    :goto_103
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v8, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_10e
    iget-boolean v0, v11, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v0, :cond_15c

    if-eqz v1, :cond_15c

    .line 140
    if-nez v5, :cond_11e

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_121

    .line 141
    :cond_11e
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/HrGuard;->applyFactors(Ljava/util/List;)V

    .line 147
    :cond_121
    :goto_121
    iget-boolean v0, v11, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-nez v0, :cond_12d

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v0

    if-eqz v0, :cond_138

    .line 148
    :cond_12d
    const-string v0, "hr-guard.csv"

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v1, v6, v7, v11}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->csvRow(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_138
    iget-boolean v0, v11, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-nez v0, :cond_157

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v0

    if-nez v0, :cond_157

    sget-wide v0, Lcom/isaigu/gymapp/wearable/HrGuard;->lastHrMs:J

    sub-long v0, v6, v0

    const-wide/32 v4, 0xea60

    cmp-long v0, v0, v4

    if-ltz v0, :cond_157

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    .line 151
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_158

    :cond_157
    move v3, v2

    .line 150
    :cond_158
    return v3

    .line 137
    :cond_159
    const-string v0, " (auto)"

    goto :goto_103

    .line 143
    :cond_15c
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_121

    .line 144
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->restoreBase()V

    .line 145
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->resetFactors()V

    goto :goto_121

    :cond_16d
    move-object v0, v5

    goto/16 :goto_9e
.end method

.method private static trackTrainerChanges(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 9

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 172
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 173
    if-nez v1, :cond_3d

    .line 174
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    new-array v1, v3, [I

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v2, v1, v4

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v2, v1, v5

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v2, v1, v6

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    new-array v1, v3, [I

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v2, v1, v4

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v2, v1, v5

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v2, v1, v6

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_3c
    :goto_3c
    return-void

    .line 178
    :cond_3d
    if-eqz v0, :cond_3c

    .line 181
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aget v3, v0, v4

    if-eq v2, v3, :cond_54

    .line 182
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v2, v1, v4

    .line 183
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v2, v0, v4

    .line 184
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V

    .line 186
    :cond_54
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aget v3, v0, v5

    if-eq v2, v3, :cond_69

    .line 187
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v2, v1, v5

    .line 188
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v2, v0, v5

    .line 189
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V

    .line 191
    :cond_69
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aget v3, v0, v6

    if-eq v2, v3, :cond_3c

    .line 192
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v2, v1, v6

    .line 193
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v1, v0, v6

    .line 194
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V

    goto :goto_3c
.end method

.method private static write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V
    .registers 10

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 232
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-ne v1, p2, :cond_20

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-ne v1, p3, :cond_20

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-ne v1, p4, :cond_20

    .line 233
    if-eqz v0, :cond_1f

    .line 234
    aput p2, v0, v2

    .line 235
    aput p3, v0, v3

    .line 236
    aput p4, v0, v4

    .line 253
    :cond_1f
    :goto_1f
    return-void

    .line 240
    :cond_20
    iput p2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 241
    iput p3, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 242
    iput p4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 243
    if-eqz v0, :cond_2e

    .line 244
    aput p2, v0, v2

    .line 245
    aput p3, v0, v3

    .line 246
    aput p4, v0, v4

    .line 249
    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_1f

    .line 250
    :catch_32
    move-exception v0

    .line 251
    const-string v1, "hr_guard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onParamsChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method
