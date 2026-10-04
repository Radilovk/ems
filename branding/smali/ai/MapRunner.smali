.class public final Lcom/isaigu/gymapp/ai/MapRunner;
.super Ljava/lang/Object;
.source "MapRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/MapRunner$StopClick;,
        Lcom/isaigu/gymapp/ai/MapRunner$Ticker;
    }
.end annotation


# static fields
.field private static final FIGURE_T0:J

.field static final IDLE_MAX_S:D = 300.0

.field private static final TICK_MS:J = 0xfaL

.field private static app:Landroid/content/Context;

.field private static approach:Ljava/lang/String;

.field private static final base:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static clock:Lcom/isaigu/gymapp/ai/MapClock;

.field private static cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

.field private static cycleStartMs:J

.field private static detail:Landroid/widget/TextView;

.field private static dialog:Landroid/app/Dialog;

.field private static dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

.field private static figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

.field private static final handler:Landroid/os/Handler;

.field private static head:Landroid/widget/TextView;

.field private static idleS:D

.field private static lastIndex:I

.field private static lastTickMs:J

.field private static line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

.field private static map:Lcom/isaigu/gymapp/ai/Workout;

.field private static name:Landroid/widget/TextView;

.field private static next:Landroid/widget/TextView;

.field private static final own:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "[I>;"
        }
    .end annotation
.end field

.field private static swapped:I

.field private static final ticker:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/isaigu/gymapp/ai/MapRunner$Ticker;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/MapRunner$Ticker;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->FIGURE_T0:J

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 39
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->tick()V

    return-void
.end method

.method static synthetic access$100()Lcom/isaigu/gymapp/ai/Workout;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static apply(Z)V
    .registers 13

    .prologue
    .line 391
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 468
    :cond_8
    :goto_8
    return-void

    .line 394
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v8

    .line 395
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    if-ne v8, v0, :cond_15

    if-eqz p0, :cond_8

    .line 398
    :cond_15
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    if-ltz v0, :cond_12b

    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_12b

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    move-object v7, v0

    .line 399
    :goto_32
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v9

    .line 400
    sput v8, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 401
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 402
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_a3

    .line 403
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->musclesOf(Lcom/isaigu/gymapp/ai/Workout$Block;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->setMuscles([I)V

    .line 404
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 405
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->restS(I)I

    move-result v0

    .line 406
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/MapClock;->setRestS(D)V

    .line 407
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    if-le v0, v1, :cond_a3

    .line 408
    const-string v1, "map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2192 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s (fatigue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/MapDynamics;->fatigue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " %)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_a3
    :goto_a3
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ab
    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 422
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 423
    if-eqz v3, :cond_ab

    .line 427
    if-eqz v7, :cond_e6

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_e6

    iget v1, v7, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    if-lez v1, :cond_e6

    .line 428
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    const/16 v4, 0x64

    iget v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    iget v6, v7, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_e6
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 431
    if-eqz v1, :cond_1c0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 432
    :goto_f4
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v4

    if-eqz v4, :cond_1c4

    .line 433
    const/4 v1, 0x0

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 451
    :goto_fd
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_10d

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v1, :cond_10d

    .line 452
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 455
    :cond_10d
    :try_start_10d
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_110} :catch_111

    goto :goto_ab

    .line 456
    :catch_111
    move-exception v0

    .line 457
    const-string v1, "map"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onParamsChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    .line 398
    :cond_12b
    const/4 v0, 0x0

    move-object v7, v0

    goto/16 :goto_32

    .line 410
    :cond_12f
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 411
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v0

    if-eqz v0, :cond_1aa

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I

    move-result v6

    .line 412
    :goto_13f
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->moveOf(Lcom/isaigu/gymapp/ai/Workout$Block;)I

    move-result v2

    iget-boolean v3, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    .line 413
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v4

    if-lez v4, :cond_1ac

    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/MapClock;->position()D

    move-result-wide v4

    sget-object v10, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v4, v10

    .line 412
    :goto_161
    invoke-virtual/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/MapDynamics;->startSet(Lcom/isaigu/gymapp/ai/AutoModel$Step;IZDI)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 414
    const-string v0, "map"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " approach "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fatigue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 415
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/MapDynamics;->fatigue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a3

    .line 411
    :cond_1aa
    const/4 v6, -0x1

    goto :goto_13f

    .line 413
    :cond_1ac
    const-wide/16 v4, 0x0

    goto :goto_161

    .line 417
    :cond_1af
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    iget-boolean v2, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/MapDynamics;->startPlain(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)V

    .line 418
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    goto/16 :goto_a3

    .line 431
    :cond_1c0
    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto/16 :goto_f4

    .line 434
    :cond_1c4
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v4, :cond_1e2

    .line 435
    const/4 v4, 0x0

    const/16 v5, 0x64

    iget v6, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    mul-int/2addr v1, v6

    int-to-float v1, v1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto/16 :goto_fd

    .line 437
    :cond_1e2
    iget v4, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 438
    iget v4, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 439
    const/4 v4, 0x1

    iget v5, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 440
    const/4 v4, 0x1

    iget v5, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 441
    const/4 v4, 0x0

    const/16 v5, 0x64

    iget v6, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    mul-int/2addr v1, v6

    int-to-float v1, v1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 443
    iget-boolean v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    iput-boolean v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 444
    iget-boolean v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v1, :cond_234

    .line 445
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 446
    const/4 v1, 0x1

    iget v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v5, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 448
    :cond_234
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 449
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto/16 :goto_fd

    .line 460
    :cond_23e
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_24d

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_24d

    .line 461
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->writeCycle()V

    goto/16 :goto_8

    .line 465
    :cond_24d
    :try_start_24d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_250
    .catch Ljava/lang/Throwable; {:try_start_24d .. :try_end_250} :catch_252

    goto/16 :goto_8

    .line 466
    :catch_252
    move-exception v0

    goto/16 :goto_8
.end method

.method private static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 522
    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    .line 524
    :cond_f
    :goto_f
    return-object v0

    .line 523
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static currentExercise()I
    .registers 2

    .prologue
    .line 336
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 337
    :goto_c
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v0

    :goto_1a
    return v0

    .line 336
    :cond_1b
    const/4 v0, 0x0

    goto :goto_c

    .line 337
    :cond_1d
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method private static dynamicsFor(Landroid/content/Context;)Lcom/isaigu/gymapp/ai/MapDynamics;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 158
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 163
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v4

    .line 164
    if-eqz v4, :cond_53

    iget-object v5, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v5, :cond_53

    iget-object v4, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v5, v4

    .line 165
    :goto_14
    if-eqz v5, :cond_55

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    move-object v4, v0

    .line 166
    :goto_1b
    if-eqz v4, :cond_79

    .line 167
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_23

    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 168
    :cond_23
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_2d

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 169
    :cond_2d
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_5a

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_57

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_37
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_40} :catch_5c

    move-result v0

    .line 171
    :goto_41
    if-eqz v5, :cond_4d

    if-eqz p0, :cond_4d

    .line 172
    :try_start_45
    iget-wide v4, v5, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoHistory;->of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    move-result-object v4

    iget v1, v4, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4d} :catch_77

    .line 177
    :cond_4d
    :goto_4d
    new-instance v4, Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;-><init>(Lcom/isaigu/gymapp/ai/AiModel$Fitness;III)V

    return-object v4

    :cond_53
    move-object v5, v0

    .line 164
    goto :goto_14

    :cond_55
    move-object v4, v0

    .line 165
    goto :goto_1b

    .line 169
    :cond_57
    :try_start_57
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_59} :catch_5c

    goto :goto_37

    :cond_5a
    move v0, v1

    goto :goto_41

    .line 174
    :catch_5c
    move-exception v4

    move v0, v1

    .line 175
    :goto_5e
    const-string v5, "map"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dynamics: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 174
    :catch_77
    move-exception v4

    goto :goto_5e

    :cond_79
    move v0, v1

    goto :goto_41
.end method

.method private static hideCard()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 608
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 610
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_11

    .line 614
    :cond_a
    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    .line 615
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 616
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 617
    return-void

    .line 611
    :catch_11
    move-exception v0

    goto :goto_a
.end method

.method public static isRunning()Z
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static leader()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 2

    .prologue
    .line 516
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    .line 517
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    goto :goto_b
.end method

.method static moveOf(Lcom/isaigu/gymapp/ai/Workout$Block;)I
    .registers 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pat:Ljava/lang/String;

    .line 184
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    .line 185
    const/4 v1, 0x0

    .line 186
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 187
    if-nez v0, :cond_11

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_11
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    if-eqz v3, :cond_3a

    .line 192
    :try_start_15
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v4

    .line 193
    if-eqz v4, :cond_48

    .line 194
    if-nez v0, :cond_46

    .line 195
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pat:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_23} :catch_41

    .line 197
    :goto_23
    :try_start_23
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "core_static"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_31
    const/4 v2, 0x1

    .line 198
    :goto_32
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->zoneOf(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_37} :catch_43

    move-result-object v0

    move-object v1, v0

    :goto_39
    move-object v0, v3

    .line 204
    :cond_3a
    :goto_3a
    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/AutoDynamics;->move(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    return v0

    .line 197
    :cond_3f
    const/4 v2, 0x0

    goto :goto_32

    .line 200
    :catch_41
    move-exception v3

    goto :goto_3a

    :catch_43
    move-exception v0

    move-object v0, v3

    goto :goto_3a

    :cond_46
    move-object v3, v0

    goto :goto_23

    :cond_48
    move-object v3, v0

    goto :goto_39
.end method

.method static musclesOf(Lcom/isaigu/gymapp/ai/Workout$Block;)[I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 209
    if-eqz p0, :cond_d

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 216
    :cond_d
    :goto_d
    return-object v0

    .line 212
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    if-eqz v1, :cond_17

    .line 213
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 215
    :cond_17
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v1

    .line 216
    if-ltz v1, :cond_d

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v0

    goto :goto_d
.end method

.method public static name()Ljava/lang/String;
    .registers 1

    .prologue
    .line 270
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static onPulseCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 323
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-eq p0, v0, :cond_d

    .line 332
    :cond_c
    :goto_c
    return-void

    .line 326
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->cycleStartMs:J

    .line 327
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->onCycle()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 328
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    goto :goto_c

    .line 329
    :cond_20
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_c

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->writeCycle()V

    goto :goto_c
.end method

.method private static rows()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static showCard(Landroid/app/Activity;)V
    .registers 9

    .prologue
    .line 531
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    .line 533
    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 534
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 535
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 538
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 539
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 540
    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    .line 541
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    const-string v2, "\u25a0  \u0421\u0442\u043e\u043f"

    const-string v3, "\u25a0  Stop"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 543
    new-instance v3, Lcom/isaigu/gymapp/ai/MapRunner$StopClick;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/MapRunner$StopClick;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43020000    # 130.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42280000    # 42.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 548
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 549
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 550
    const v0, -0xedebe6

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 552
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    sget-wide v4, Lcom/isaigu/gymapp/ai/MapRunner;->FIGURE_T0:J

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 553
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 554
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v0, :cond_231

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_cc
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 555
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43040000    # 132.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42c40000    # 98.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 557
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 558
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 559
    const-string v3, ""

    const/high16 v4, 0x41b00000    # 22.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    .line 560
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 561
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 562
    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    .line 563
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 564
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    .line 565
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 570
    const v2, -0xedebe6

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    new-instance v2, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 572
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 573
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 577
    new-instance v2, Lcom/isaigu/gymapp/ai/FloatCard;

    const-string v3, "map_card"

    const/high16 v4, 0x44200000    # 640.0f

    .line 578
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/isaigu/gymapp/ai/FloatCard;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 579
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    .line 580
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 581
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 582
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 583
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 584
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 585
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_229

    .line 587
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 589
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 590
    const/high16 v3, 0x44340000    # 720.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 591
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 592
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 593
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 594
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    or-int/lit8 v3, v3, 0x20

    and-int/lit8 v3, v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 596
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 597
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 598
    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/ai/FloatCard;->attach(Landroid/view/Window;)V

    .line 600
    :cond_229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V
    :try_end_230
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_230} :catch_234

    .line 605
    :goto_230
    return-void

    .line 554
    :cond_231
    const/4 v0, 0x0

    goto/16 :goto_cc

    .line 601
    :catch_234
    move-exception v0

    .line 602
    const-string v1, "MapRunner.card"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    goto :goto_230
.end method

.method public static start(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 85
    :cond_d
    const-string v0, "\u041a\u0430\u0440\u0442\u0430\u0442\u0430 \u0435 \u043f\u0440\u0430\u0437\u043d\u0430."

    const-string v1, "The map is empty."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_15
    return-object v0

    .line 87
    :cond_16
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 88
    const-string v0, "\u0415\u0434\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u0432\u0435\u0447\u0435 \u0432\u044a\u0440\u0432\u0438."

    const-string v1, "A map is already running."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 90
    :cond_25
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "auto"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 92
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0432\u044a\u0440\u0432\u044f\u0442 \u0432 \u0410\u0432\u0442\u043e \u0438\u043b\u0438 AI \u2014 \u0410\u0432\u0442\u043e \u043d\u0435 \u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d."

    const-string v1, "Exercise programs run in Auto or AI \u2014 Auto is not unlocked."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 96
    :cond_3c
    :try_start_3c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ownsOutput()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_53

    .line 97
    :cond_4a
    const-string v0, "\u041f\u044a\u0440\u0432\u043e \u0441\u043f\u0440\u0438 AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430."

    const-string v1, "Stop the AI session first."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 99
    :cond_53
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 100
    const-string v0, "\u041f\u044a\u0440\u0432\u043e \u0441\u043f\u0440\u0438 \u0410\u0432\u0442\u043e."

    const-string v1, "Stop Auto first."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 102
    :cond_62
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->isSyncActive()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 103
    :cond_6e
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u043c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0438\u044f \u0441\u0438\u043d\u0445\u0440\u043e\u043d."

    const-string v1, "Turn music sync off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 105
    :cond_77
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 106
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0430\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0430 \u0442\u0430\u0439\u043c\u0435\u0440\u0430."

    const-string v1, "Disarm the timer block program."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_84} :catch_86

    move-result-object v0

    goto :goto_15

    .line 108
    :catch_86
    move-exception v0

    .line 110
    :cond_87
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v5

    .line 111
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 112
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a \u0438 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v1, "Add a participant and connect the suit."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 114
    :cond_9b
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 115
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->swapForLeader(Landroid/content/Context;)V

    .line 116
    new-instance v0, Lcom/isaigu/gymapp/ai/MapClock;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/MapClock;-><init>(Lcom/isaigu/gymapp/ai/Workout;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    .line 117
    if-eqz p0, :cond_139

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_b7
    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    .line 118
    sput-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 119
    sput-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 120
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_cf

    .line 122
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->dynamicsFor(Landroid/content/Context;)Lcom/isaigu/gymapp/ai/MapDynamics;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 124
    :cond_cf
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    .line 125
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e1
    :goto_e1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 128
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v7

    .line 129
    sget-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    if-eqz v7, :cond_13d

    iget v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :goto_f7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    if-eqz v7, :cond_e1

    .line 131
    sget-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    const/16 v1, 0x9

    new-array v9, v1, [I

    iget v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v1, v9, v2

    iget v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v1, v9, v3

    const/4 v1, 0x2

    iget v10, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    aput v10, v9, v1

    const/4 v1, 0x3

    iget v10, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    aput v10, v9, v1

    const/4 v10, 0x4

    iget-boolean v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_13f

    move v1, v3

    :goto_11e
    aput v1, v9, v10

    const/4 v1, 0x5

    iget v10, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    aput v10, v9, v1

    const/4 v1, 0x6

    iget v10, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    aput v10, v9, v1

    const/4 v1, 0x7

    iget v10, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    aput v10, v9, v1

    const/16 v1, 0x8

    iget v7, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    aput v7, v9, v1

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e1

    .line 117
    :cond_139
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    goto/16 :goto_b7

    :cond_13d
    move v1, v2

    .line 129
    goto :goto_f7

    :cond_13f
    move v1, v2

    .line 131
    goto :goto_11e

    .line 135
    :cond_141
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 136
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    .line 137
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_162

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 138
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v2

    add-int/lit8 v2, v2, 0x78

    iput v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    goto :goto_14b

    .line 141
    :cond_162
    :try_start_162
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_16b

    .line 143
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_16b
    .catch Ljava/lang/Throwable; {:try_start_162 .. :try_end_16b} :catch_1cb

    .line 148
    :cond_16b
    :goto_16b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    .line 149
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->showCard(Landroid/app/Activity;)V

    .line 152
    const-string v0, "map"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blocks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 153
    goto/16 :goto_15

    .line 145
    :catch_1cb
    move-exception v0

    .line 146
    const-string v1, "map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16b
.end method

.method static stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 220
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    iget v3, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 221
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    :goto_1c
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 222
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    int-to-double v0, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    :goto_28
    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 223
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 224
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 225
    return-object v2

    .line 221
    :cond_33
    const/4 v0, 0x0

    goto :goto_1c

    .line 222
    :cond_35
    const-wide/16 v0, 0x0

    goto :goto_28
.end method

.method public static stop()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 274
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_8

    .line 319
    :goto_7
    return-void

    .line 277
    :cond_8
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    sput-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 279
    sput-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 280
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 281
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 282
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v7

    .line 283
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 284
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 285
    if-eqz v7, :cond_72

    if-eqz v2, :cond_72

    .line 286
    aget v3, v2, v5

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 287
    aget v3, v2, v4

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 288
    const/4 v3, 0x2

    aget v3, v2, v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 289
    const/4 v3, 0x3

    aget v3, v2, v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 290
    const/4 v3, 0x4

    aget v3, v2, v3

    if-ne v3, v4, :cond_82

    move v3, v4

    :goto_5b
    iput-boolean v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 291
    const/4 v3, 0x5

    aget v3, v2, v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 292
    const/4 v3, 0x6

    aget v3, v2, v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 293
    const/4 v3, 0x7

    aget v3, v2, v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 294
    const/16 v3, 0x8

    aget v2, v2, v3

    iput v2, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 296
    :cond_72
    if-eqz v7, :cond_1f

    if-eqz v1, :cond_1f

    .line 297
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 299
    :try_start_7c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_1f

    .line 300
    :catch_80
    move-exception v0

    goto :goto_1f

    :cond_82
    move v3, v5

    .line 290
    goto :goto_5b

    .line 305
    :cond_84
    :try_start_84
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_8d

    .line 307
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_8d} :catch_c6

    .line 312
    :cond_8d
    :goto_8d
    const-string v1, "map"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop at block "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    if-eqz v0, :cond_e0

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v0

    :goto_a4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sput-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 314
    sput-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    .line 315
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 316
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 317
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 318
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    goto/16 :goto_7

    .line 309
    :catch_c6
    move-exception v0

    .line 310
    const-string v1, "map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 312
    :cond_e0
    const/4 v0, -0x1

    goto :goto_a4
.end method

.method private static swapForLeader(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 233
    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    .line 235
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v1

    .line 236
    if-nez v1, :cond_e

    .line 266
    :cond_d
    :goto_d
    return-void

    .line 239
    :cond_e
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    .line 240
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v3, :cond_1b

    .line 241
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 243
    :cond_1b
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v3, :cond_27

    .line 244
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 246
    :cond_27
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v3, :cond_33

    .line 247
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 249
    :cond_33
    iget v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 250
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v1, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 251
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    const-string v4, "diastasis"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 252
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHistory;->cardioMachine(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_53

    const/4 v0, 0x1

    :cond_53
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->noCardioMachine:Z

    .line 253
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->avoidFor(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/Set;

    move-result-object v1

    .line 254
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_61
    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 255
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 256
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->safer(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 257
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_89} :catch_8a

    goto :goto_61

    .line 263
    :catch_8a
    move-exception v0

    .line 264
    const-string v1, "map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 260
    :cond_a5
    :try_start_a5
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    if-lez v0, :cond_d

    .line 261
    const-string v0, "map"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swapped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for the client\'s state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_c9} :catch_8a

    goto/16 :goto_d
.end method

.method private static tick()V
    .registers 16

    .prologue
    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 356
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x7d0

    sget-wide v4, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    sub-long v4, v12, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v2, v0, v2

    .line 357
    sput-wide v12, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    .line 358
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 359
    if-nez v0, :cond_28

    .line 360
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    .line 387
    :goto_27
    return-void

    .line 363
    :cond_28
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_bf

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_bf

    const/4 v0, 0x1

    .line 364
    :goto_33
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v1, :cond_7a

    .line 365
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v11

    .line 366
    sget-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 367
    if-eqz v11, :cond_c2

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_c2

    if-eqz v8, :cond_c2

    const/4 v1, 0x1

    move v10, v1

    .line 368
    :goto_4b
    if-eqz v10, :cond_c5

    sget-wide v4, Lcom/isaigu/gymapp/ai/MapRunner;->cycleStartMs:J

    sub-long v4, v12, v4

    iget v1, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    int-to-long v6, v1

    const-wide/16 v14, 0x3e8

    mul-long/2addr v6, v14

    cmp-long v1, v4, v6

    if-gez v1, :cond_c5

    const/4 v5, 0x1

    .line 369
    :goto_5c
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_c7

    if-eqz v10, :cond_c7

    const/4 v4, 0x1

    :goto_63
    if-eqz v10, :cond_c9

    iget v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    :goto_67
    if-eqz v10, :cond_cb

    iget v7, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    :goto_6b
    if-eqz v10, :cond_cd

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 370
    :goto_6f
    if-eqz v10, :cond_d0

    iget v10, v11, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    int-to-double v10, v10

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v14

    .line 369
    :goto_77
    invoke-virtual/range {v1 .. v11}, Lcom/isaigu/gymapp/ai/MapDynamics;->advance(DZZIIDD)V

    .line 372
    :cond_7a
    if-eqz v0, :cond_88

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/MapClock;->tick(D)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 373
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    .line 375
    :cond_88
    if-eqz v0, :cond_d3

    const-wide/16 v0, 0x0

    :goto_8c
    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    .line 376
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d7

    .line 377
    const-string v0, "map"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s \u2014 closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    goto/16 :goto_27

    .line 363
    :cond_bf
    const/4 v0, 0x0

    goto/16 :goto_33

    .line 367
    :cond_c2
    const/4 v1, 0x0

    move v10, v1

    goto :goto_4b

    .line 368
    :cond_c5
    const/4 v5, 0x0

    goto :goto_5c

    .line 369
    :cond_c7
    const/4 v4, 0x0

    goto :goto_63

    :cond_c9
    const/4 v6, 0x0

    goto :goto_67

    :cond_cb
    const/4 v7, 0x0

    goto :goto_6b

    :cond_cd
    const-wide/16 v8, 0x0

    goto :goto_6f

    .line 370
    :cond_d0
    const-wide/16 v10, 0x0

    goto :goto_77

    .line 375
    :cond_d3
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    add-double/2addr v0, v2

    goto :goto_8c

    .line 381
    :cond_d7
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 382
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    goto/16 :goto_27

    .line 385
    :cond_e4
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->currentExercise()I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 386
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V

    goto/16 :goto_27
.end method

.method private static updateCard(J)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 620
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 650
    :cond_13
    :goto_13
    return-void

    .line 623
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v2

    .line 624
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v3

    .line 625
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v0

    int-to-double v4, v0

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->position()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 626
    sget-object v5, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_118

    const-string v0, ""

    :goto_44
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "  \u00b7  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\u043e\u0441\u0442\u0430\u0432\u0430\u0442 "

    const-string v7, "left "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-double v6, v4

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 627
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    if-lez v0, :cond_122

    const-string v0, "  \u00b7  \u043f\u043e-\u0449\u0430\u0434\u044f\u0449\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v6, "  \u00b7  gentler exercises for the client"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/MapClock;->position()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setPlayhead(F)V

    .line 629
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 630
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 631
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 "

    const-string v4, "Rest "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/MapClock;->restLength()D

    move-result-wide v4

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/MapClock;->getBlockS()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :goto_d3
    const-string v2, ""

    .line 642
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    :goto_d8
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1ac

    .line 643
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 644
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_1a7

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v3, "Next: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    :goto_111
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13

    .line 626
    :cond_118
    const-string v0, "\u0410\u0432\u0442\u043e \u00b7 "

    const-string v7, "Auto \u00b7 "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 627
    :cond_122
    const-string v0, ""

    goto/16 :goto_77

    .line 635
    :cond_126
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_193

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    :goto_130
    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 636
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_195

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_141
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 638
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_19e

    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    :goto_151
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Hz \u00b7 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1a1

    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    :goto_15f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 639
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  \u00b7  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_186
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d3

    :cond_193
    move-object v0, v1

    .line 635
    goto :goto_130

    .line 636
    :cond_195
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "Impulse"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_141

    .line 638
    :cond_19e
    iget v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_151

    :cond_1a1
    iget v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_15f

    .line 639
    :cond_1a4
    const-string v0, ""

    goto :goto_186

    .line 642
    :cond_1a7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_d8

    :cond_1ac
    move-object v0, v2

    goto/16 :goto_111
.end method

.method private static writeCycle()V
    .registers 10

    .prologue
    const/4 v2, 0x1

    .line 472
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 473
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v1, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 509
    :cond_13
    :goto_13
    return-void

    .line 476
    :cond_14
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/MapDynamics;->cycle(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    .line 477
    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 478
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/MapClock;->setCycleS(D)V

    .line 479
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_37
    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 480
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    .line 481
    if-eqz v5, :cond_37

    .line 484
    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 485
    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 486
    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 487
    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 488
    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v1, :cond_c4

    iget-wide v6, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-lez v1, :cond_c4

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    if-eqz v1, :cond_c4

    move v1, v2

    .line 489
    :goto_74
    iput-boolean v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 490
    if-eqz v1, :cond_8d

    .line 491
    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 492
    iget v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v6, v1

    iget-wide v8, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 494
    :cond_8d
    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 495
    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 496
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_a5

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v1, :cond_a5

    .line 497
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v5, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 500
    :cond_a5
    :try_start_a5
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_37

    .line 501
    :catch_a9
    move-exception v0

    .line 502
    const-string v1, "map"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onParamsChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 488
    :cond_c4
    const/4 v1, 0x0

    goto :goto_74

    .line 506
    :cond_c6
    :try_start_c6
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_c9} :catch_cb

    goto/16 :goto_13

    .line 507
    :catch_cb
    move-exception v0

    goto/16 :goto_13
.end method
