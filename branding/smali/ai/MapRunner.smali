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
.field static final CALIB_RISE_PER_S:D = 5.0

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

.field private static final calibAllowed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static calibRunS:D

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

.field private static final ownStrength:Ljava/util/Map;
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

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->ownStrength:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->FIGURE_T0:J

    .line 91
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
    .line 570
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 649
    :cond_8
    :goto_8
    return-void

    .line 573
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v8

    .line 574
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    if-ne v8, v0, :cond_15

    if-eqz p0, :cond_8

    .line 577
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

    .line 578
    :goto_32
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v9

    .line 579
    sput v8, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 580
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 581
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_a3

    .line 582
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->musclesOf(Lcom/isaigu/gymapp/ai/Workout$Block;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->setMuscles([I)V

    .line 583
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 584
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->restS(I)I

    move-result v0

    .line 585
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/MapClock;->setRestS(D)V

    .line 586
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    if-le v0, v1, :cond_a3

    .line 587
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

    .line 600
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

    .line 601
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 602
    if-eqz v3, :cond_ab

    .line 606
    if-eqz v7, :cond_e6

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_e6

    iget v1, v7, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    if-lez v1, :cond_e6

    .line 607
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

    .line 609
    :cond_e6
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 610
    if-eqz v1, :cond_1cd

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 611
    :goto_f4
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 612
    const/4 v1, 0x0

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 630
    :goto_fd
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/SafeGuard;->clamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 631
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/MapRunner;->snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_119

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v1, :cond_119

    .line 633
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 636
    :cond_119
    :try_start_119
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_11c
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_11c} :catch_11d

    goto :goto_ab

    .line 637
    :catch_11d
    move-exception v0

    .line 638
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

    .line 577
    :cond_138
    const/4 v0, 0x0

    move-object v7, v0

    goto/16 :goto_32

    .line 589
    :cond_13c
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 590
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v0

    if-eqz v0, :cond_1b7

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I

    move-result v6

    .line 591
    :goto_14c
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->moveOf(Lcom/isaigu/gymapp/ai/Workout$Block;)I

    move-result v2

    iget-boolean v3, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    .line 592
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

    .line 591
    :goto_16e
    invoke-virtual/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/MapDynamics;->startSet(Lcom/isaigu/gymapp/ai/AutoModel$Step;IZDI)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 593
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

    .line 594
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

    .line 593
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a3

    .line 590
    :cond_1b7
    const/4 v6, -0x1

    goto :goto_14c

    .line 592
    :cond_1b9
    const-wide/16 v4, 0x0

    goto :goto_16e

    .line 596
    :cond_1bc
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    iget-boolean v2, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/MapDynamics;->startPlain(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)V

    .line 597
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    goto/16 :goto_a3

    .line 610
    :cond_1cd
    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto/16 :goto_f4

    .line 613
    :cond_1d1
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v4, :cond_1ef

    .line 614
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

    .line 616
    :cond_1ef
    iget v4, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 617
    iget v4, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 618
    const/4 v4, 0x1

    iget v5, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 619
    const/4 v4, 0x1

    iget v5, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 620
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

    .line 622
    iget-boolean v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    iput-boolean v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 623
    iget-boolean v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v1, :cond_241

    .line 624
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 625
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

    .line 627
    :cond_241
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 628
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto/16 :goto_fd

    .line 641
    :cond_24b
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_25a

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_25a

    .line 642
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->writeCycle()V

    goto/16 :goto_8

    .line 646
    :cond_25a
    :try_start_25a
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_25d
    .catch Ljava/lang/Throwable; {:try_start_25a .. :try_end_25d} :catch_25f

    goto/16 :goto_8

    .line 647
    :catch_25f
    move-exception v0

    goto/16 :goto_8
.end method

.method public static arm(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/MapRunner;->begin(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 726
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

    .line 728
    :cond_f
    :goto_f
    return-object v0

    .line 727
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private static begin(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;Z)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 114
    if-eqz p1, :cond_f

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 115
    :cond_f
    const-string v0, "\u041a\u0430\u0440\u0442\u0430\u0442\u0430 \u0435 \u043f\u0440\u0430\u0437\u043d\u0430."

    const-string v1, "The map is empty."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_17
    :goto_17
    return-object v0

    .line 117
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 118
    const-string v0, "\u0415\u0434\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u0432\u0435\u0447\u0435 \u0432\u044a\u0440\u0432\u0438."

    const-string v1, "A map is already running."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 120
    :cond_27
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "auto"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 122
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0432\u044a\u0440\u0432\u044f\u0442 \u0432 \u0410\u0432\u0442\u043e \u0438\u043b\u0438 AI \u2014 \u0410\u0432\u0442\u043e \u043d\u0435 \u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d."

    const-string v1, "Exercise programs run in Auto or AI \u2014 Auto is not unlocked."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 125
    :cond_3e
    const-string v0, "map"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/OutputOwner;->conflict(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_17

    .line 129
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v5

    .line 130
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 131
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a \u0438 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v1, "Add a participant and connect the suit."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 133
    :cond_59
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 134
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->swapForLeader(Landroid/content/Context;)V

    .line 135
    new-instance v0, Lcom/isaigu/gymapp/ai/MapClock;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/MapClock;-><init>(Lcom/isaigu/gymapp/ai/Workout;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    .line 136
    if-eqz p0, :cond_100

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_75
    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    .line 137
    sput-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 138
    sput-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 139
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 141
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->dynamicsFor(Landroid/content/Context;)Lcom/isaigu/gymapp/ai/MapDynamics;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 143
    :cond_8d
    sput-wide v6, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    .line 144
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 145
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 146
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    sput-boolean p2, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    .line 148
    sput-wide v6, Lcom/isaigu/gymapp/ai/MapRunner;->calibRunS:D

    .line 149
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a6
    :goto_a6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 150
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v7

    .line 151
    if-nez p2, :cond_c5

    .line 152
    sget-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    if-eqz v7, :cond_104

    iget v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :goto_be
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_c5
    if-eqz v7, :cond_a6

    .line 155
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

    if-eqz v1, :cond_106

    move v1, v3

    :goto_e5
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

    goto :goto_a6

    .line 136
    :cond_100
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    goto/16 :goto_75

    :cond_104
    move v1, v2

    .line 152
    goto :goto_be

    :cond_106
    move v1, v2

    .line 155
    goto :goto_e5

    .line 159
    :cond_108
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 160
    if-eqz p2, :cond_172

    .line 161
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/MapRunner;->calibrate(Ljava/util/List;)V

    .line 165
    :goto_110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    .line 166
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->showCard(Landroid/app/Activity;)V

    .line 169
    const-string v1, "map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_176

    const-string v0, "armed "

    :goto_134
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

    .line 170
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 171
    goto/16 :goto_17

    .line 163
    :cond_172
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->launch()V

    goto :goto_110

    .line 169
    :cond_176
    const-string v0, "start "

    goto :goto_134
.end method

.method private static calibTick(D)V
    .registers 12

    .prologue
    .line 229
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 230
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 231
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 232
    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    .line 235
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v8, p0

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 236
    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v6, v1

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    add-double/2addr v8, v4

    cmpl-double v1, v6, v8

    if-lez v1, :cond_55

    .line 237
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 238
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :try_start_4f
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_8

    .line 241
    :catch_53
    move-exception v0

    goto :goto_8

    .line 244
    :cond_55
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 247
    :cond_62
    return-void
.end method

.method private static calibrate(Ljava/util/List;)V
    .registers 11
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
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 180
    const/4 v1, 0x0

    .line 181
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 182
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-nez v3, :cond_b

    .line 185
    if-eqz v1, :cond_35

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v3

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v4

    if-le v3, v4, :cond_e5

    :cond_35
    :goto_35
    move-object v1, v0

    .line 188
    goto :goto_b

    .line 189
    :cond_37
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->ownStrength:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 190
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_45
    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 192
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 193
    if-eqz v3, :cond_45

    .line 196
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->ownStrength:Ljava/util/Map;

    iget v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iput v8, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 199
    if-eqz v1, :cond_93

    .line 200
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 201
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 202
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 203
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 204
    iput-boolean v8, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 205
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 206
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 208
    :cond_93
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/SafeGuard;->clamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 209
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/MapRunner;->snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/16 v3, 0xe10

    iput v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 212
    :try_start_a3
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_45

    .line 213
    :catch_a7
    move-exception v0

    .line 214
    const-string v3, "map"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calib: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 218
    :cond_c1
    :try_start_c1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_ca

    .line 220
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_ca} :catch_cb

    .line 225
    :cond_ca
    :goto_ca
    return-void

    .line 222
    :catch_cb
    move-exception v0

    .line 223
    const-string v1, "map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calib startAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ca

    :cond_e5
    move-object v0, v1

    goto/16 :goto_35
.end method

.method public static currentExercise()I
    .registers 2

    .prologue
    .line 486
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-nez v0, :cond_1f

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 487
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

    .line 486
    :cond_1f
    const/4 v0, 0x0

    goto :goto_10

    .line 487
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

    .line 297
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 302
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v4

    .line 303
    if-eqz v4, :cond_53

    iget-object v5, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v5, :cond_53

    iget-object v4, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v5, v4

    .line 304
    :goto_14
    if-eqz v5, :cond_55

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    move-object v4, v0

    .line 305
    :goto_1b
    if-eqz v4, :cond_79

    .line 306
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_23

    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 307
    :cond_23
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_2d

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 308
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

    .line 310
    :goto_41
    if-eqz v5, :cond_4d

    if-eqz p0, :cond_4d

    .line 311
    :try_start_45
    iget-wide v4, v5, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoHistory;->of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    move-result-object v4

    iget v1, v4, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4d} :catch_77

    .line 316
    :cond_4d
    :goto_4d
    new-instance v4, Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;-><init>(Lcom/isaigu/gymapp/ai/AiModel$Fitness;III)V

    return-object v4

    :cond_53
    move-object v5, v0

    .line 303
    goto :goto_14

    :cond_55
    move-object v4, v0

    .line 304
    goto :goto_1b

    .line 308
    :cond_57
    :try_start_57
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_59} :catch_5c

    goto :goto_37

    :cond_5a
    move v0, v1

    goto :goto_41

    .line 313
    :catch_5c
    move-exception v4

    move v0, v1

    .line 314
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

    .line 313
    :catch_77
    move-exception v4

    goto :goto_5e

    :cond_79
    move v0, v1

    goto :goto_41
.end method

.method public static go()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isWaiting()Z

    move-result v0

    if-nez v0, :cond_8

    .line 293
    :goto_7
    return-void

    .line 277
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 278
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 279
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    if-eqz v1, :cond_2e

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :goto_26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_2e
    move v1, v2

    goto :goto_26

    .line 281
    :cond_30
    sput-boolean v2, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    .line 282
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 283
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->ownStrength:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 284
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 285
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->launch()V

    .line 286
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    if-eqz v0, :cond_53

    .line 287
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    const-string v1, "\u25a0  \u0421\u0442\u043e\u043f"

    const-string v2, "\u25a0  Stop"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_53
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    if-eqz v0, :cond_5e

    .line 290
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :cond_5e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V

    goto :goto_7
.end method

.method private static hideCard()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 820
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 822
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_15

    .line 826
    :cond_a
    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    .line 827
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 828
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 829
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    .line 830
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    .line 831
    return-void

    .line 823
    :catch_15
    move-exception v0

    goto :goto_a
.end method

.method public static isRunning()Z
    .registers 1

    .prologue
    .line 95
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
    .line 110
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
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 251
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    .line 252
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

    .line 253
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v3

    add-int/lit8 v3, v3, 0x78

    iput v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    goto :goto_c

    .line 256
    :cond_23
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 257
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_46

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_46

    move v0, v2

    :goto_43
    and-int/2addr v0, v1

    move v1, v0

    .line 258
    goto :goto_2c

    .line 257
    :cond_46
    const/4 v0, 0x0

    goto :goto_43

    .line 260
    :cond_48
    :try_start_48
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_53

    if-nez v1, :cond_53

    .line 262
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_53} :catch_5a

    .line 267
    :cond_53
    :goto_53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    .line 268
    return-void

    .line 264
    :catch_5a
    move-exception v0

    .line 265
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

    goto :goto_53
.end method

.method private static leader()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 2

    .prologue
    .line 720
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    .line 721
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
    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pat:Ljava/lang/String;

    .line 323
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    .line 324
    const/4 v1, 0x0

    .line 325
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 326
    if-nez v0, :cond_11

    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_11
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    if-eqz v3, :cond_3a

    .line 331
    :try_start_15
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v4

    .line 332
    if-eqz v4, :cond_48

    .line 333
    if-nez v0, :cond_46

    .line 334
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pat:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_23} :catch_41

    .line 336
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

    .line 337
    :goto_32
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->zoneOf(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_37} :catch_43

    move-result-object v0

    move-object v1, v0

    :goto_39
    move-object v0, v3

    .line 343
    :cond_3a
    :goto_3a
    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/AutoDynamics;->move(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    return v0

    .line 336
    :cond_3f
    const/4 v2, 0x0

    goto :goto_32

    .line 339
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

    .line 348
    if-eqz p0, :cond_d

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 355
    :cond_d
    :goto_d
    return-object v0

    .line 351
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    if-eqz v1, :cond_17

    .line 352
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 354
    :cond_17
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v1

    .line 355
    if-ltz v1, :cond_d

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v0

    goto :goto_d
.end method

.method public static name()Ljava/lang/String;
    .registers 1

    .prologue
    .line 409
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
    .line 473
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-eq p0, v0, :cond_11

    .line 482
    :cond_10
    :goto_10
    return-void

    .line 476
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->cycleStartMs:J

    .line 477
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->onCycle()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 478
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    goto :goto_10

    .line 479
    :cond_24
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_10

    .line 480
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
    .line 716
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static showCard(Landroid/app/Activity;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 735
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    .line 737
    :try_start_4
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 738
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 739
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

    .line 740
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

    .line 742
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 743
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 744
    const-string v1, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x1

    invoke-static {p0, v1, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    .line 745
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v1, :cond_27e

    const-string v1, "\u2715  \u041e\u0442\u043a\u0430\u0437"

    const-string v4, "\u2715  Cancel"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6e
    const/4 v4, 0x4

    invoke-static {p0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 748
    new-instance v4, Lcom/isaigu/gymapp/ai/MapRunner$StopClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/MapRunner$StopClick;-><init>()V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    .line 750
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43020000    # 130.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42280000    # 42.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    const-string v1, "\u25b6  \u0421\u0442\u0430\u0440\u0442"

    const-string v4, "\u25b6  Start"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    .line 752
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/ai/MapRunner$GoClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/MapRunner$GoClick;-><init>()V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    sget-boolean v4, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v4, :cond_288

    :goto_b0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 754
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 755
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 756
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 757
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 759
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 760
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 761
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 762
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

    .line 763
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 764
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    sget-wide v4, Lcom/isaigu/gymapp/ai/MapRunner;->FIGURE_T0:J

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 765
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 766
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v0, :cond_28c

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_119
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 767
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

    .line 768
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 769
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 770
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 771
    const-string v3, ""

    const/high16 v4, 0x41b00000    # 22.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    .line 772
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 773
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 774
    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    .line 775
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 776
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    .line 777
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 778
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 782
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

    .line 783
    new-instance v1, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 784
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 785
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 789
    new-instance v1, Lcom/isaigu/gymapp/ai/FloatCard;

    const-string v3, "map_card"

    const/high16 v4, 0x44200000    # 640.0f

    .line 790
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

    .line 791
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    .line 792
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 793
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 794
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 795
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 796
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 797
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 798
    if-eqz v0, :cond_276

    .line 799
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 800
    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 801
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 802
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

    .line 803
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 804
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 805
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 806
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    or-int/lit8 v3, v3, 0x20

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 808
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 809
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 810
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/FloatCard;->attach(Landroid/view/Window;)V

    .line 812
    :cond_276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V

    .line 817
    :goto_27d
    return-void

    .line 746
    :cond_27e
    const-string v1, "\u25a0  \u0421\u0442\u043e\u043f"

    const-string v4, "\u25a0  Stop"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_285
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_285} :catch_28f

    move-result-object v1

    goto/16 :goto_6e

    .line 753
    :cond_288
    const/16 v0, 0x8

    goto/16 :goto_b0

    .line 766
    :cond_28c
    const/4 v0, 0x0

    goto/16 :goto_119

    .line 813
    :catch_28f
    move-exception v0

    .line 814
    const-string v1, "MapRunner.card"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 815
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    goto :goto_27d
.end method

.method private static snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 711
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
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/MapRunner;->begin(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 359
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

    .line 360
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    :goto_1c
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 361
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    int-to-double v0, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    :goto_28
    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 362
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 363
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 364
    return-object v2

    .line 360
    :cond_33
    const/4 v0, 0x0

    goto :goto_1c

    .line 361
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

    .line 413
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_8

    .line 469
    :goto_7
    return-void

    .line 416
    :cond_8
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    sput-object v13, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 418
    sput-object v13, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 419
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 420
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1f
    :goto_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 421
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v9

    .line 422
    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v1, :cond_6a

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ownStrength:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v3, v1

    .line 423
    :goto_3c
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 424
    if-eqz v9, :cond_a6

    if-eqz v1, :cond_a6

    .line 426
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 427
    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v10

    .line 428
    array-length v4, v10

    new-array v11, v4, [I

    move v4, v5

    .line 429
    :goto_58
    array-length v6, v10

    if-ge v4, v6, :cond_77

    .line 430
    if-eqz v2, :cond_63

    aget v6, v10, v4

    aget v12, v2, v4

    if-ne v6, v12, :cond_74

    :cond_63
    aget v6, v1, v4

    :goto_65
    aput v6, v11, v4

    .line 429
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 422
    :cond_6a
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v3, v1

    goto :goto_3c

    .line 430
    :cond_74
    aget v6, v10, v4

    goto :goto_65

    .line 432
    :cond_77
    aget v1, v11, v5

    iput v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 433
    aget v1, v11, v7

    iput v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 434
    const/4 v1, 0x2

    aget v1, v11, v1

    iput v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 435
    const/4 v1, 0x3

    aget v1, v11, v1

    iput v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 436
    const/4 v1, 0x4

    aget v1, v11, v1

    if-ne v1, v7, :cond_b8

    move v1, v7

    :goto_8f
    iput-boolean v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 437
    const/4 v1, 0x5

    aget v1, v11, v1

    iput v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 438
    const/4 v1, 0x6

    aget v1, v11, v1

    iput v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 439
    const/4 v1, 0x7

    aget v1, v11, v1

    iput v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 440
    const/16 v1, 0x8

    aget v1, v11, v1

    iput v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 442
    :cond_a6
    if-eqz v9, :cond_1f

    if-eqz v3, :cond_1f

    .line 443
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 445
    :try_start_b0
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_b3} :catch_b5

    goto/16 :goto_1f

    .line 446
    :catch_b5
    move-exception v0

    goto/16 :goto_1f

    :cond_b8
    move v1, v5

    .line 436
    goto :goto_8f

    .line 451
    :cond_ba
    :try_start_ba
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_c3

    .line 453
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_c3} :catch_10d

    .line 458
    :cond_c3
    :goto_c3
    sput-boolean v5, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    .line 459
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->ownStrength:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 460
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 461
    const-string v1, "map"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop at block "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    if-eqz v0, :cond_127

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v0

    :goto_e6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    sput-object v13, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 463
    sput-object v13, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    .line 464
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 465
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 466
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 467
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 468
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    goto/16 :goto_7

    .line 455
    :catch_10d
    move-exception v0

    .line 456
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

    goto :goto_c3

    .line 461
    :cond_127
    const/4 v0, -0x1

    goto :goto_e6
.end method

.method private static swapForLeader(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 372
    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    .line 374
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v1

    .line 375
    if-nez v1, :cond_e

    .line 405
    :cond_d
    :goto_d
    return-void

    .line 378
    :cond_e
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    .line 379
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v3, :cond_1b

    .line 380
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 382
    :cond_1b
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v3, :cond_27

    .line 383
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 385
    :cond_27
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v3, :cond_33

    .line 386
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 388
    :cond_33
    iget v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 389
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v1, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 390
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    const-string v4, "diastasis"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 391
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHistory;->cardioMachine(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_53

    const/4 v0, 0x1

    :cond_53
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->noCardioMachine:Z

    .line 392
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->avoidFor(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/Set;

    move-result-object v1

    .line 393
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

    .line 394
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 395
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->safer(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 396
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_89} :catch_8a

    goto :goto_61

    .line 402
    :catch_8a
    move-exception v0

    .line 403
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

    .line 399
    :cond_a5
    :try_start_a5
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    if-lez v0, :cond_d

    .line 400
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
    .registers 18

    .prologue
    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 506
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

    .line 508
    const-wide/16 v0, 0x0

    sget-wide v4, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    sub-long v4, v12, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v14, v0, v4

    .line 509
    sput-wide v12, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    .line 510
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 511
    if-nez v0, :cond_3a

    .line 512
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    .line 566
    :goto_39
    return-void

    .line 515
    :cond_3a
    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v1, :cond_8d

    .line 516
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/MapRunner;->calibTick(D)V

    .line 517
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_6f

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_6f

    .line 518
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibRunS:D

    add-double/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibRunS:D

    .line 519
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibRunS:D

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6f

    .line 521
    const-wide/high16 v0, 0x406e000000000000L    # 240.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibRunS:D

    .line 523
    :try_start_5f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_68

    .line 525
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_68} :catch_73

    .line 530
    :cond_68
    :goto_68
    const-string v0, "map"

    const-string v1, "calibration 300 s \u2014 suit stopped"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_6f
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V

    goto :goto_39

    .line 527
    :catch_73
    move-exception v0

    .line 528
    const-string v1, "map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calib stopAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 536
    :cond_8d
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_126

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_126

    const/4 v0, 0x1

    .line 537
    :goto_98
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v1, :cond_e1

    .line 538
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v11

    .line 539
    sget-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 540
    if-eqz v11, :cond_129

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_129

    if-eqz v8, :cond_129

    const/4 v1, 0x1

    move v10, v1

    .line 541
    :goto_b0
    if-eqz v10, :cond_12c

    sget-wide v4, Lcom/isaigu/gymapp/ai/MapRunner;->cycleStartMs:J

    sub-long v4, v12, v4

    iget v1, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    int-to-long v6, v1

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    cmp-long v1, v4, v6

    if-gez v1, :cond_12c

    const/4 v5, 0x1

    .line 542
    :goto_c2
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_12e

    if-eqz v10, :cond_12e

    const/4 v4, 0x1

    :goto_c9
    if-eqz v10, :cond_130

    iget v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    :goto_cd
    if-eqz v10, :cond_132

    iget v7, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    :goto_d1
    if-eqz v10, :cond_134

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 543
    :goto_d5
    if-eqz v10, :cond_137

    iget v10, v11, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    int-to-double v10, v10

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v10, v10, v16

    .line 542
    :goto_de
    invoke-virtual/range {v1 .. v11}, Lcom/isaigu/gymapp/ai/MapDynamics;->advance(DZZIIDD)V

    .line 545
    :cond_e1
    if-eqz v0, :cond_ef

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v1, v14, v15}, Lcom/isaigu/gymapp/ai/MapClock;->tick(D)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 546
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    .line 548
    :cond_ef
    if-eqz v0, :cond_13a

    const-wide/16 v0, 0x0

    :goto_f3
    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    .line 549
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_13e

    .line 550
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

    .line 551
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    goto/16 :goto_39

    .line 536
    :cond_126
    const/4 v0, 0x0

    goto/16 :goto_98

    .line 540
    :cond_129
    const/4 v1, 0x0

    move v10, v1

    goto :goto_b0

    .line 541
    :cond_12c
    const/4 v5, 0x0

    goto :goto_c2

    .line 542
    :cond_12e
    const/4 v4, 0x0

    goto :goto_c9

    :cond_130
    const/4 v6, 0x0

    goto :goto_cd

    :cond_132
    const/4 v7, 0x0

    goto :goto_d1

    :cond_134
    const-wide/16 v8, 0x0

    goto :goto_d5

    .line 543
    :cond_137
    const-wide/16 v10, 0x0

    goto :goto_de

    .line 548
    :cond_13a
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    add-double/2addr v0, v2

    goto :goto_f3

    .line 554
    :cond_13e
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 555
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    goto/16 :goto_39

    .line 558
    :cond_14b
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getElapsedS()D

    move-result-wide v0

    const-wide v2, 0x40a0680000000000L    # 2100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_166

    .line 560
    const-string v0, "map"

    const-string v1, "25 min \u2014 closed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    goto/16 :goto_39

    .line 564
    :cond_166
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->currentExercise()I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 565
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V

    goto/16 :goto_39
.end method

.method private static updateCard(J)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 834
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 869
    :cond_13
    :goto_13
    return-void

    .line 837
    :cond_14
    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v0, :cond_1c

    .line 838
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->updateWaiting()V

    goto :goto_13

    .line 841
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v2

    .line 842
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v3

    .line 843
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

    .line 844
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

    .line 845
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

    .line 844
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/MapClock;->position()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setPlayhead(F)V

    .line 847
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 848
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 849
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

    .line 850
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    :goto_db
    const-string v2, ""

    .line 861
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    :goto_e0
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1ee

    .line 862
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 863
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_1e9

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v3, "Next: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    if-eqz v2, :cond_1e1

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    :goto_111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    :goto_119
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13

    .line 844
    :cond_120
    const-string v0, "\u0410\u0432\u0442\u043e \u00b7 "

    const-string v7, "Auto \u00b7 "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4c

    .line 845
    :cond_12a
    const-string v0, ""

    goto/16 :goto_7f

    .line 853
    :cond_12e
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1ba

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    :goto_138
    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 854
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    if-eqz v0, :cond_1bd

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    :goto_143
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 856
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    if-eqz v0, :cond_1d5

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_170
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 857
    if-eqz v1, :cond_1d8

    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    :goto_178
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Hz \u00b7 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1db

    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    :goto_186
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 858
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1de

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

    :goto_1ad
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_db

    :cond_1ba
    move-object v0, v1

    .line 853
    goto/16 :goto_138

    .line 854
    :cond_1bd
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1cb

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_143

    :cond_1cb
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "Impulse"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_143

    .line 856
    :cond_1d5
    const-string v0, ""

    goto :goto_170

    .line 857
    :cond_1d8
    iget v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_178

    :cond_1db
    iget v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_186

    .line 858
    :cond_1de
    const-string v0, ""

    goto :goto_1ad

    .line 864
    :cond_1e1
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_111

    .line 861
    :cond_1e9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_e0

    :cond_1ee
    move-object v0, v2

    goto/16 :goto_119
.end method

.method private static updateWaiting()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 874
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

    .line 875
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_25

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v0, :cond_25

    const/4 v0, 0x1

    :goto_22
    or-int/2addr v0, v1

    move v1, v0

    .line 877
    goto :goto_b

    :cond_25
    move v0, v2

    .line 876
    goto :goto_22

    .line 878
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

    .line 879
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setPlayhead(F)V

    .line 881
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

    .line 882
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 887
    :goto_7b
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v0, :cond_81

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    :cond_81
    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 888
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    const-string v3, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v4, "Set the strength"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    const-string v3, "\u0418\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0432\u044a\u0440\u0432\u044f\u0442: \u043a\u0430\u0447\u0438 \u043e\u0431\u0449\u0430\u0442\u0430 \u0441\u0438\u043b\u0430 (\u0434\u043e +5 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430) \u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u0430\u043d\u0430\u043b \u043e\u0442 \u0433\u043b\u0430\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u0434\u043e \u0441\u0438\u043b\u043d\u043e, \u043d\u043e \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435 (6\u20137 \u043e\u0442 10). \u041f\u043e\u0441\u043b\u0435 \u25b6 \u0421\u0442\u0430\u0440\u0442."

    const-string v4, "The impulses run: raise the total strength (up to +5 a second) and each channel on the main screen to strong but pleasant (6\u20137 of 10). Then \u25b6 Start."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
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

    .line 894
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    if-eqz v0, :cond_d6

    .line 895
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 896
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    if-eqz v1, :cond_da

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_d3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 898
    :cond_d6
    return-void

    .line 893
    :cond_d7
    const-string v0, ""

    goto :goto_c1

    .line 896
    :cond_da
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_d3

    :cond_dd
    move-object v0, v3

    goto :goto_7b
.end method

.method private static writeCycle()V
    .registers 16

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 653
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v7

    .line 654
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_14

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 707
    :cond_14
    :goto_14
    return-void

    .line 657
    :cond_15
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/MapDynamics;->cycle(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v8

    .line 658
    sput-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 659
    iget v0, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v1, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    move v3, v0

    :cond_34
    :goto_34
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_105

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 662
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v10

    .line 663
    if-eqz v10, :cond_34

    .line 666
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 667
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 668
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 669
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 673
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v4, :cond_ee

    iget-wide v12, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v14, 0x0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_ee

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v4

    if-eqz v4, :cond_ee

    move v4, v2

    .line 674
    :goto_71
    iget-boolean v6, v7, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-nez v6, :cond_77

    if-eqz v4, :cond_f0

    :cond_77
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v6

    if-eqz v6, :cond_f0

    iget v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    const/4 v11, 0x2

    if-lt v6, v11, :cond_f0

    move v6, v2

    .line 675
    :goto_83
    iput-boolean v6, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 676
    if-eqz v4, :cond_f2

    if-eqz v6, :cond_f2

    .line 677
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 678
    iget v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v12, v4

    iget-wide v14, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v4, v12

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 685
    :cond_9e
    :goto_9e
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 686
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 687
    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/SafeGuard;->clamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 688
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-static {v10}, Lcom/isaigu/gymapp/ai/MapRunner;->snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    if-eqz v1, :cond_be

    .line 690
    iget v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget v3, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v1

    move v1, v5

    .line 693
    :cond_be
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_ce

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v4, :cond_ce

    .line 694
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v6, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v6, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 697
    :cond_ce
    :try_start_ce
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_d1} :catch_d3

    goto/16 :goto_34

    .line 698
    :catch_d3
    move-exception v0

    .line 699
    const-string v4, "map"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onParamsChange: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_34

    :cond_ee
    move v4, v5

    .line 673
    goto :goto_71

    :cond_f0
    move v6, v5

    .line 674
    goto :goto_83

    .line 679
    :cond_f2
    if-eqz v6, :cond_9e

    .line 680
    iput v5, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 681
    iget v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    if-gtz v4, :cond_9e

    .line 682
    iget v4, v7, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    if-lez v4, :cond_103

    iget v4, v7, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    :goto_100
    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    goto :goto_9e

    :cond_103
    const/4 v4, 0x7

    goto :goto_100

    .line 702
    :cond_105
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    int-to-double v2, v3

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/MapClock;->setCycleS(D)V

    .line 704
    :try_start_10b
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_10b .. :try_end_10e} :catch_110

    goto/16 :goto_14

    .line 705
    :catch_110
    move-exception v0

    goto/16 :goto_14
.end method
