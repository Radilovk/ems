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

.field static ai:Z

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

.field static noDouble:Z

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

.field private static screen:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
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
    .line 750
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 829
    :cond_8
    :goto_8
    return-void

    .line 753
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v8

    .line 754
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    if-ne v8, v0, :cond_15

    if-eqz p0, :cond_8

    .line 757
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

    .line 758
    :goto_32
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v9

    .line 759
    sput v8, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 760
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 761
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_a3

    .line 762
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->musclesOf(Lcom/isaigu/gymapp/ai/Workout$Block;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->setMuscles([I)V

    .line 763
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 764
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->restS(I)I

    move-result v0

    .line 765
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/MapClock;->setRestS(D)V

    .line 766
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    if-le v0, v1, :cond_a3

    .line 767
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

    .line 780
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

    if-eqz v0, :cond_258

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 781
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 782
    if-eqz v3, :cond_ab

    .line 786
    if-eqz v7, :cond_e6

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_e6

    iget v1, v7, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    if-lez v1, :cond_e6

    .line 787
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

    .line 789
    :cond_e6
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 790
    if-eqz v1, :cond_1cd

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 791
    :goto_f4
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 792
    const/4 v1, 0x0

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 810
    :goto_fd
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/SafeGuard;->clamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 811
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/MapRunner;->snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_119

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v1, :cond_119

    .line 813
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 816
    :cond_119
    :try_start_119
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_11c
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_11c} :catch_11d

    goto :goto_ab

    .line 817
    :catch_11d
    move-exception v0

    .line 818
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

    .line 757
    :cond_138
    const/4 v0, 0x0

    move-object v7, v0

    goto/16 :goto_32

    .line 769
    :cond_13c
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 770
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v0

    if-eqz v0, :cond_1b7

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I

    move-result v6

    .line 771
    :goto_14c
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->moveOf(Lcom/isaigu/gymapp/ai/Workout$Block;)I

    move-result v2

    iget-boolean v3, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    .line 772
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

    .line 771
    :goto_16e
    invoke-virtual/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/MapDynamics;->startSet(Lcom/isaigu/gymapp/ai/AutoModel$Step;IZDI)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 773
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

    .line 774
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

    .line 773
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a3

    .line 770
    :cond_1b7
    const/4 v6, -0x1

    goto :goto_14c

    .line 772
    :cond_1b9
    const-wide/16 v4, 0x0

    goto :goto_16e

    .line 776
    :cond_1bc
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    iget-boolean v2, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/MapDynamics;->startPlain(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)V

    .line 777
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    goto/16 :goto_a3

    .line 790
    :cond_1cd
    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto/16 :goto_f4

    .line 793
    :cond_1d1
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v4, :cond_1ef

    .line 794
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

    .line 796
    :cond_1ef
    iget v4, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 797
    iget v4, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 798
    const/4 v4, 0x1

    iget v5, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 799
    const/4 v4, 0x1

    iget v5, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 800
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

    .line 802
    iget-boolean v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v1, :cond_256

    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->noDouble:Z

    if-nez v1, :cond_256

    const/4 v1, 0x1

    :goto_22a
    iput-boolean v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 803
    iget-boolean v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v1, :cond_24c

    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->noDouble:Z

    if-nez v1, :cond_24c

    .line 804
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 805
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

    .line 807
    :cond_24c
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 808
    iget v1, v9, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto/16 :goto_fd

    .line 802
    :cond_256
    const/4 v1, 0x0

    goto :goto_22a

    .line 821
    :cond_258
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_267

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_267

    .line 822
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->writeCycle()V

    goto/16 :goto_8

    .line 826
    :cond_267
    :try_start_267
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_26a
    .catch Ljava/lang/Throwable; {:try_start_267 .. :try_end_26a} :catch_26c

    goto/16 :goto_8

    .line 827
    :catch_26c
    move-exception v0

    goto/16 :goto_8
.end method

.method public static arm(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/MapRunner;->begin(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 906
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

    .line 908
    :cond_f
    :goto_f
    return-object v0

    .line 907
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

    .line 283
    if-eqz p1, :cond_f

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 284
    :cond_f
    const-string v0, "\u041a\u0430\u0440\u0442\u0430\u0442\u0430 \u0435 \u043f\u0440\u0430\u0437\u043d\u0430."

    const-string v1, "The map is empty."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_17
    :goto_17
    return-object v0

    .line 286
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 287
    const-string v0, "\u0415\u0434\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u0432\u0435\u0447\u0435 \u0432\u044a\u0440\u0432\u0438."

    const-string v1, "A map is already running."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 289
    :cond_27
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "auto"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 291
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0432\u044a\u0440\u0432\u044f\u0442 \u0432 \u0410\u0432\u0442\u043e \u0438\u043b\u0438 AI \u2014 \u0410\u0432\u0442\u043e \u043d\u0435 \u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d."

    const-string v1, "Exercise programs run in Auto or AI \u2014 Auto is not unlocked."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 294
    :cond_3e
    const-string v0, "map"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/OutputOwner;->conflict(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    if-nez v0, :cond_17

    .line 298
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v5

    .line 299
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 300
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a \u0438 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v1, "Add a participant and connect the suit."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 302
    :cond_59
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 303
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->swapForLeader(Landroid/content/Context;)V

    .line 304
    new-instance v0, Lcom/isaigu/gymapp/ai/MapClock;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/MapClock;-><init>(Lcom/isaigu/gymapp/ai/Workout;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    .line 305
    if-eqz p0, :cond_100

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_75
    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    .line 306
    sput-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 307
    sput-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 308
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 309
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 310
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->dynamicsFor(Landroid/content/Context;)Lcom/isaigu/gymapp/ai/MapDynamics;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 312
    :cond_8d
    sput-wide v6, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    .line 313
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 314
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 315
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 316
    sput-boolean p2, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    .line 317
    sput-wide v6, Lcom/isaigu/gymapp/ai/MapRunner;->calibRunS:D

    .line 318
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

    .line 319
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v7

    .line 320
    if-nez p2, :cond_c5

    .line 321
    sget-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    if-eqz v7, :cond_104

    iget v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :goto_be
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_c5
    if-eqz v7, :cond_a6

    .line 324
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

    .line 305
    :cond_100
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    goto/16 :goto_75

    :cond_104
    move v1, v2

    .line 321
    goto :goto_be

    :cond_106
    move v1, v2

    .line 324
    goto :goto_e5

    .line 328
    :cond_108
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 329
    if-eqz p2, :cond_172

    .line 330
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/MapRunner;->calibrate(Ljava/util/List;)V

    .line 334
    :goto_110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    .line 335
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 336
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->showCard(Landroid/app/Activity;)V

    .line 338
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

    .line 339
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 340
    goto/16 :goto_17

    .line 332
    :cond_172
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->launch()V

    goto :goto_110

    .line 338
    :cond_176
    const-string v0, "start "

    goto :goto_134
.end method

.method private static calibTick(D)V
    .registers 12

    .prologue
    .line 398
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

    .line 399
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 400
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 401
    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    .line 404
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v8, p0

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 405
    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v6, v1

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    add-double/2addr v8, v4

    cmpl-double v1, v6, v8

    if-lez v1, :cond_55

    .line 406
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 407
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :try_start_4f
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_8

    .line 410
    :catch_53
    move-exception v0

    goto :goto_8

    .line 413
    :cond_55
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 416
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

    .line 349
    const/4 v1, 0x0

    .line 350
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

    .line 351
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-nez v3, :cond_b

    .line 354
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

    .line 357
    goto :goto_b

    .line 358
    :cond_37
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->ownStrength:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 359
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 360
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

    .line 361
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 362
    if-eqz v3, :cond_45

    .line 365
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->ownStrength:Ljava/util/Map;

    iget v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iput v8, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 368
    if-eqz v1, :cond_93

    .line 369
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 370
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 371
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 372
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 373
    iput-boolean v8, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 374
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 375
    iget v4, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 377
    :cond_93
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/SafeGuard;->clamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 378
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/MapRunner;->snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const/16 v3, 0xe10

    iput v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 381
    :try_start_a3
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_45

    .line 382
    :catch_a7
    move-exception v0

    .line 383
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

    .line 387
    :cond_c1
    :try_start_c1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_ca

    .line 389
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_ca} :catch_cb

    .line 394
    :cond_ca
    :goto_ca
    return-void

    .line 391
    :catch_cb
    move-exception v0

    .line 392
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

.method public static channelFromSlider(II)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v2

    if-nez v2, :cond_9

    .line 209
    :goto_8
    return v0

    .line 208
    :cond_9
    new-array v2, v1, [I

    aput p0, v2, v0

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/ai/MapRunner;->setChannels([II)I

    move v0, v1

    .line 209
    goto :goto_8
.end method

.method static channelLevel(I)I
    .registers 5

    .prologue
    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_28

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_28

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 154
    :goto_12
    if-eqz v0, :cond_2a

    array-length v1, v0

    if-ge p0, v1, :cond_2a

    aget v0, v0, p0

    .line 155
    :goto_19
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->strength()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 153
    :cond_28
    const/4 v0, 0x0

    goto :goto_12

    .line 154
    :cond_2a
    const/16 v0, 0x64

    goto :goto_19
.end method

.method public static channelShown(I)I
    .registers 2

    .prologue
    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->channelLevel(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method static clock()Lcom/isaigu/gymapp/ai/MapClock;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    return-object v0
.end method

.method public static currentExercise()I
    .registers 2

    .prologue
    .line 663
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-nez v0, :cond_1f

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 664
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

    .line 663
    :cond_1f
    const/4 v0, 0x0

    goto :goto_10

    .line 664
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

    .line 466
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 471
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v4

    .line 472
    if-eqz v4, :cond_53

    iget-object v5, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v5, :cond_53

    iget-object v4, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v5, v4

    .line 473
    :goto_14
    if-eqz v5, :cond_55

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    move-object v4, v0

    .line 474
    :goto_1b
    if-eqz v4, :cond_79

    .line 475
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_23

    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 476
    :cond_23
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_2d

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 477
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

    .line 479
    :goto_41
    if-eqz v5, :cond_4d

    if-eqz p0, :cond_4d

    .line 480
    :try_start_45
    iget-wide v4, v5, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoHistory;->of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    move-result-object v4

    iget v1, v4, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4d} :catch_77

    .line 485
    :cond_4d
    :goto_4d
    new-instance v4, Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;-><init>(Lcom/isaigu/gymapp/ai/AiModel$Fitness;III)V

    return-object v4

    :cond_53
    move-object v5, v0

    .line 472
    goto :goto_14

    :cond_55
    move-object v4, v0

    .line 473
    goto :goto_1b

    .line 477
    :cond_57
    :try_start_57
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_59} :catch_5c

    goto :goto_37

    :cond_5a
    move v0, v1

    goto :goto_41

    .line 482
    :catch_5c
    move-exception v4

    move v0, v1

    .line 483
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

    .line 482
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

    .line 441
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isWaiting()Z

    move-result v0

    if-nez v0, :cond_8

    .line 462
    :goto_7
    return-void

    .line 446
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

    .line 447
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 448
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

    .line 450
    :cond_30
    sput-boolean v2, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    .line 451
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastIndex:I

    .line 452
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->ownStrength:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 453
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 454
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->launch()V

    .line 455
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    if-eqz v0, :cond_53

    .line 456
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    const-string v1, "\u25a0  \u0421\u0442\u043e\u043f"

    const-string v2, "\u25a0  Stop"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :cond_53
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    if-eqz v0, :cond_5e

    .line 459
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
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

    .line 1006
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 1008
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_15

    .line 1012
    :cond_a
    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    .line 1013
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 1014
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 1015
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    .line 1016
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    .line 1017
    return-void

    .line 1009
    :catch_15
    move-exception v0

    goto :goto_a
.end method

.method public static isAi()Z
    .registers 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->ai:Z

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

.method static isPaused()Z
    .registers 2

    .prologue
    .line 236
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
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
    .line 279
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

    .line 420
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    .line 421
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

    .line 422
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v3

    add-int/lit8 v3, v3, 0x78

    iput v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    goto :goto_c

    .line 425
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

    .line 426
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_46

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_46

    move v0, v2

    :goto_43
    and-int/2addr v0, v1

    move v1, v0

    .line 427
    goto :goto_2c

    .line 426
    :cond_46
    const/4 v0, 0x0

    goto :goto_43

    .line 429
    :cond_48
    :try_start_48
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_53

    if-nez v1, :cond_53

    .line 431
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_53} :catch_5a

    .line 436
    :cond_53
    :goto_53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    .line 437
    return-void

    .line 433
    :catch_5a
    move-exception v0

    .line 434
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
    .line 900
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    .line 901
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

.method public static ledDouble()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 255
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 256
    if-eqz v0, :cond_a

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v1

    if-nez v1, :cond_c

    .line 257
    :cond_a
    const/4 v0, 0x0

    .line 264
    :goto_b
    return-object v0

    .line 259
    :cond_c
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 260
    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_12

    .line 261
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    .line 264
    :cond_25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b
.end method

.method static map()Lcom/isaigu/gymapp/ai/Workout;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method static moveOf(Lcom/isaigu/gymapp/ai/Workout$Block;)I
    .registers 6

    .prologue
    .line 491
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pat:Ljava/lang/String;

    .line 492
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    .line 493
    const/4 v1, 0x0

    .line 494
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 495
    if-nez v0, :cond_11

    .line 496
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    :cond_11
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    if-eqz v3, :cond_3a

    .line 500
    :try_start_15
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v4

    .line 501
    if-eqz v4, :cond_48

    .line 502
    if-nez v0, :cond_46

    .line 503
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pat:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_23} :catch_41

    .line 505
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

    .line 506
    :goto_32
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->zoneOf(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_37} :catch_43

    move-result-object v0

    move-object v1, v0

    :goto_39
    move-object v0, v3

    .line 512
    :cond_3a
    :goto_3a
    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/AutoDynamics;->move(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    return v0

    .line 505
    :cond_3f
    const/4 v2, 0x0

    goto :goto_32

    .line 508
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

    .line 517
    if-eqz p0, :cond_d

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 524
    :cond_d
    :goto_d
    return-object v0

    .line 520
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    if-eqz v1, :cond_17

    .line 521
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 523
    :cond_17
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v1

    .line 524
    if-ltz v1, :cond_d

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v0

    goto :goto_d
.end method

.method public static name()Ljava/lang/String;
    .registers 1

    .prologue
    .line 578
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
    .line 650
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-eq p0, v0, :cond_11

    .line 659
    :cond_10
    :goto_10
    return-void

    .line 653
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->cycleStartMs:J

    .line 654
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->onCycle()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 655
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    goto :goto_10

    .line 656
    :cond_24
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_10

    .line 657
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->writeCycle()V

    goto :goto_10
.end method

.method static pause(Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 219
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    .line 220
    if-nez v1, :cond_8

    .line 231
    :goto_7
    return v0

    .line 223
    :cond_8
    if-eqz p0, :cond_f

    .line 224
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V

    .line 228
    :goto_d
    const/4 v0, 0x1

    goto :goto_7

    .line 226
    :cond_f
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_13

    goto :goto_d

    .line 229
    :catch_13
    move-exception v1

    .line 230
    const-string v2, "map"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice pause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
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
    .line 896
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static setChannels([II)I
    .registers 20

    .prologue
    .line 160
    const/4 v2, 0x0

    const/16 v3, 0x64

    move/from16 v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->strength()I

    move-result v9

    .line 162
    move-object/from16 v0, p0

    array-length v2, v0

    if-lez v2, :cond_5b

    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/MapRunner;->channelLevel(I)I

    move-result v2

    move v8, v2

    .line 163
    :goto_1e
    if-le v4, v9, :cond_96

    .line 164
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_28
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 165
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_5e

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v3, :cond_5e

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    move-object v7, v2

    .line 167
    :goto_43
    if-eqz v7, :cond_28

    .line 170
    const/4 v2, 0x0

    :goto_46
    array-length v3, v7

    if-ge v2, v3, :cond_28

    .line 171
    const/4 v6, 0x0

    .line 172
    move-object/from16 v0, p0

    array-length v11, v0

    const/4 v3, 0x0

    move v5, v3

    :goto_4f
    if-ge v5, v11, :cond_63

    aget v3, p0, v5

    .line 173
    if-ne v3, v2, :cond_61

    const/4 v3, 0x1

    :goto_56
    or-int/2addr v6, v3

    .line 172
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_4f

    .line 162
    :cond_5b
    const/4 v2, 0x0

    move v8, v2

    goto :goto_1e

    .line 166
    :cond_5e
    const/4 v2, 0x0

    move-object v7, v2

    goto :goto_43

    .line 173
    :cond_61
    const/4 v3, 0x0

    goto :goto_56

    .line 175
    :cond_63
    if-eqz v6, :cond_85

    const/16 v3, 0x64

    aget v5, v7, v2

    mul-int/2addr v5, v9

    int-to-double v12, v5

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    sub-int v5, v4, v8

    int-to-double v14, v5

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    int-to-double v14, v4

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v5, v12

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 176
    :goto_80
    aput v3, v7, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 176
    :cond_85
    aget v3, v7, v2

    mul-int/2addr v3, v9

    int-to-double v12, v3

    int-to-double v14, v4

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v3, v12

    goto :goto_80

    .line 179
    :cond_91
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/MapRunner;->setStrength(I)I

    move v2, v4

    .line 200
    :goto_95
    return v2

    .line 182
    :cond_96
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9e
    :goto_9e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_121

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 183
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 184
    if-eqz v3, :cond_fd

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v5, :cond_fd

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    move-object v6, v3

    .line 185
    :goto_b9
    if-eqz v6, :cond_9e

    .line 188
    move-object/from16 v0, p0

    array-length v10, v0

    const/4 v3, 0x0

    move v5, v3

    :goto_c0
    if-ge v5, v10, :cond_102

    aget v11, p0, v5

    .line 189
    array-length v3, v6

    if-ge v11, v3, :cond_f9

    .line 190
    aget v3, v6, v11

    mul-int/2addr v3, v9

    int-to-double v12, v3

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v3, v12

    sub-int v12, v4, v8

    add-int/2addr v3, v12

    .line 191
    if-lez v9, :cond_100

    const/4 v12, 0x0

    const/16 v13, 0x64

    const/4 v14, 0x0

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v14, v3

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    int-to-double v0, v9

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v3, v14

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_f7
    aput v3, v6, v11

    .line 188
    :cond_f9
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_c0

    .line 184
    :cond_fd
    const/4 v3, 0x0

    move-object v6, v3

    goto :goto_b9

    .line 191
    :cond_100
    const/4 v3, 0x0

    goto :goto_f7

    .line 195
    :cond_102
    :try_start_102
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_105
    .catch Ljava/lang/Throwable; {:try_start_102 .. :try_end_105} :catch_106

    goto :goto_9e

    .line 196
    :catch_106
    move-exception v2

    .line 197
    const-string v3, "map"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "voice channel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9e

    :cond_121
    move v2, v4

    .line 200
    goto/16 :goto_95
.end method

.method static setStrength(I)I
    .registers 9

    .prologue
    const/16 v7, 0x64

    const/4 v2, 0x0

    .line 132
    invoke-static {v7, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 134
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    .line 135
    if-eqz v5, :cond_13

    .line 138
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    if-eqz v1, :cond_65

    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-nez v1, :cond_65

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v1

    .line 140
    :goto_3c
    if-eqz v1, :cond_67

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v6

    if-eqz v6, :cond_67

    move v1, v2

    :goto_45
    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 142
    :try_start_47
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_13

    .line 143
    :catch_4b
    move-exception v0

    .line 144
    const-string v1, "map"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "voice strength: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 139
    :cond_65
    const/4 v1, 0x0

    goto :goto_3c

    .line 140
    :cond_67
    if-eqz v1, :cond_7d

    iget v1, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_45

    :cond_7d
    move v1, v3

    goto :goto_45

    .line 147
    :cond_7f
    return v3
.end method

.method private static showCard(Landroid/app/Activity;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 915
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    .line 916
    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->ai:Z

    if-eqz v1, :cond_1b

    .line 917
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 918
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->screen:Ljava/lang/ref/WeakReference;

    .line 919
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    .line 1003
    :goto_1a
    return-void

    .line 923
    :cond_1b
    :try_start_1b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 924
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 925
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

    .line 926
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

    .line 928
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 929
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 930
    const-string v1, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x1

    invoke-static {p0, v1, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    .line 931
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v1, :cond_2a1

    const-string v1, "\u2715  \u041e\u0442\u043a\u0430\u0437"

    const-string v4, "\u2715  Cancel"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_85
    const/4 v4, 0x4

    invoke-static {p0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 934
    new-instance v4, Lcom/isaigu/gymapp/ai/MapRunner$StopClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/MapRunner$StopClick;-><init>()V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->stopButton:Landroid/widget/TextView;

    .line 936
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43020000    # 130.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42280000    # 42.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 937
    const-string v1, "\u25b6  \u0421\u0442\u0430\u0440\u0442"

    const-string v4, "\u25b6  Start"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    .line 938
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/ai/MapRunner$GoClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/MapRunner$GoClick;-><init>()V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    sget-boolean v4, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v4, :cond_2ab

    :goto_c7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 940
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 941
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 942
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 943
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 945
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 946
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 947
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 948
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

    .line 949
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    .line 950
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    sget-wide v4, Lcom/isaigu/gymapp/ai/MapRunner;->FIGURE_T0:J

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 951
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 952
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v0, :cond_2af

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_130
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 953
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

    .line 954
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 955
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 956
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 957
    const-string v3, ""

    const/high16 v4, 0x41b00000    # 22.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    .line 958
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 959
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 960
    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    .line 961
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 962
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    .line 963
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 964
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 968
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

    .line 969
    new-instance v1, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 970
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 971
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 975
    new-instance v1, Lcom/isaigu/gymapp/ai/FloatCard;

    const-string v3, "map_card"

    const/high16 v4, 0x44200000    # 640.0f

    .line 976
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

    .line 977
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    .line 978
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 979
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 980
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 981
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 982
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 983
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 984
    if-eqz v0, :cond_28d

    .line 985
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 986
    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 987
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 988
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

    .line 989
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 990
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 991
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 992
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    or-int/lit8 v3, v3, 0x20

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 994
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 995
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 996
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/FloatCard;->attach(Landroid/view/Window;)V

    .line 998
    :cond_28d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V
    :try_end_294
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_294} :catch_296

    goto/16 :goto_1a

    .line 999
    :catch_296
    move-exception v0

    .line 1000
    const-string v1, "MapRunner.card"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1001
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    goto/16 :goto_1a

    .line 932
    :cond_2a1
    :try_start_2a1
    const-string v1, "\u25a0  \u0421\u0442\u043e\u043f"

    const-string v4, "\u25a0  Stop"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a8
    .catch Ljava/lang/Throwable; {:try_start_2a1 .. :try_end_2a8} :catch_296

    move-result-object v1

    goto/16 :goto_85

    .line 939
    :cond_2ab
    const/16 v0, 0x8

    goto/16 :goto_c7

    .line 952
    :cond_2af
    const/4 v0, 0x0

    goto/16 :goto_130
.end method

.method static skip()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 242
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    if-eqz v1, :cond_11

    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-nez v1, :cond_11

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 250
    :cond_11
    :goto_11
    return v0

    .line 245
    :cond_12
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v2

    move v1, v0

    .line 246
    :goto_19
    const/16 v3, 0x190

    if-ge v1, v3, :cond_37

    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v3

    if-nez v3, :cond_37

    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v3

    if-ne v3, v2, :cond_37

    .line 247
    sget-object v3, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Lcom/isaigu/gymapp/ai/MapClock;->tick(D)Z

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 249
    :cond_37
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    .line 250
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private static snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 891
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
    .line 269
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/MapRunner;->begin(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 528
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

    .line 529
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    :goto_1c
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 530
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    int-to-double v0, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    :goto_28
    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 531
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 532
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 533
    return-object v2

    .line 529
    :cond_33
    const/4 v0, 0x0

    goto :goto_1c

    .line 530
    :cond_35
    const-wide/16 v0, 0x0

    goto :goto_28
.end method

.method public static stop()V
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 582
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_8

    .line 646
    :cond_7
    :goto_7
    return-void

    .line 585
    :cond_8
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    sput-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    .line 587
    sput-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 588
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    .line 589
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->rows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1f
    :goto_1f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 590
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v10

    .line 591
    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v1, :cond_6a

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->ownStrength:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v3, v1

    .line 592
    :goto_3c
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 593
    if-eqz v10, :cond_a6

    if-eqz v1, :cond_a6

    .line 595
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 596
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/MapRunner;->snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v11

    .line 597
    array-length v4, v11

    new-array v12, v4, [I

    move v4, v5

    .line 598
    :goto_58
    array-length v6, v11

    if-ge v4, v6, :cond_77

    .line 599
    if-eqz v2, :cond_63

    aget v6, v11, v4

    aget v13, v2, v4

    if-ne v6, v13, :cond_74

    :cond_63
    aget v6, v1, v4

    :goto_65
    aput v6, v12, v4

    .line 598
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 591
    :cond_6a
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v3, v1

    goto :goto_3c

    .line 599
    :cond_74
    aget v6, v11, v4

    goto :goto_65

    .line 601
    :cond_77
    aget v1, v12, v5

    iput v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 602
    aget v1, v12, v7

    iput v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 603
    const/4 v1, 0x2

    aget v1, v12, v1

    iput v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 604
    const/4 v1, 0x3

    aget v1, v12, v1

    iput v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 605
    const/4 v1, 0x4

    aget v1, v12, v1

    if-ne v1, v7, :cond_b8

    move v1, v7

    :goto_8f
    iput-boolean v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 606
    const/4 v1, 0x5

    aget v1, v12, v1

    iput v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 607
    const/4 v1, 0x6

    aget v1, v12, v1

    iput v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 608
    const/4 v1, 0x7

    aget v1, v12, v1

    iput v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 609
    const/16 v1, 0x8

    aget v1, v12, v1

    iput v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 611
    :cond_a6
    if-eqz v10, :cond_1f

    if-eqz v3, :cond_1f

    .line 612
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 614
    :try_start_b0
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_b3} :catch_b5

    goto/16 :goto_1f

    .line 615
    :catch_b5
    move-exception v0

    goto/16 :goto_1f

    :cond_b8
    move v1, v5

    .line 605
    goto :goto_8f

    .line 620
    :cond_ba
    :try_start_ba
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 621
    if-eqz v0, :cond_c3

    .line 622
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_c3} :catch_12a

    .line 627
    :cond_c3
    :goto_c3
    sput-boolean v5, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    .line 628
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->ownStrength:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 629
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibAllowed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 630
    const-string v1, "map"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop at block "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    if-eqz v0, :cond_144

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v0

    :goto_e6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    sput-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 632
    sput-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    .line 633
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 634
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->own:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 635
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 636
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 637
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->hideCard()V

    .line 638
    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->ai:Z

    if-eqz v0, :cond_7

    .line 639
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiAnnounce;->end()V

    .line 640
    sput-boolean v5, Lcom/isaigu/gymapp/ai/MapRunner;->ai:Z

    .line 641
    sput-boolean v5, Lcom/isaigu/gymapp/ai/MapRunner;->noDouble:Z

    .line 642
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->screen:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_146

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->screen:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 643
    :goto_122
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    .line 644
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->mapEnded()V

    goto/16 :goto_7

    .line 624
    :catch_12a
    move-exception v0

    .line 625
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

    .line 630
    :cond_144
    const/4 v0, -0x1

    goto :goto_e6

    :cond_146
    move-object v0, v8

    .line 642
    goto :goto_122
.end method

.method static strength()I
    .registers 3

    .prologue
    .line 123
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_23

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->base:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 125
    :goto_e
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_25

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 127
    :goto_16
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_27

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_22
    return v0

    .line 124
    :cond_23
    const/4 v0, 0x0

    goto :goto_e

    .line 126
    :cond_25
    const/4 v1, 0x0

    goto :goto_16

    :cond_27
    move v0, v1

    .line 127
    goto :goto_22
.end method

.method private static swapForLeader(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 541
    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    .line 543
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v1

    .line 544
    if-nez v1, :cond_e

    .line 574
    :cond_d
    :goto_d
    return-void

    .line 547
    :cond_e
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    .line 548
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v3, :cond_1b

    .line 549
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 551
    :cond_1b
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v3, :cond_27

    .line 552
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 554
    :cond_27
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v3, :cond_33

    .line 555
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 557
    :cond_33
    iget v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 558
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v1, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 559
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    const-string v4, "diastasis"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 560
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHistory;->cardioMachine(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_53

    const/4 v0, 0x1

    :cond_53
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->noCardioMachine:Z

    .line 561
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->avoidFor(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/Set;

    move-result-object v1

    .line 562
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

    .line 563
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 564
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->safer(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 565
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_89} :catch_8a

    goto :goto_61

    .line 571
    :catch_8a
    move-exception v0

    .line 572
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

    .line 568
    :cond_a5
    :try_start_a5
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    if-lez v0, :cond_d

    .line 569
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
    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 683
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

    .line 685
    const-wide/16 v0, 0x0

    sget-wide v4, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    sub-long v4, v12, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v14, v0, v4

    .line 686
    sput-wide v12, Lcom/isaigu/gymapp/ai/MapRunner;->lastTickMs:J

    .line 687
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 688
    if-nez v0, :cond_3a

    .line 689
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    .line 746
    :goto_39
    return-void

    .line 692
    :cond_3a
    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v1, :cond_8d

    .line 693
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/MapRunner;->calibTick(D)V

    .line 694
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_6f

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_6f

    .line 695
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibRunS:D

    add-double/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibRunS:D

    .line 696
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibRunS:D

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6f

    .line 698
    const-wide/high16 v0, 0x406e000000000000L    # 240.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->calibRunS:D

    .line 700
    :try_start_5f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_68

    .line 702
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_68} :catch_73

    .line 707
    :cond_68
    :goto_68
    const-string v0, "map"

    const-string v1, "calibration 300 s \u2014 suit stopped"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_6f
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V

    goto :goto_39

    .line 704
    :catch_73
    move-exception v0

    .line 705
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

    .line 713
    :cond_8d
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_12d

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_12d

    const/4 v0, 0x1

    .line 714
    :goto_98
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v1, :cond_e1

    .line 715
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v11

    .line 716
    sget-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 717
    if-eqz v11, :cond_130

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_130

    if-eqz v8, :cond_130

    const/4 v1, 0x1

    move v10, v1

    .line 718
    :goto_b0
    if-eqz v10, :cond_134

    sget-wide v4, Lcom/isaigu/gymapp/ai/MapRunner;->cycleStartMs:J

    sub-long v4, v12, v4

    iget v1, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    int-to-long v6, v1

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    cmp-long v1, v4, v6

    if-gez v1, :cond_134

    const/4 v5, 0x1

    .line 719
    :goto_c2
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_136

    if-eqz v10, :cond_136

    const/4 v4, 0x1

    :goto_c9
    if-eqz v10, :cond_138

    iget v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    :goto_cd
    if-eqz v10, :cond_13a

    iget v7, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    :goto_d1
    if-eqz v10, :cond_13c

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 720
    :goto_d5
    if-eqz v10, :cond_13f

    iget v10, v11, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    int-to-double v10, v10

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v10, v10, v16

    .line 719
    :goto_de
    invoke-virtual/range {v1 .. v11}, Lcom/isaigu/gymapp/ai/MapDynamics;->advance(DZZIIDD)V

    .line 722
    :cond_e1
    sget-boolean v1, Lcom/isaigu/gymapp/ai/MapRunner;->ai:Z

    if-eqz v1, :cond_e8

    .line 723
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiAnnounce;->map()V

    .line 725
    :cond_e8
    if-eqz v0, :cond_f6

    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v1, v14, v15}, Lcom/isaigu/gymapp/ai/MapClock;->tick(D)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 726
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/MapRunner;->apply(Z)V

    .line 728
    :cond_f6
    if-eqz v0, :cond_142

    const-wide/16 v0, 0x0

    :goto_fa
    sput-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    .line 729
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_146

    .line 730
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

    .line 731
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    goto/16 :goto_39

    .line 713
    :cond_12d
    const/4 v0, 0x0

    goto/16 :goto_98

    .line 717
    :cond_130
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_b0

    .line 718
    :cond_134
    const/4 v5, 0x0

    goto :goto_c2

    .line 719
    :cond_136
    const/4 v4, 0x0

    goto :goto_c9

    :cond_138
    const/4 v6, 0x0

    goto :goto_cd

    :cond_13a
    const/4 v7, 0x0

    goto :goto_d1

    :cond_13c
    const-wide/16 v8, 0x0

    goto :goto_d5

    .line 720
    :cond_13f
    const-wide/16 v10, 0x0

    goto :goto_de

    .line 728
    :cond_142
    sget-wide v0, Lcom/isaigu/gymapp/ai/MapRunner;->idleS:D

    add-double/2addr v0, v2

    goto :goto_fa

    .line 734
    :cond_146
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-eqz v0, :cond_153

    .line 735
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    goto/16 :goto_39

    .line 738
    :cond_153
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getElapsedS()D

    move-result-wide v0

    const-wide v2, 0x40a0680000000000L    # 2100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_16e

    .line 740
    const-string v0, "map"

    const-string v1, "25 min \u2014 closed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    goto/16 :goto_39

    .line 744
    :cond_16e
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->currentExercise()I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 745
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/ai/MapRunner;->updateCard(J)V

    goto/16 :goto_39
.end method

.method private static updateCard(J)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 1020
    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->ai:Z

    if-eqz v0, :cond_b

    .line 1021
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiMapBoard;->update()V

    .line 1059
    :cond_a
    :goto_a
    return-void

    .line 1024
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1027
    sget-boolean v0, Lcom/isaigu/gymapp/ai/MapRunner;->waiting:Z

    if-eqz v0, :cond_23

    .line 1028
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->updateWaiting()V

    goto :goto_a

    .line 1031
    :cond_23
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v2

    .line 1032
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->getIndex()I

    move-result v3

    .line 1033
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

    .line 1034
    sget-object v5, Lcom/isaigu/gymapp/ai/MapRunner;->head:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_127

    const-string v0, ""

    :goto_53
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

    .line 1035
    sget v0, Lcom/isaigu/gymapp/ai/MapRunner;->swapped:I

    if-lez v0, :cond_131

    const-string v0, "  \u00b7  \u043f\u043e-\u0449\u0430\u0434\u044f\u0449\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v6, "  \u00b7  gentler exercises for the client"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_86
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/MapClock;->position()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setPlayhead(F)V

    .line 1037
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 1038
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1039
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

    .line 1040
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    :goto_e2
    const-string v2, ""

    .line 1051
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    :goto_e7
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f5

    .line 1052
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1053
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_1f0

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v3, "Next: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    if-eqz v2, :cond_1e8

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    :goto_118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1058
    :goto_120
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->next:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1034
    :cond_127
    const-string v0, "\u0410\u0432\u0442\u043e \u00b7 "

    const-string v7, "Auto \u00b7 "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_53

    .line 1035
    :cond_131
    const-string v0, ""

    goto/16 :goto_86

    .line 1043
    :cond_135
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1c1

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    :goto_13f
    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1044
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    if-eqz v0, :cond_1c4

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    :goto_14a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    sget-object v1, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 1046
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    if-eqz v0, :cond_1dc

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1dc

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

    :goto_177
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1047
    if-eqz v1, :cond_1df

    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    :goto_17f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Hz \u00b7 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1e2

    iget v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    :goto_18d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1048
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->approach:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e5

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

    :goto_1b4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e2

    :cond_1c1
    move-object v0, v1

    .line 1043
    goto/16 :goto_13f

    .line 1044
    :cond_1c4
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1d2

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14a

    :cond_1d2
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "Impulse"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14a

    .line 1046
    :cond_1dc
    const-string v0, ""

    goto :goto_177

    .line 1047
    :cond_1df
    iget v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_17f

    :cond_1e2
    iget v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_18d

    .line 1048
    :cond_1e5
    const-string v0, ""

    goto :goto_1b4

    .line 1054
    :cond_1e8
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_118

    .line 1051
    :cond_1f0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_e7

    :cond_1f5
    move-object v0, v2

    goto/16 :goto_120
.end method

.method private static updateWaiting()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1064
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

    .line 1065
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1066
    if-eqz v0, :cond_25

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v0, :cond_25

    const/4 v0, 0x1

    :goto_22
    or-int/2addr v0, v1

    move v1, v0

    .line 1067
    goto :goto_b

    :cond_25
    move v0, v2

    .line 1066
    goto :goto_22

    .line 1068
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

    .line 1069
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->line:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setPlayhead(F)V

    .line 1071
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

    .line 1072
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1077
    :goto_7b
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->figure:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v0, :cond_81

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    :cond_81
    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1078
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->name:Landroid/widget/TextView;

    const-string v3, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v4, "Set the strength"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->detail:Landroid/widget/TextView;

    const-string v3, "\u0418\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0432\u044a\u0440\u0432\u044f\u0442: \u043a\u0430\u0447\u0438 \u043e\u0431\u0449\u0430\u0442\u0430 \u0441\u0438\u043b\u0430 (\u0434\u043e +5 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430) \u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u0430\u043d\u0430\u043b \u043e\u0442 \u0433\u043b\u0430\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u0434\u043e \u0441\u0438\u043b\u043d\u043e, \u043d\u043e \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435 (6\u20137 \u043e\u0442 10). \u041f\u043e\u0441\u043b\u0435 \u25b6 \u0421\u0442\u0430\u0440\u0442."

    const-string v4, "The impulses run: raise the total strength (up to +5 a second) and each channel on the main screen to strong but pleasant (6\u20137 of 10). Then \u25b6 Start."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
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

    .line 1084
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    if-eqz v0, :cond_d6

    .line 1085
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1086
    sget-object v2, Lcom/isaigu/gymapp/ai/MapRunner;->goButton:Landroid/widget/TextView;

    if-eqz v1, :cond_da

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_d3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1088
    :cond_d6
    return-void

    .line 1083
    :cond_d7
    const-string v0, ""

    goto :goto_c1

    .line 1086
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

    .line 833
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v7

    .line 834
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    if-eqz v0, :cond_14

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 887
    :cond_14
    :goto_14
    return-void

    .line 837
    :cond_15
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->dyn:Lcom/isaigu/gymapp/ai/MapDynamics;

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/MapRunner;->stepOf(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/MapDynamics;->cycle(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v8

    .line 838
    sput-object v8, Lcom/isaigu/gymapp/ai/MapRunner;->cur:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 839
    iget v0, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v1, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 841
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

    if-eqz v0, :cond_10a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 842
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapRunner;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v10

    .line 843
    if-eqz v10, :cond_34

    .line 846
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 847
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 848
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 849
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 853
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v4, :cond_f2

    iget-wide v12, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v14, 0x0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_f2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v4

    if-eqz v4, :cond_f2

    move v4, v2

    .line 854
    :goto_71
    iget-boolean v6, v7, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-nez v6, :cond_77

    if-eqz v4, :cond_f5

    :cond_77
    sget-boolean v6, Lcom/isaigu/gymapp/ai/MapRunner;->noDouble:Z

    if-nez v6, :cond_f5

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v6

    if-eqz v6, :cond_f5

    iget v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    const/4 v11, 0x2

    if-lt v6, v11, :cond_f5

    move v6, v2

    .line 855
    :goto_87
    iput-boolean v6, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 856
    if-eqz v4, :cond_f7

    if-eqz v6, :cond_f7

    .line 857
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 858
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

    .line 865
    :cond_a2
    :goto_a2
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 866
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 867
    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/SafeGuard;->clamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 868
    sget-object v4, Lcom/isaigu/gymapp/ai/MapRunner;->wrote:Ljava/util/Map;

    invoke-static {v10}, Lcom/isaigu/gymapp/ai/MapRunner;->snap(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    if-eqz v1, :cond_c2

    .line 870
    iget v1, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget v3, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v1

    move v1, v5

    .line 873
    :cond_c2
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_d2

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v4, :cond_d2

    .line 874
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v6, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v6, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 877
    :cond_d2
    :try_start_d2
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_d5} :catch_d7

    goto/16 :goto_34

    .line 878
    :catch_d7
    move-exception v0

    .line 879
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

    :cond_f2
    move v4, v5

    .line 853
    goto/16 :goto_71

    :cond_f5
    move v6, v5

    .line 854
    goto :goto_87

    .line 859
    :cond_f7
    if-eqz v6, :cond_a2

    .line 860
    iput v5, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 861
    iget v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    if-gtz v4, :cond_a2

    .line 862
    iget v4, v7, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    if-lez v4, :cond_108

    iget v4, v7, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    :goto_105
    iput v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    goto :goto_a2

    :cond_108
    const/4 v4, 0x7

    goto :goto_105

    .line 882
    :cond_10a
    sget-object v0, Lcom/isaigu/gymapp/ai/MapRunner;->clock:Lcom/isaigu/gymapp/ai/MapClock;

    int-to-double v2, v3

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/MapClock;->setCycleS(D)V

    .line 884
    :try_start_110
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_113
    .catch Ljava/lang/Throwable; {:try_start_110 .. :try_end_113} :catch_115

    goto/16 :goto_14

    .line 885
    :catch_115
    move-exception v0

    goto/16 :goto_14
.end method
