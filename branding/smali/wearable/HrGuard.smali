.class public final Lcom/isaigu/gymapp/wearable/HrGuard;
.super Ljava/lang/Object;
.source "HrGuard.java"


# static fields
.field private static final IDLE_STOP_MS:J = 0xea60L

.field private static final LEVER_OF:[Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

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
    .registers 3

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

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    .line 97
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuard$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/HrGuard$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->TICK:Ljava/lang/Runnable;

    .line 228
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ON:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->OFF:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->PAUSE:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->PAUSE:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->LEVER_OF:[Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
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
    .line 325
    const-string v0, "strength_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u0441\u0438\u043b\u0430 \u2193"

    const-string v1, "strength \u2193"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_10
    return-object v0

    .line 326
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

    .line 327
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

    .line 328
    :cond_33
    const-string v0, "pause_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u2193"

    const-string v1, "double impulse \u2193"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 329
    :cond_44
    const-string v0, "pause_off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u0438\u0437\u043a\u043b."

    const-string v1, "double impulse off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 330
    :cond_55
    const-string v0, "off_up"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u043f\u0430\u0443\u0437\u0430 \u2191"

    const-string v1, "pause \u2191"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 331
    :cond_66
    const-string v0, "on_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "\u0438\u043c\u043f\u0443\u043b\u0441 s \u2193"

    const-string v1, "impulse s \u2193"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 332
    :cond_77
    const-string v0, "restore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "\u0432\u0440\u044a\u0449\u0430\u043d\u0435 \u2191"

    const-string v1, "restoring \u2191"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 333
    :cond_88
    const-string v0, "cap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "\u0421\u0422\u041e\u041f \u2014 \u0442\u0430\u0432\u0430\u043d"

    const-string v1, "STOP \u2014 ceiling"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 334
    :cond_9a
    const-string v0, "resume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430"

    const-string v1, "resumed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 335
    :cond_ac
    const-string v0, "calibrated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string v0, "\u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u043e"

    const-string v1, "calibrated"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 336
    :cond_be
    const-string v0, ""

    goto/16 :goto_10
.end method

.method private static aiOwnsOutput()Z
    .registers 1

    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ownsOutput()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 211
    :goto_4
    return v0

    .line 210
    :catch_5
    move-exception v0

    .line 211
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static applyFactors(Ljava/util/List;)V
    .registers 16
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
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 259
    if-nez p0, :cond_8

    .line 279
    :cond_7
    return-void

    .line 262
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 263
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    .line 264
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 265
    if-eqz v6, :cond_c

    if-eqz v1, :cond_c

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v4, :cond_c

    .line 268
    const/4 v4, 0x7

    new-array v7, v4, [I

    .line 269
    aget v4, v1, v3

    int-to-double v8, v4

    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v4, v8

    aput v4, v7, v3

    .line 270
    const/16 v4, 0x32

    aget v8, v1, v2

    int-to-double v8, v8

    sget-object v10, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v10}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getWidthFactor()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v7, v2

    .line 271
    aget v4, v1, v13

    int-to-double v8, v4

    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getFreqFactor()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v4, v8

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v7, v13

    .line 272
    aget v4, v1, v14

    sget-object v8, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getOnCut()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v7, v14

    .line 273
    const/4 v4, 0x4

    const/4 v8, 0x4

    aget v8, v1, v8

    sget-object v9, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getOffAdd()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v4

    .line 274
    const/4 v4, 0x6

    aget v4, v1, v4

    if-ne v4, v2, :cond_c6

    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getPauseFactor()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v4, v8, v10

    if-lez v4, :cond_c6

    move v4, v2

    .line 275
    :goto_a4
    if-eqz v4, :cond_c8

    aget v1, v1, v12

    int-to-double v8, v1

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getPauseFactor()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v1, v8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_b9
    aput v1, v7, v12

    .line 276
    const/4 v8, 0x6

    if-eqz v4, :cond_cb

    move v1, v2

    :goto_bf
    aput v1, v7, v8

    .line 277
    invoke-static {v0, v6, v7}, Lcom/isaigu/gymapp/wearable/HrGuard;->write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)V

    goto/16 :goto_c

    :cond_c6
    move v4, v3

    .line 274
    goto :goto_a4

    .line 275
    :cond_c8
    aget v1, v1, v12

    goto :goto_b9

    :cond_cb
    move v1, v3

    .line 276
    goto :goto_bf
.end method

.method private static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 2

    .prologue
    .line 216
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-nez v0, :cond_10

    .line 217
    :cond_e
    const/4 v0, 0x0

    .line 219
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
    .line 43
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    return-object v0
.end method

.method private static ensureTicking()V
    .registers 4

    .prologue
    .line 91
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z

    if-nez v0, :cond_10

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->ticking:Z

    .line 93
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->TICK:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    :cond_10
    return-void
.end method

.method public static liveKcal()D
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 52
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    .line 53
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v3, :cond_e

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_18

    .line 54
    :cond_e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getKcal()D

    move-result-wide v2

    .line 55
    cmpl-double v4, v2, v0

    if-ltz v4, :cond_18

    move-wide v0, v2

    .line 67
    :cond_17
    :goto_17
    return-wide v0

    .line 59
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_2b

    .line 60
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_23} :catch_2a

    move-result-wide v2

    .line 61
    cmpl-double v4, v2, v0

    if-ltz v4, :cond_2b

    move-wide v0, v2

    .line 62
    goto :goto_17

    .line 65
    :catch_2a
    move-exception v2

    .line 67
    :cond_2b
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    if-eqz v2, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v0

    goto :goto_17
.end method

.method static onHeartRate(I)V
    .registers 5

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    sput-wide v0, Lcom/isaigu/gymapp/wearable/HrGuard;->lastHrMs:J

    .line 74
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p0, v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onHr(JIZ)V

    .line 75
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->ensureTicking()V

    .line 76
    return-void
.end method

.method private static restoreBase()V
    .registers 6

    .prologue
    .line 282
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 284
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 285
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 287
    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/HrGuard;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v1, v4, v0}, Lcom/isaigu/gymapp/wearable/HrGuard;->write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)V

    goto :goto_a

    .line 291
    :cond_46
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 292
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 293
    return-void
.end method

.method public static startCalibration()V
    .registers 3

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->startCalibration(J)V

    .line 82
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->resetEnergy()V

    .line 84
    :try_start_e
    const-string v0, "hr-guard.csv"

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->csvHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_19} :catch_1d

    .line 87
    :goto_19
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->ensureTicking()V

    .line 88
    return-void

    .line 85
    :catch_1d
    move-exception v0

    goto :goto_19
.end method

.method private static tick()Z
    .registers 14

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 118
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 119
    if-eqz v5, :cond_34

    .line 120
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->loadedRest:Z

    if-nez v0, :cond_1a

    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/HrGuard;->loadedRest:Z

    .line 122
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setRestHr(I)V

    .line 124
    :cond_1a
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isHrThresholdManual(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 125
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v0

    .line 124
    :goto_26
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setManualUpper(I)V

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setMaxStepPct(I)V

    .line 128
    :cond_34
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v8

    .line 129
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->aiOwnsOutput()Z

    move-result v9

    .line 130
    if-eqz v5, :cond_fc

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_fc

    if-nez v9, :cond_fc

    const-string v0, "pulse"

    .line 131
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    const/4 v0, 0x1

    move v2, v0

    .line 132
    :goto_52
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_100

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 135
    :goto_5d
    new-instance v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;

    invoke-direct {v10}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;-><init>()V

    .line 136
    const/4 v4, 0x0

    .line 137
    if-eqz v3, :cond_10a

    if-nez v9, :cond_10a

    .line 138
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6b
    :goto_6b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 139
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/HrGuard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v12

    .line 140
    if-eqz v12, :cond_6b

    iget-object v0, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_6b

    iget-object v0, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_6b

    .line 143
    invoke-static {v1, v12}, Lcom/isaigu/gymapp/wearable/HrGuard;->trackTrainerChanges(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 144
    if-nez v4, :cond_20a

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    .line 147
    iget v0, v12, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    .line 148
    iget v0, v12, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    .line 149
    iget v0, v12, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    .line 150
    iget v0, v12, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    .line 151
    iget v0, v12, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    .line 152
    iget-boolean v0, v12, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    .line 153
    iget v0, v12, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseStrength:I

    .line 154
    iget v0, v12, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseHz:I

    .line 155
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 156
    if-eqz v0, :cond_d2

    .line 157
    const/4 v4, 0x2

    aget v4, v0, v4

    iput v4, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseHz:I

    .line 158
    const/4 v4, 0x3

    aget v4, v0, v4

    iput v4, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseOnS:I

    .line 159
    const/4 v4, 0x4

    aget v4, v0, v4

    iput v4, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseOffS:I

    .line 160
    const/4 v4, 0x6

    aget v0, v0, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_104

    const/4 v0, 0x1

    :goto_d0
    iput-boolean v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->basePause:Z

    .line 162
    :cond_d2
    iget-object v0, v12, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_106

    iget-object v0, v12, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v0, :cond_106

    .line 163
    iget-object v0, v12, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_e6
    iput-object v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    .line 164
    iget-object v0, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_108

    iget-object v0, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_f4
    iput-object v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->disabled:[Z

    :goto_f6
    move-object v4, v1

    .line 166
    goto/16 :goto_6b

    .line 125
    :cond_f9
    const/4 v0, -0x1

    goto/16 :goto_26

    .line 131
    :cond_fc
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_52

    .line 133
    :cond_100
    const/4 v0, 0x0

    move-object v3, v0

    goto/16 :goto_5d

    .line 160
    :cond_104
    const/4 v0, 0x0

    goto :goto_d0

    .line 163
    :cond_106
    const/4 v0, 0x0

    goto :goto_e6

    .line 164
    :cond_108
    const/4 v0, 0x0

    goto :goto_f4

    .line 168
    :cond_10a
    if-eqz v4, :cond_127

    .line 170
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v4

    .line 171
    if-eqz v4, :cond_1ed

    iget-wide v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    .line 172
    :goto_114
    sget-wide v12, Lcom/isaigu/gymapp/wearable/HrGuard;->personId:J

    cmp-long v11, v0, v12

    if-eqz v11, :cond_127

    .line 173
    sput-wide v0, Lcom/isaigu/gymapp/wearable/HrGuard;->personId:J

    .line 174
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    if-eqz v4, :cond_1f1

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiProfile;->toInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    :goto_124
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setPerson(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 177
    :cond_127
    if-eqz v9, :cond_138

    .line 179
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 180
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->resetFactors()V

    .line 183
    :cond_138
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0, v6, v7, v10, v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->tick(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Z

    move-result v1

    .line 184
    if-eqz v8, :cond_1a2

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v0

    if-nez v0, :cond_1a2

    if-eqz v5, :cond_1a2

    .line 185
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v0

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setRestHr(Landroid/content/Context;I)V

    .line 186
    sget-wide v8, Lcom/isaigu/gymapp/wearable/HrGuard;->personId:J

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v0, v8, v12

    if-eqz v0, :cond_166

    .line 187
    sget-wide v8, Lcom/isaigu/gymapp/wearable/HrGuard;->personId:J

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v0

    invoke-static {v5, v8, v9, v0}, Lcom/isaigu/gymapp/wearable/scale/RestHrStore;->add(Landroid/content/Context;JI)V

    .line 189
    :cond_166
    const-string v4, "hr_guard"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rest="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " upper="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 190
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isManualUpper()Z

    move-result v0

    if-eqz v0, :cond_1f4

    const-string v0, " (trainer)"

    :goto_197
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_1a2
    iget-boolean v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v0, :cond_1f7

    if-eqz v2, :cond_1f7

    .line 193
    if-nez v1, :cond_1b2

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b5

    .line 194
    :cond_1b2
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/HrGuard;->applyFactors(Ljava/util/List;)V

    .line 200
    :cond_1b5
    :goto_1b5
    iget-boolean v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-nez v0, :cond_1c1

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 201
    :cond_1c1
    const-string v0, "hr-guard.csv"

    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v1, v6, v7, v10}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->csvRow(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1cc
    iget-boolean v0, v10, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-nez v0, :cond_1eb

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v0

    if-nez v0, :cond_1eb

    sget-wide v0, Lcom/isaigu/gymapp/wearable/HrGuard;->lastHrMs:J

    sub-long v0, v6, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1eb

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    .line 204
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_208

    :cond_1eb
    const/4 v0, 0x1

    .line 203
    :goto_1ec
    return v0

    .line 171
    :cond_1ed
    const-wide/high16 v0, -0x8000000000000000L

    goto/16 :goto_114

    .line 174
    :cond_1f1
    const/4 v0, 0x0

    goto/16 :goto_124

    .line 190
    :cond_1f4
    const-string v0, " (auto)"

    goto :goto_197

    .line 196
    :cond_1f7
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b5

    .line 197
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->restoreBase()V

    .line 198
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->resetFactors()V

    goto :goto_1b5

    .line 204
    :cond_208
    const/4 v0, 0x0

    goto :goto_1ec

    :cond_20a
    move-object v1, v4

    goto/16 :goto_f6
.end method

.method private static trackTrainerChanges(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 9

    .prologue
    const/4 v6, 0x5

    .line 234
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 235
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 236
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/HrGuard;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v3

    .line 237
    if-nez v1, :cond_2e

    .line 238
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->base:Ljava/util/Map;

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_2d
    return-void

    .line 242
    :cond_2e
    if-eqz v0, :cond_2d

    .line 245
    const/4 v2, 0x0

    :goto_31
    array-length v4, v3

    if-ge v2, v4, :cond_2d

    .line 246
    aget v4, v3, v2

    aget v5, v0, v2

    if-eq v4, v5, :cond_5b

    .line 247
    aget v4, v3, v2

    aput v4, v1, v2

    .line 248
    aget v4, v3, v2

    aput v4, v0, v2

    .line 249
    const/4 v4, 0x6

    if-ne v2, v4, :cond_52

    aget v4, v3, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_52

    .line 250
    aget v4, v3, v6

    aput v4, v1, v6

    .line 251
    aget v4, v3, v6

    aput v4, v0, v6

    .line 253
    :cond_52
    sget-object v4, Lcom/isaigu/gymapp/wearable/HrGuard;->core:Lcom/isaigu/gymapp/wearable/HrGuardCore;

    sget-object v5, Lcom/isaigu/gymapp/wearable/HrGuard;->LEVER_OF:[Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V

    .line 245
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_31
.end method

.method private static values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    const/4 v2, 0x7

    new-array v2, v2, [I

    iget v3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v3, v2, v1

    iget v3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v3, v2, v0

    const/4 v3, 0x2

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 225
    iget-boolean v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v4, :cond_29

    :goto_26
    aput v0, v2, v3

    .line 224
    return-object v2

    :cond_29
    move v0, v1

    .line 225
    goto :goto_26
.end method

.method private static write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuard;->written:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 297
    if-eqz v0, :cond_10

    .line 298
    array-length v3, p2

    invoke-static {p2, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :cond_10
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/HrGuard;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 315
    :goto_1a
    return-void

    .line 303
    :cond_1b
    aget v0, p2, v2

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 304
    aget v0, p2, v1

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 305
    const/4 v0, 0x2

    aget v0, p2, v0

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 306
    const/4 v0, 0x3

    aget v0, p2, v0

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 307
    const/4 v0, 0x4

    aget v0, p2, v0

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 308
    const/4 v0, 0x5

    aget v0, p2, v0

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 309
    const/4 v0, 0x6

    aget v0, p2, v0

    if-ne v0, v1, :cond_5d

    move v0, v1

    :goto_3d
    iput-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 311
    :try_start_3f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_1a

    .line 312
    :catch_43
    move-exception v0

    .line 313
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

    goto :goto_1a

    :cond_5d
    move v0, v2

    .line 309
    goto :goto_3d
.end method

.method public static zoneColor(II)I
    .registers 4

    .prologue
    .line 319
    const/4 v0, 0x1

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v0

    return v0
.end method
