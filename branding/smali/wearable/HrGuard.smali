.class public final Lcom/isaigu/gymapp/wearable/HrGuard;
.super Ljava/lang/Object;
.source "HrGuard.java"


# static fields
.field private static final IDLE_STOP_MS:J = 0xea60L

.field static final LOG_FILE:Ljava/lang/String; = "hr-guard.csv"

.field private static final NO_PERSON:J = -0x8000000000000000L

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

.field private static personId:J

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
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    .line 30
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Lcom/isaigu/gymapp/wearable/HrGuard;->personId:J

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->handler:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    .line 72
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuard$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/HrGuard$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->TICK:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->tick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 22
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z

    return p0
.end method

.method static actionText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    const-string v0, "strength_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u0441\u0438\u043b\u0430 \u2193"

    const-string v1, "strength \u2193"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    .line 277
    :cond_0
    const-string v0, "width_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u0438\u043c\u043f\u0443\u043b\u0441 \u00b5s \u2193"

    const-string v1, "pulse \u00b5s \u2193"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_1
    const-string v0, "freq_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u2193"

    const-string v1, "frequency \u2193"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_2
    const-string v0, "restore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u0432\u0440\u044a\u0449\u0430\u043d\u0435 \u2191"

    const-string v1, "restoring \u2191"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_3
    const-string v0, "cap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u0421\u0422\u041e\u041f \u2014 \u0442\u0430\u0432\u0430\u043d"

    const-string v1, "STOP \u2014 ceiling"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_4
    const-string v0, "resume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430"

    const-string v1, "resumed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_5
    const-string v0, "calibrated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u043e"

    const-string v1, "calibrated"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method private static aiOwnsOutput()Z
    .locals 1

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ownsOutput()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 176
    :goto_0
    return v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static applyFactors(Ljava/util/List;)V
    .locals 11
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

    .line 217
    if-nez p0, :cond_1

    .line 231
    :cond_0
    return-void

    .line 220
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 221
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 222
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 223
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v4, :cond_2

    .line 226
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

    .line 227
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

    .line 228
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

    .line 229
    invoke-static {v0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/wearable/HrGuard;->write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V

    goto :goto_0
.end method

.method private static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .locals 1

    .prologue
    .line 181
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_0
.end method

.method public static core()Lcom/isaigu/gymapp/wearable/HrGuardCore;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    return-object v0
.end method

.method private static ensureTicking()V
    .locals 4

    .prologue
    .line 66
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z

    .line 68
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->TICK:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    :cond_0
    return-void
.end method

.method static onHeartRate(I)V
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    sput-wide v0, Lcom/isaigu/gymapp/wearable/HrGuard;->lastHrMs:J

    .line 49
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p0, v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onHr(JIZ)V

    .line 50
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->ensureTicking()V

    .line 51
    return-void
.end method

.method private static restoreBase()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 234
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 236
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 237
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 238
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 240
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    iget v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aget v6, v2, v7

    if-ne v5, v6, :cond_0

    iget v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aget v6, v2, v8

    if-ne v5, v6, :cond_0

    iget v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aget v2, v2, v9

    if-ne v5, v2, :cond_0

    .line 241
    aget v2, v0, v7

    aget v5, v0, v8

    aget v0, v0, v9

    invoke-static {v1, v4, v2, v5, v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V

    goto :goto_0

    .line 244
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 245
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 246
    return-void
.end method

.method public static startCalibration()V
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->startCalibration(J)V

    .line 57
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->resetEnergy()V

    .line 59
    :try_start_0
    const-string v0, "hr-guard.csv"

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->csvHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->ensureTicking()V

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static tick()Z
    .locals 16

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 93
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 94
    if-eqz v10, :cond_1

    .line 95
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->loadedRest:Z

    if-nez v0, :cond_0

    .line 96
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/HrGuard;->loadedRest:Z

    .line 97
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setRestHr(I)V

    .line 99
    :cond_0
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isHrThresholdManual(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v0

    .line 99
    :goto_0
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setManualUpper(I)V

    .line 101
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setMaxStepPct(I)V

    .line 103
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v11

    .line 104
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->aiOwnsOutput()Z

    move-result v12

    .line 105
    if-eqz v10, :cond_4

    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v12, :cond_4

    const-string v0, "pulse"

    .line 106
    invoke-static {v10, v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    .line 107
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .line 110
    :goto_2
    new-instance v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;

    invoke-direct {v13}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;-><init>()V

    .line 112
    if-eqz v5, :cond_8

    if-nez v12, :cond_8

    .line 113
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v7, v6

    :cond_2
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 114
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_2

    iget-object v15, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v15, :cond_2

    iget-object v15, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v15, v15, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v15, :cond_2

    .line 118
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->trackTrainerChanges(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 119
    if-nez v7, :cond_17

    .line 121
    iput-boolean v3, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    .line 122
    iget v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v7, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    .line 123
    iget v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v7, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    .line 124
    iget v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v7, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    .line 125
    iget v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v7, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    .line 126
    iget v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v7, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    .line 127
    iget-boolean v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v7, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    .line 128
    iget v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v7, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseStrength:I

    .line 129
    iget v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v7, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseHz:I

    .line 130
    iget-object v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v7, :cond_6

    .line 131
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_4
    iput-object v0, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    .line 132
    iget-object v0, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_5
    iput-object v0, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->disabled:[Z

    :goto_6
    move-object v7, v1

    .line 134
    goto :goto_3

    .line 100
    :cond_3
    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 106
    goto/16 :goto_1

    :cond_5
    move-object v5, v6

    .line 108
    goto :goto_2

    :cond_6
    move-object v0, v6

    .line 131
    goto :goto_4

    :cond_7
    move-object v0, v6

    .line 132
    goto :goto_5

    :cond_8
    move-object v7, v6

    .line 136
    :cond_9
    if-eqz v7, :cond_b

    .line 138
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v7

    .line 139
    if-eqz v7, :cond_14

    iget-wide v0, v7, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    .line 140
    :goto_7
    sget-wide v14, Lcom/isaigu/gymapp/wearable/HrGuard;->personId:J

    cmp-long v14, v0, v14

    if-eqz v14, :cond_b

    .line 141
    sput-wide v0, Lcom/isaigu/gymapp/wearable/HrGuard;->personId:J

    .line 142
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiProfile;->toInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v6

    :cond_a
    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setPerson(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 145
    :cond_b
    if-eqz v12, :cond_c

    .line 147
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 149
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->resetFactors()V

    .line 151
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0, v8, v9, v13, v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->tick(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Z

    move-result v1

    .line 152
    if-eqz v11, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v10, :cond_d

    .line 153
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v0

    invoke-static {v10, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setRestHr(Landroid/content/Context;I)V

    .line 154
    const-string v6, "hr_guard"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rest="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " upper="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 155
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isManualUpper()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, " (trainer)"

    :goto_8
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_d
    iget-boolean v0, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v0, :cond_16

    if-eqz v2, :cond_16

    .line 158
    if-nez v1, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 159
    :cond_e
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/HrGuard;->applyFactors(Ljava/util/List;)V

    .line 165
    :cond_f
    :goto_9
    iget-boolean v0, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-nez v0, :cond_10

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 166
    :cond_10
    const-string v0, "hr-guard.csv"

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v1, v8, v9, v13}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->csvRow(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_11
    iget-boolean v0, v13, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-nez v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v0

    if-nez v0, :cond_12

    sget-wide v0, Lcom/isaigu/gymapp/wearable/HrGuard;->lastHrMs:J

    sub-long v0, v8, v0

    const-wide/32 v6, 0xea60

    cmp-long v0, v0, v6

    if-ltz v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    .line 169
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    move v4, v3

    .line 168
    :cond_13
    return v4

    .line 139
    :cond_14
    const-wide/high16 v0, -0x8000000000000000L

    goto/16 :goto_7

    .line 155
    :cond_15
    const-string v0, " (auto)"

    goto :goto_8

    .line 161
    :cond_16
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 162
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->restoreBase()V

    .line 163
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->resetFactors()V

    goto :goto_9

    :cond_17
    move-object v1, v7

    goto/16 :goto_6
.end method

.method private static trackTrainerChanges(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 190
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 191
    if-nez v1, :cond_1

    .line 192
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    new-array v1, v3, [I

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v2, v1, v4

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v2, v1, v5

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v2, v1, v6

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    new-array v1, v3, [I

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v2, v1, v4

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v2, v1, v5

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v2, v1, v6

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    if-eqz v0, :cond_0

    .line 199
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aget v3, v0, v4

    if-eq v2, v3, :cond_2

    .line 200
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v2, v1, v4

    .line 201
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v2, v0, v4

    .line 202
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V

    .line 204
    :cond_2
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aget v3, v0, v5

    if-eq v2, v3, :cond_3

    .line 205
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v2, v1, v5

    .line 206
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v2, v0, v5

    .line 207
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V

    .line 209
    :cond_3
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aget v3, v0, v6

    if-eq v2, v3, :cond_0

    .line 210
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v2, v1, v6

    .line 211
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v1, v0, v6

    .line 212
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V

    goto :goto_0
.end method

.method private static write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 250
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-ne v1, p2, :cond_1

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-ne v1, p3, :cond_1

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-ne v1, p4, :cond_1

    .line 251
    if-eqz v0, :cond_0

    .line 252
    aput p2, v0, v2

    .line 253
    aput p3, v0, v3

    .line 254
    aput p4, v0, v4

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iput p2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 259
    iput p3, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 260
    iput p4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 261
    if-eqz v0, :cond_2

    .line 262
    aput p2, v0, v2

    .line 263
    aput p3, v0, v3

    .line 264
    aput p4, v0, v4

    .line 267
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
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

    goto :goto_0
.end method
