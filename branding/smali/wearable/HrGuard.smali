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
            "Ljava/util/Map<",
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
            "Ljava/util/Map<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

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
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 22
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->tick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .line 22
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .line 22
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z

    return p0
.end method

.method static actionText(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 276
    const-string v0, "strength_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "\u0441\u0438\u043b\u0430 \u2193"

    const-string v0, "strength \u2193"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 277
    :cond_11
    const-string v0, "width_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p0, "\u0438\u043c\u043f\u0443\u043b\u0441 \u00b5s \u2193"

    const-string v0, "pulse \u00b5s \u2193"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 278
    :cond_22
    const-string v0, "freq_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string p0, "\u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u2193"

    const-string v0, "frequency \u2193"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 279
    :cond_33
    const-string v0, "restore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string p0, "\u0432\u0440\u044a\u0449\u0430\u043d\u0435 \u2191"

    const-string v0, "restoring \u2191"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 280
    :cond_44
    const-string v0, "cap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string p0, "\u0421\u0422\u041e\u041f \u2014 \u0442\u0430\u0432\u0430\u043d"

    const-string v0, "STOP \u2014 ceiling"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 281
    :cond_55
    const-string v0, "resume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string p0, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430"

    const-string v0, "resumed"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 282
    :cond_66
    const-string v0, "calibrated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_75

    const-string p0, "\u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u043e"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 283
    :cond_75
    const-string p0, ""

    return-object p0
.end method

.method private static aiOwnsOutput()Z
    .registers 1

    .line 174
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ownsOutput()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 175
    :catchall_5
    move-exception v0

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method private static applyFactors(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)V"
        }
    .end annotation

    .line 217
    if-nez p0, :cond_3

    .line 218
    return-void

    .line 220
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 221
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 222
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 223
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_2e

    .line 224
    goto :goto_7

    .line 226
    :cond_2e
    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-double v3, v3

    sget-object v5, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v5

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    .line 227
    const/16 v3, 0x32

    const/4 v5, 0x1

    aget v6, v2, v5

    int-to-double v6, v6

    sget-object v8, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getWidthFactor()D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 228
    const/4 v6, 0x2

    aget v2, v2, v6

    int-to-double v6, v2

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getFreqFactor()D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 229
    invoke-static {v0, v1, v4, v3, v2}, Lcom/isaigu/gymapp/wearable/HrGuard;->write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V

    .line 230
    goto :goto_7

    .line 231
    :cond_6f
    return-void
.end method

.method private static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 2

    .line 181
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 184
    :cond_f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object p0

    return-object p0

    .line 182
    :cond_18
    :goto_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static core()Lcom/isaigu/gymapp/wearable/HrGuardCore;
    .registers 1

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    return-object v0
.end method

.method private static ensureTicking()V
    .registers 4

    .line 66
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z

    if-nez v0, :cond_10

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z

    .line 68
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->TICK:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    :cond_10
    return-void
.end method

.method static onHeartRate(I)V
    .registers 5

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
    .registers 9

    .line 234
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 236
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 237
    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 240
    if-eqz v3, :cond_50

    if-eqz v4, :cond_50

    iget v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    const/4 v6, 0x0

    aget v7, v4, v6

    if-ne v5, v7, :cond_50

    iget v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    const/4 v7, 0x1

    aget v8, v4, v7

    if-ne v5, v8, :cond_50

    iget v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    const/4 v8, 0x2

    aget v4, v4, v8

    if-ne v5, v4, :cond_50

    .line 241
    aget v4, v1, v6

    aget v5, v1, v7

    aget v1, v1, v8

    invoke-static {v2, v3, v4, v5, v1}, Lcom/isaigu/gymapp/wearable/HrGuard;->write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V

    .line 243
    :cond_50
    goto :goto_a

    .line 244
    :cond_51
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 245
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 246
    return-void
.end method

.method public static startCalibration()V
    .registers 3

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
    :try_start_e
    const-string v0, "hr-guard.csv"

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->csvHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1a

    .line 61
    goto :goto_1b

    .line 60
    :catchall_1a
    move-exception v0

    .line 62
    :goto_1b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->ensureTicking()V

    .line 63
    return-void
.end method

.method private static tick()Z
    .registers 17

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 94
    const/4 v3, 0x1

    if-eqz v2, :cond_36

    .line 95
    sget-boolean v4, Lcom/isaigu/gymapp/wearable/HrGuard;->loadedRest:Z

    if-nez v4, :cond_1a

    .line 96
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/HrGuard;->loadedRest:Z

    .line 97
    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setRestHr(I)V

    .line 99
    :cond_1a
    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isHrThresholdManual(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 100
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v5

    goto :goto_28

    :cond_27
    const/4 v5, -0x1

    .line 99
    :goto_28
    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setManualUpper(I)V

    .line 101
    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setMaxStepPct(I)V

    .line 103
    :cond_36
    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v4

    .line 104
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->aiOwnsOutput()Z

    move-result v5

    .line 105
    const/4 v6, 0x0

    if-eqz v2, :cond_55

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_55

    if-nez v5, :cond_55

    .line 106
    const-string v7, "pulse"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    const/4 v7, 0x1

    goto :goto_56

    :cond_55
    const/4 v7, 0x0

    .line 107
    :goto_56
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v8

    .line 108
    const/4 v9, 0x0

    if-eqz v8, :cond_62

    invoke-virtual {v8}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v8

    goto :goto_63

    :cond_62
    move-object v8, v9

    .line 110
    :goto_63
    new-instance v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;

    invoke-direct {v10}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;-><init>()V

    .line 111
    nop

    .line 112
    if-eqz v8, :cond_e1

    if-nez v5, :cond_e1

    .line 113
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v9

    :cond_72
    :goto_72
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 114
    invoke-static {v13}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v14

    .line 115
    if-eqz v14, :cond_72

    iget-object v15, v13, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v15, :cond_72

    iget-object v15, v13, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v15, v15, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v15, :cond_8f

    .line 116
    goto :goto_72

    .line 118
    :cond_8f
    invoke-static {v13, v14}, Lcom/isaigu/gymapp/wearable/HrGuard;->trackTrainerChanges(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 119
    if-nez v12, :cond_e0

    .line 120
    nop

    .line 121
    iput-boolean v3, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    .line 122
    iget v12, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v12, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    .line 123
    iget v12, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v12, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    .line 124
    iget v12, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v12, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    .line 125
    iget v12, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v12, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    .line 126
    iget v12, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v12, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    .line 127
    iget-boolean v12, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v12, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    .line 128
    iget v12, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v12, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseStrength:I

    .line 129
    iget v12, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v12, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseHz:I

    .line 130
    iget-object v12, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v12, :cond_cc

    iget-object v12, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v12, v12, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v12, :cond_cc

    .line 131
    iget-object v12, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v12, v12, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v12}, [I->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    goto :goto_cd

    :cond_cc
    move-object v12, v9

    :goto_cd
    iput-object v12, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    .line 132
    iget-object v12, v13, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v12, :cond_dc

    iget-object v12, v13, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    invoke-virtual {v12}, [Z->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Z

    goto :goto_dd

    :cond_dc
    move-object v12, v9

    :goto_dd
    iput-object v12, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->disabled:[Z

    move-object v12, v13

    .line 134
    :cond_e0
    goto :goto_72

    .line 136
    :cond_e1
    move-object v12, v9

    :cond_e2
    if-eqz v12, :cond_102

    .line 138
    invoke-static {v12}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v11

    .line 139
    if-eqz v11, :cond_ed

    iget-wide v12, v11, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    goto :goto_ef

    :cond_ed
    const-wide/high16 v12, -0x8000000000000000L

    .line 140
    :goto_ef
    sget-wide v14, Lcom/isaigu/gymapp/wearable/HrGuard;->personId:J

    cmp-long v16, v12, v14

    if-eqz v16, :cond_102

    .line 141
    sput-wide v12, Lcom/isaigu/gymapp/wearable/HrGuard;->personId:J

    .line 142
    sget-object v12, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    if-eqz v11, :cond_ff

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiProfile;->toInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v9

    :cond_ff
    invoke-virtual {v12, v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setPerson(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 145
    :cond_102
    if-eqz v5, :cond_113

    .line 147
    sget-object v5, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 148
    sget-object v5, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 149
    sget-object v5, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->resetFactors()V

    .line 151
    :cond_113
    sget-object v5, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v5, v0, v1, v10, v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->tick(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Z

    move-result v5

    .line 152
    if-eqz v4, :cond_168

    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v4

    if-nez v4, :cond_168

    if-eqz v2, :cond_168

    .line 153
    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v4

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setRestHr(Landroid/content/Context;I)V

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rest="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " upper="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isManualUpper()Z

    move-result v4

    if-eqz v4, :cond_15a

    const-string v4, " (trainer)"

    goto :goto_15c

    :cond_15a
    const-string v4, " (auto)"

    :goto_15c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    const-string v4, "hr_guard"

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_168
    iget-boolean v2, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v2, :cond_17c

    if-eqz v7, :cond_17c

    .line 158
    if-nez v5, :cond_178

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18c

    .line 159
    :cond_178
    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/HrGuard;->applyFactors(Ljava/util/List;)V

    goto :goto_18c

    .line 161
    :cond_17c
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18c

    .line 162
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->restoreBase()V

    .line 163
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->resetFactors()V

    .line 165
    :cond_18c
    :goto_18c
    iget-boolean v2, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-nez v2, :cond_198

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v2

    if-eqz v2, :cond_1a3

    .line 166
    :cond_198
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v2, v0, v1, v10}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->csvRow(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "hr-guard.csv"

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1a3
    iget-boolean v2, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-nez v2, :cond_1c4

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v2

    if-nez v2, :cond_1c4

    sget-wide v4, Lcom/isaigu/gymapp/wearable/HrGuard;->lastHrMs:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v0, v4

    if-ltz v2, :cond_1c4

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    .line 169
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c2

    goto :goto_1c4

    :cond_1c2
    const/4 v3, 0x0

    goto :goto_1c5

    :cond_1c4
    :goto_1c4
    nop

    .line 168
    :goto_1c5
    return v3
.end method

.method private static trackTrainerChanges(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 9

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
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3d

    .line 192
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    const/4 v1, 0x3

    new-array v5, v1, [I

    iget v6, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v6, v5, v4

    iget v6, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v6, v5, v3

    iget v6, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v6, v5, v2

    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    new-array v1, v1, [I

    iget v5, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v5, v1, v4

    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v4, v1, v3

    iget p1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput p1, v1, v2

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void

    .line 196
    :cond_3d
    if-nez v0, :cond_40

    .line 197
    return-void

    .line 199
    :cond_40
    iget p0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aget v5, v0, v4

    if-eq p0, v5, :cond_55

    .line 200
    iget p0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput p0, v1, v4

    .line 201
    iget p0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput p0, v0, v4

    .line 202
    sget-object p0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V

    .line 204
    :cond_55
    iget p0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aget v4, v0, v3

    if-eq p0, v4, :cond_6a

    .line 205
    iget p0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput p0, v1, v3

    .line 206
    iget p0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput p0, v0, v3

    .line 207
    sget-object p0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V

    .line 209
    :cond_6a
    iget p0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aget v3, v0, v2

    if-eq p0, v3, :cond_7f

    .line 210
    iget p0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput p0, v1, v2

    .line 211
    iget p0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput p0, v0, v2

    .line 212
    sget-object p0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    sget-object p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V

    .line 214
    :cond_7f
    return-void
.end method

.method private static write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V
    .registers 10

    .line 249
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 250
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, p2, :cond_20

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-ne v1, p3, :cond_20

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-ne v1, p4, :cond_20

    .line 251
    if-eqz v0, :cond_1f

    .line 252
    aput p2, v0, v4

    .line 253
    aput p3, v0, v3

    .line 254
    aput p4, v0, v2

    .line 256
    :cond_1f
    return-void

    .line 258
    :cond_20
    iput p2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 259
    iput p3, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 260
    iput p4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 261
    if-eqz v0, :cond_2e

    .line 262
    aput p2, v0, v4

    .line 263
    aput p3, v0, v3

    .line 264
    aput p4, v0, v2

    .line 267
    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    .line 270
    goto :goto_49

    .line 268
    :catchall_32
    move-exception p0

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onParamsChange: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hr_guard"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_49
    return-void
.end method
