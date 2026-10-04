.class public final Lcom/isaigu/gymapp/ai/MapRunner;
.super Ljava/lang/Object;
.source "MapRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/MapRunner$StopClick;,
        Lcom/isaigu/gymapp/ai/MapRunner$GoClick;,
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

.field private static goButton:Landroid/widget/TextView;

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

.field private static stopButton:Landroid/widget/TextView;

.field private static swapped:I

.field private static final ticker:Ljava/lang/Runnable;

.field private static waiting:Z

.field private static final wrote:Ljava/util/Map;
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

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/isaigu/gymapp/ai/MapRunner$Ticker;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/MapRunner$Ticker;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->FIGURE_T0:J

    .line 84
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
    .line 455
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 534
    :cond_8
    :goto_8
    return-void

    .line 458
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v8

    .line 459
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    if-ne v8, v0, :cond_15

    if-eqz p0, :cond_8

    .line 462
    :cond_15
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    if-ltz v0, :cond_138

    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_138

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget v1, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    move-object v7, v0

    .line 463
    :goto_32
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v9

    .line 464
    sput v8, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 465
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 466
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_a3

    .line 467
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->musclesOf(Lcom/isaigu/gymapp/ai/Workout$Block;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->setMuscles([I)V

    .line 468
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 469
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->restS(I)I

    move-result v0

    .line 470
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/MapClock;->setRestS(D)V

    .line 471
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    if-le v0, v1, :cond_a3

    .line 472
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

    .line 485
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

    if-eqz v0, :cond_24b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 486
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 487
    if-eqz v3, :cond_ab

    .line 491
    if-eqz v7, :cond_e6

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_e6

    iget v1, v7, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    if-lez v1, :cond_e6

    .line 492
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

    .line 494
    :cond_e6
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 495
    if-eqz v1, :cond_1cd

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 496
    :goto_f4
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 497
    const/4 v1, 0x0

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 515
    :goto_fd
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/SafeGuard;->clamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 516
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/MapRunner;->snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_119

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v1, :cond_119

    .line 518
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 521
    :cond_119
    :try_start_119
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_11c
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_11c} :catch_11d

    goto :goto_ab

    .line 522
    :catch_11d
    move-exception v0

    .line 523
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

    goto/16 :goto_ab

    .line 462
    :cond_138
    const/4 v0, 0x0

    move-object v7, v0

    goto/16 :goto_32

    .line 474
    :cond_13c
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 475
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v0

    if-eqz v0, :cond_1b7

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I

    move-result v6

    .line 476
    :goto_14c
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->moveOf(Lcom/isaigu/gymapp/ai/Workout$Block;)I

    move-result v2

    iget-boolean v3, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    .line 477
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v4

    if-lez v4, :cond_1b9

    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/MapClock;->position()D

    move-result-wide v4

    sget-object v10, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v4, v10

    .line 476
    :goto_16e
    invoke-virtual/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/MapDynamics;->startSet(Lcom/isaigu/gymapp/ai/AutoModel$Step;IZDI)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 478
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

    .line 479
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

    .line 478
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a3

    .line 475
    :cond_1b7
    const/4 v6, -0x1

    goto :goto_14c

    .line 477
    :cond_1b9
    const-wide/16 v4, 0x0

    goto :goto_16e

    .line 481
    :cond_1bc
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    iget-boolean v2, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/MapDynamics;->startPlain(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)V

    .line 482
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    goto/16 :goto_a3

    .line 495
    :cond_1cd
    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto/16 :goto_f4

    .line 498
    :cond_1d1
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v4, :cond_1ef

    .line 499
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

    .line 501
    :cond_1ef
    iget v4, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 502
    iget v4, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 503
    const/4 v4, 0x1

    iget v5, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 504
    const/4 v4, 0x1

    iget v5, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 505
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

    .line 507
    iget-boolean v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    iput-boolean v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 508
    iget-boolean v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v1, :cond_241

    .line 509
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 510
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

    .line 512
    :cond_241
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 513
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto/16 :goto_fd

    .line 526
    :cond_24b
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_25a

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_25a

    .line 527
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->writeCycle()V

    goto/16 :goto_8

    .line 531
    :cond_25a
    :try_start_25a
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_25d
    .catch Ljava/lang/Throwable; {:try_start_25a .. :try_end_25d} :catch_25f

    goto/16 :goto_8

    .line 532
    :catch_25f
    move-exception v0

    goto/16 :goto_8
.end method

.method public static arm(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/MapRunner;->begin(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 602
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

    .line 604
    :cond_f
    :goto_f
    return-object v0

    .line 603
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private static begin(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;Z)Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 107
    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 108
    :cond_d
    const-string v0, "\u041a\u0430\u0440\u0442\u0430\u0442\u0430 \u0435 \u043f\u0440\u0430\u0437\u043d\u0430."

    const-string v1, "The map is empty."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_15
    :goto_15
    return-object v0

    .line 110
    :cond_16
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 111
    const-string v0, "\u0415\u0434\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u0432\u0435\u0447\u0435 \u0432\u044a\u0440\u0432\u0438."

    const-string v1, "A map is already running."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 113
    :cond_25
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "auto"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 115
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0432\u044a\u0440\u0432\u044f\u0442 \u0432 \u0410\u0432\u0442\u043e \u0438\u043b\u0438 AI \u2014 \u0410\u0432\u0442\u043e \u043d\u0435 \u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d."

    const-string v1, "Exercise programs run in Auto or AI \u2014 Auto is not unlocked."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 118
    :cond_3c
    const-string v0, "map"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/OutputOwner;->conflict(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    if-nez v0, :cond_15

    .line 122
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 124
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a \u0438 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v1, "Add a participant and connect the suit."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 126
    :cond_57
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    iget-object v5, p1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 127
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->swapForLeader(Landroid/content/Context;)V

    .line 128
    new-instance v0, Lcom/isaigu/gymapp/ai/MapClock;

    sget-object v5, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v0, v5}, Lcom/isaigu/gymapp/ai/MapClock;-><init>(Lcom/isaigu/gymapp/ai/Workout;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    .line 129
    if-eqz p0, :cond_fe

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_73
    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    .line 130
    sput-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 131
    sput-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 132
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 134
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->dynamicsFor(Landroid/content/Context;)Lcom/isaigu/gymapp/ai/MapDynamics;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 136
    :cond_8b
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    .line 137
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 139
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 140
    sput-boolean p2, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    .line 141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a4
    :goto_a4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 142
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    .line 143
    if-nez p2, :cond_c3

    .line 144
    sget-object v7, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    if-eqz v6, :cond_102

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :goto_bc
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_c3
    if-eqz v6, :cond_a4

    .line 147
    sget-object v7, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    const/16 v1, 0x9

    new-array v8, v1, [I

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v1, v8, v2

    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v1, v8, v3

    const/4 v1, 0x2

    iget v9, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    aput v9, v8, v1

    const/4 v1, 0x3

    iget v9, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    aput v9, v8, v1

    const/4 v9, 0x4

    iget-boolean v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_104

    move v1, v3

    :goto_e3
    aput v1, v8, v9

    const/4 v1, 0x5

    iget v9, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    aput v9, v8, v1

    const/4 v1, 0x6

    iget v9, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    aput v9, v8, v1

    const/4 v1, 0x7

    iget v9, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    aput v9, v8, v1

    const/16 v1, 0x8

    iget v6, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    aput v6, v8, v1

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 129
    :cond_fe
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    goto/16 :goto_73

    :cond_102
    move v1, v2

    .line 144
    goto :goto_bc

    :cond_104
    move v1, v2

    .line 147
    goto :goto_e3

    .line 151
    :cond_106
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 152
    if-nez p2, :cond_10e

    .line 153
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->launch()V

    .line 155
    :cond_10e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    .line 156
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->showCard(Landroid/app/Activity;)V

    .line 159
    const-string v1, "map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_170

    const-string v0, "armed "

    :goto_132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " blocks "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 160
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 161
    goto/16 :goto_15

    .line 159
    :cond_170
    const-string v0, "start "

    goto :goto_132
.end method

.method public static currentExercise()I
    .registers 2

    .prologue
    .line 396
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-nez v0, :cond_1f

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 397
    :goto_10
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v0

    :goto_1e
    return v0

    .line 396
    :cond_1f
    const/4 v0, 0x0

    goto :goto_10

    .line 397
    :cond_21
    const/4 v0, -0x1

    goto :goto_1e
.end method

.method private static dynamicsFor(Landroid/content/Context;)Lcom/isaigu/gymapp/ai/MapDynamics;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 209
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 214
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v4

    .line 215
    if-eqz v4, :cond_53

    iget-object v5, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v5, :cond_53

    iget-object v4, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v5, v4

    .line 216
    :goto_14
    if-eqz v5, :cond_55

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    move-object v4, v0

    .line 217
    :goto_1b
    if-eqz v4, :cond_79

    .line 218
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_23

    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 219
    :cond_23
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_2d

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 220
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

    .line 222
    :goto_41
    if-eqz v5, :cond_4d

    if-eqz p0, :cond_4d

    .line 223
    :try_start_45
    iget-wide v4, v5, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoHistory;->of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    move-result-object v4

    iget v1, v4, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4d} :catch_77

    .line 228
    :cond_4d
    :goto_4d
    new-instance v4, Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;-><init>(Lcom/isaigu/gymapp/ai/AiModel$Fitness;III)V

    return-object v4

    :cond_53
    move-object v5, v0

    .line 215
    goto :goto_14

    :cond_55
    move-object v4, v0

    .line 216
    goto :goto_1b

    .line 220
    :cond_57
    :try_start_57
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_59} :catch_5c

    goto :goto_37

    :cond_5a
    move v0, v1

    goto :goto_41

    .line 225
    :catch_5c
    move-exception v4

    move v0, v1

    .line 226
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

    .line 225
    :catch_77
    move-exception v4

    goto :goto_5e

    :cond_79
    move v0, v1

    goto :goto_41
.end method

.method public static go()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isWaiting()Z

    move-result v0

    if-nez v0, :cond_8

    .line 205
    :cond_7
    :goto_7
    return-void

    .line 187
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 188
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    .line 189
    sget-object v6, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    if-eqz v5, :cond_38

    iget v3, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :goto_27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    if-eqz v5, :cond_3a

    iget v0, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v0, :cond_3a

    const/4 v0, 0x1

    :goto_35
    or-int/2addr v0, v1

    move v1, v0

    .line 191
    goto :goto_11

    :cond_38
    move v3, v2

    .line 189
    goto :goto_27

    :cond_3a
    move v0, v2

    .line 190
    goto :goto_35

    .line 192
    :cond_3c
    if-eqz v1, :cond_7

    .line 195
    sput-boolean v2, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    .line 196
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 197
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->launch()V

    .line 198
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    if-eqz v0, :cond_57

    .line 199
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    const-string v1, "\u25a0  \u0421\u0442\u043e\u043f"

    const-string v2, "\u25a0  Stop"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_57
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    if-eqz v0, :cond_62

    .line 202
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :cond_62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V

    goto :goto_7
.end method

.method private static hideCard()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 696
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 698
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_15

    .line 702
    :cond_a
    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    .line 703
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 704
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 705
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    .line 706
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    .line 707
    return-void

    .line 699
    :catch_15
    move-exception v0

    goto :goto_a
.end method

.method public static isRunning()Z
    .registers 1

    .prologue
    .line 88
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

.method public static isWaiting()Z
    .registers 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static launch()V
    .registers 4

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 168
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v2

    add-int/lit8 v2, v2, 0x78

    iput v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    goto :goto_c

    .line 171
    :cond_23
    :try_start_23
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_2c

    .line 173
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_33

    .line 178
    :cond_2c
    :goto_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    .line 179
    return-void

    .line 175
    :catch_33
    move-exception v0

    .line 176
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

    goto :goto_2c
.end method

.method private static leader()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 2

    .prologue
    .line 596
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    .line 597
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
    .line 234
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pat:Ljava/lang/String;

    .line 235
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    .line 236
    const/4 v1, 0x0

    .line 237
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 238
    if-nez v0, :cond_11

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_11
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    if-eqz v3, :cond_3a

    .line 243
    :try_start_15
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v4

    .line 244
    if-eqz v4, :cond_48

    .line 245
    if-nez v0, :cond_46

    .line 246
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pat:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_23} :catch_41

    .line 248
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

    .line 249
    :goto_32
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->zoneOf(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_37} :catch_43

    move-result-object v0

    move-object v1, v0

    :goto_39
    move-object v0, v3

    .line 255
    :cond_3a
    :goto_3a
    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/AutoDynamics;->move(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    return v0

    .line 248
    :cond_3f
    const/4 v2, 0x0

    goto :goto_32

    .line 251
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

    .line 260
    if-eqz p0, :cond_d

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 267
    :cond_d
    :goto_d
    return-object v0

    .line 263
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    if-eqz v1, :cond_17

    .line 264
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 266
    :cond_17
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v1

    .line 267
    if-ltz v1, :cond_d

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v0

    goto :goto_d
.end method

.method public static name()Ljava/lang/String;
    .registers 1

    .prologue
    .line 321
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
    .line 383
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-eq p0, v0, :cond_11

    .line 392
    :cond_10
    :goto_10
    return-void

    .line 386
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->cycleStartMs:J

    .line 387
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->onCycle()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 388
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    goto :goto_10

    .line 389
    :cond_24
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_10

    .line 390
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->writeCycle()V

    goto :goto_10
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
    .line 592
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static showCard(Landroid/app/Activity;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 611
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    .line 613
    :try_start_4
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 614
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 615
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 616
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 618
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 619
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 620
    const-string v1, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x1

    invoke-static {p0, v1, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    .line 621
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v1, :cond_27e

    const-string v1, "\u2715  \u041e\u0442\u043a\u0430\u0437"

    const-string v4, "\u2715  Cancel"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6e
    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 624
    new-instance v4, Lcom/isaigu/gymapp/ai/MapRunner$StopClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/MapRunner$StopClick;-><init>()V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    .line 626
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43020000    # 130.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42280000    # 42.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    const-string v1, "\u25b6  \u0421\u0442\u0430\u0440\u0442"

    const-string v4, "\u25b6  Start"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    .line 628
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/ai/MapRunner$GoClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/MapRunner$GoClick;-><init>()V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    sget-boolean v4, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v4, :cond_288

    :goto_b0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 631
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 632
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 633
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 635
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 636
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 637
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 638
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

    .line 639
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 640
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    sget-wide v4, Lcom/isaigu/gymapp/ai/MapRunner;->FIGURE_T0:J

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 641
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 642
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v0, :cond_28c

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_119
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 643
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

    .line 644
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 645
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 646
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 647
    const-string v3, ""

    const/high16 v4, 0x41b00000    # 22.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    .line 648
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 649
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 650
    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    .line 651
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 652
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    .line 653
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 654
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 658
    const v1, -0xedebe6

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    new-instance v1, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 660
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 661
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 665
    new-instance v1, Lcom/isaigu/gymapp/ai/FloatCard;

    const-string v3, "map_card"

    const/high16 v4, 0x44200000    # 640.0f

    .line 666
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/isaigu/gymapp/ai/FloatCard;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 667
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    .line 668
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 669
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 670
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 671
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 672
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 673
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_276

    .line 675
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 676
    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 677
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 678
    const/high16 v3, 0x44340000    # 720.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 679
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 680
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 681
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 682
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    or-int/lit8 v3, v3, 0x20

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 684
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 685
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 686
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/FloatCard;->attach(Landroid/view/Window;)V

    .line 688
    :cond_276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V

    .line 693
    :goto_27d
    return-void

    .line 622
    :cond_27e
    const-string v1, "\u25a0  \u0421\u0442\u043e\u043f"

    const-string v4, "\u25a0  Stop"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_285
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_285} :catch_28f

    move-result-object v1

    goto/16 :goto_6e

    .line 629
    :cond_288
    const/16 v0, 0x8

    goto/16 :goto_b0

    .line 642
    :cond_28c
    const/4 v0, 0x0

    goto/16 :goto_119

    .line 689
    :catch_28f
    move-exception v0

    .line 690
    const-string v1, "MapRunner.card"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 691
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    goto :goto_27d
.end method

.method private static snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 587
    const/16 v2, 0x9

    new-array v2, v2, [I

    iget v3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v3, v2, v1

    iget v3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v3, v2, v0

    const/4 v3, 0x2

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    aput v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v4, :cond_35

    :goto_1d
    aput v0, v2, v3

    const/4 v0, 0x5

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    aput v1, v2, v0

    const/4 v0, 0x6

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    aput v1, v2, v0

    const/4 v0, 0x7

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    aput v1, v2, v0

    const/16 v0, 0x8

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    aput v1, v2, v0

    return-object v2

    :cond_35
    move v0, v1

    goto :goto_1d
.end method

.method public static start(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/MapRunner;->begin(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 271
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

    .line 272
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    :goto_1c
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 273
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    int-to-double v0, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    :goto_28
    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 274
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 275
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 276
    return-object v2

    .line 272
    :cond_33
    const/4 v0, 0x0

    goto :goto_1c

    .line 273
    :cond_35
    const-wide/16 v0, 0x0

    goto :goto_28
.end method

.method public static stop()V
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 325
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_8

    .line 379
    :goto_7
    return-void

    .line 328
    :cond_8
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    sput-object v13, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 330
    sput-object v13, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 331
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 332
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1f
    :goto_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 333
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v9

    .line 334
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 335
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 336
    if-eqz v9, :cond_97

    if-eqz v2, :cond_97

    .line 338
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 339
    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v10

    .line 340
    array-length v4, v10

    new-array v11, v4, [I

    move v4, v5

    .line 341
    :goto_53
    array-length v6, v10

    if-ge v4, v6, :cond_68

    .line 342
    if-eqz v3, :cond_5e

    aget v6, v10, v4

    aget v12, v3, v4

    if-ne v6, v12, :cond_65

    :cond_5e
    aget v6, v2, v4

    :goto_60
    aput v6, v11, v4

    .line 341
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 342
    :cond_65
    aget v6, v10, v4

    goto :goto_60

    .line 344
    :cond_68
    aget v2, v11, v5

    iput v2, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 345
    aget v2, v11, v7

    iput v2, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 346
    const/4 v2, 0x2

    aget v2, v11, v2

    iput v2, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 347
    const/4 v2, 0x3

    aget v2, v11, v2

    iput v2, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 348
    const/4 v2, 0x4

    aget v2, v11, v2

    if-ne v2, v7, :cond_a9

    move v2, v7

    :goto_80
    iput-boolean v2, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 349
    const/4 v2, 0x5

    aget v2, v11, v2

    iput v2, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 350
    const/4 v2, 0x6

    aget v2, v11, v2

    iput v2, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 351
    const/4 v2, 0x7

    aget v2, v11, v2

    iput v2, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 352
    const/16 v2, 0x8

    aget v2, v11, v2

    iput v2, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 354
    :cond_97
    if-eqz v9, :cond_1f

    if-eqz v1, :cond_1f

    .line 355
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 357
    :try_start_a1
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a4} :catch_a6

    goto/16 :goto_1f

    .line 358
    :catch_a6
    move-exception v0

    goto/16 :goto_1f

    :cond_a9
    move v2, v5

    .line 348
    goto :goto_80

    .line 363
    :cond_ab
    :try_start_ab
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_b8

    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-nez v1, :cond_b8

    .line 365
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_b8} :catch_f8

    .line 370
    :cond_b8
    :goto_b8
    sput-boolean v5, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    .line 371
    const-string v1, "map"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop at block "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    if-eqz v0, :cond_112

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v0

    :goto_d1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sput-object v13, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 373
    sput-object v13, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    .line 374
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 375
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 376
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 377
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 378
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    goto/16 :goto_7

    .line 367
    :catch_f8
    move-exception v0

    .line 368
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

    goto :goto_b8

    .line 371
    :cond_112
    const/4 v0, -0x1

    goto :goto_d1
.end method

.method private static swapForLeader(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 284
    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    .line 286
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v1

    .line 287
    if-nez v1, :cond_e

    .line 317
    :cond_d
    :goto_d
    return-void

    .line 290
    :cond_e
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    .line 291
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v3, :cond_1b

    .line 292
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 294
    :cond_1b
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v3, :cond_27

    .line 295
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 297
    :cond_27
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v3, :cond_33

    .line 298
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 300
    :cond_33
    iget v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 301
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v1, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 302
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    const-string v4, "diastasis"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 303
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHistory;->cardioMachine(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_53

    const/4 v0, 0x1

    :cond_53
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->noCardioMachine:Z

    .line 304
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->avoidFor(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/Set;

    move-result-object v1

    .line 305
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

    .line 306
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 307
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->safer(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 308
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_89} :catch_8a

    goto :goto_61

    .line 314
    :catch_8a
    move-exception v0

    .line 315
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

    .line 311
    :cond_a5
    :try_start_a5
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    if-lez v0, :cond_d

    .line 312
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
    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 416
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

    .line 417
    sput-wide v12, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    .line 418
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 419
    if-nez v0, :cond_28

    .line 420
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    .line 451
    :goto_27
    return-void

    .line 423
    :cond_28
    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v1, :cond_30

    .line 424
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V

    goto :goto_27

    .line 427
    :cond_30
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_c7

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_c7

    const/4 v0, 0x1

    .line 428
    :goto_3b
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v1, :cond_82

    .line 429
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v11

    .line 430
    sget-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 431
    if-eqz v11, :cond_ca

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_ca

    if-eqz v8, :cond_ca

    const/4 v1, 0x1

    move v10, v1

    .line 432
    :goto_53
    if-eqz v10, :cond_cd

    sget-wide v4, Lcom/isaigu/gymapp/ai/MapRunner;->cycleStartMs:J

    sub-long v4, v12, v4

    iget v1, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    int-to-long v6, v1

    const-wide/16 v14, 0x3e8

    mul-long/2addr v6, v14

    cmp-long v1, v4, v6

    if-gez v1, :cond_cd

    const/4 v5, 0x1

    .line 433
    :goto_64
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_cf

    if-eqz v10, :cond_cf

    const/4 v4, 0x1

    :goto_6b
    if-eqz v10, :cond_d1

    iget v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    :goto_6f
    if-eqz v10, :cond_d3

    iget v7, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    :goto_73
    if-eqz v10, :cond_d5

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 434
    :goto_77
    if-eqz v10, :cond_d8

    iget v10, v11, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    int-to-double v10, v10

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v14

    .line 433
    :goto_7f
    invoke-virtual/range {v1 .. v11}, Lcom/isaigu/gymapp/ai/MapDynamics;->advance(DZZIIDD)V

    .line 436
    :cond_82
    if-eqz v0, :cond_90

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/MapClock;->tick(D)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 437
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    .line 439
    :cond_90
    if-eqz v0, :cond_db

    const-wide/16 v0, 0x0

    :goto_94
    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    .line 440
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_df

    .line 441
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

    .line 442
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    goto/16 :goto_27

    .line 427
    :cond_c7
    const/4 v0, 0x0

    goto/16 :goto_3b

    .line 431
    :cond_ca
    const/4 v1, 0x0

    move v10, v1

    goto :goto_53

    .line 432
    :cond_cd
    const/4 v5, 0x0

    goto :goto_64

    .line 433
    :cond_cf
    const/4 v4, 0x0

    goto :goto_6b

    :cond_d1
    const/4 v6, 0x0

    goto :goto_6f

    :cond_d3
    const/4 v7, 0x0

    goto :goto_73

    :cond_d5
    const-wide/16 v8, 0x0

    goto :goto_77

    .line 434
    :cond_d8
    const-wide/16 v10, 0x0

    goto :goto_7f

    .line 439
    :cond_db
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    add-double/2addr v0, v2

    goto :goto_94

    .line 445
    :cond_df
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 446
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    goto/16 :goto_27

    .line 449
    :cond_ec
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->currentExercise()I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 450
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V

    goto/16 :goto_27
.end method

.method private static updateCard(J)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 710
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 744
    :cond_13
    :goto_13
    return-void

    .line 713
    :cond_14
    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v0, :cond_1c

    .line 714
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->updateWaiting()V

    goto :goto_13

    .line 717
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v2

    .line 718
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v3

    .line 719
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

    .line 720
    sget-object v5, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_120

    const-string v0, ""

    :goto_4c
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

    .line 721
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    if-lez v0, :cond_12a

    const-string v0, "  \u00b7  \u043f\u043e-\u0449\u0430\u0434\u044f\u0449\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v6, "  \u00b7  gentler exercises for the client"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/MapClock;->position()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setPlayhead(F)V

    .line 723
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 724
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 725
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

    .line 726
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    :goto_db
    const-string v2, ""

    .line 736
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    :goto_e0
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b4

    .line 737
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 738
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_1af

    .line 739
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

    .line 743
    :goto_119
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13

    .line 720
    :cond_120
    const-string v0, "\u0410\u0432\u0442\u043e \u00b7 "

    const-string v7, "Auto \u00b7 "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4c

    .line 721
    :cond_12a
    const-string v0, ""

    goto/16 :goto_7f

    .line 729
    :cond_12e
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_19b

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    :goto_138
    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 730
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_19d

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_149
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 732
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_1a6

    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    :goto_159
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Hz \u00b7 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1a9

    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    :goto_167
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 733
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1ac

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

    :goto_18e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_db

    :cond_19b
    move-object v0, v1

    .line 729
    goto :goto_138

    .line 730
    :cond_19d
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "Impulse"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_149

    .line 732
    :cond_1a6
    iget v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_159

    :cond_1a9
    iget v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_167

    .line 733
    :cond_1ac
    const-string v0, ""

    goto :goto_18e

    .line 736
    :cond_1af
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_e0

    :cond_1b4
    move-object v0, v2

    goto/16 :goto_119
.end method

.method private static updateWaiting()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 749
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 750
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 751
    if-eqz v0, :cond_25

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v0, :cond_25

    const/4 v0, 0x1

    :goto_22
    or-int/2addr v0, v1

    move v1, v0

    .line 752
    goto :goto_b

    :cond_25
    move v0, v2

    .line 751
    goto :goto_22

    .line 753
    :cond_27
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0410\u0432\u0442\u043e \u00b7 "

    const-string v5, "Auto \u00b7 "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  \u00b7  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u043d\u0430\u0441\u0442\u0440\u043e\u0439\u0432\u0430\u043d\u0435"

    const-string v5, "setting up"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setPlayhead(F)V

    .line 756
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 757
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 762
    :goto_7b
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v0, :cond_81

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    :cond_81
    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 763
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    const-string v3, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v4, "Set the strength"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    const-string v3, "\u041e\u0431\u0449\u0430\u0442\u0430 \u0441\u0438\u043b\u0430 \u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u0430\u043d\u0430\u043b \u2014 \u043e\u0442 \u0433\u043b\u0430\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d. \u041f\u043e\u0441\u043b\u0435 \u25b6 \u0421\u0442\u0430\u0440\u0442."

    const-string v4, "The total strength and each channel \u2014 on the main screen. Then \u25b6 Start."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    if-eqz v0, :cond_d7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041f\u044a\u0440\u0432\u043e: "

    const-string v5, "First: "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    if-eqz v0, :cond_d6

    .line 768
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 769
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    if-eqz v1, :cond_da

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_d3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 771
    :cond_d6
    return-void

    .line 766
    :cond_d7
    const-string v0, ""

    goto :goto_c1

    .line 769
    :cond_da
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_d3

    :cond_dd
    move-object v0, v3

    goto :goto_7b
.end method

.method private static writeCycle()V
    .registers 14

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 538
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 539
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 583
    :cond_14
    :goto_14
    return-void

    .line 542
    :cond_15
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/MapDynamics;->cycle(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    .line 543
    sput-object v6, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 544
    iget v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v1, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 546
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v0

    :cond_34
    :goto_34
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 547
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v8

    .line 548
    if-eqz v8, :cond_34

    .line 551
    iget v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v4, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 552
    iget v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iput v4, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 553
    iget v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 554
    iget v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 555
    iget v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v4, :cond_da

    iget-wide v10, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-lez v4, :cond_da

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v4

    if-eqz v4, :cond_da

    move v4, v2

    .line 556
    :goto_71
    iput-boolean v4, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 557
    if-eqz v4, :cond_8a

    .line 558
    iget v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iput v4, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 559
    iget v4, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v10, v4

    iget-wide v12, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v4, v10

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 561
    :cond_8a
    iget v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v4, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 562
    iget v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v4, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 563
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/SafeGuard;->clamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 564
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/MapRunner;->snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v9

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    if-eqz v1, :cond_aa

    .line 566
    iget v1, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget v3, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v1

    move v1, v5

    .line 569
    :cond_aa
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_ba

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v4, :cond_ba

    .line 570
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v8, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v8, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 573
    :cond_ba
    :try_start_ba
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_bd} :catch_bf

    goto/16 :goto_34

    .line 574
    :catch_bf
    move-exception v0

    .line 575
    const-string v4, "map"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onParamsChange: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_34

    :cond_da
    move v4, v5

    .line 555
    goto :goto_71

    .line 578
    :cond_dc
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    int-to-double v2, v3

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/MapClock;->setCycleS(D)V

    .line 580
    :try_start_e2
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_e5} :catch_e7

    goto/16 :goto_14

    .line 581
    :catch_e7
    move-exception v0

    goto/16 :goto_14
.end method
