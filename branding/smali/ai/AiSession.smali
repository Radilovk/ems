.class public final Lcom/isaigu/gymapp/ai/AiSession;
.super Ljava/lang/Object;
.source "AiSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiSession$Stage;,
        Lcom/isaigu/gymapp/ai/AiSession$Ticker;
    }
.end annotation


# static fields
.field private static final CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

.field private static final GUARD_TOAST_GAP_MS:J = 0xfa0L

.field private static final PREFS:Ljava/lang/String; = "ai_session"

.field private static final SOLO_CALIB_STEP_PER_S:D = 1.0

.field private static final TICK_MS:J = 0xfaL

.field private static calibPercent:I

.field private static calibStimOn:Z

.field private static energy:Lcom/isaigu/gymapp/ai/AiEnergy;

.field private static engine:Lcom/isaigu/gymapp/ai/AiEngine;

.field private static epocClosed:Z

.field private static exercises:Lcom/isaigu/gymapp/ai/AiExercises;

.field private static exercisesSaved:Z

.field private static exercisesUser:J

.field private static final handler:Landroid/os/Handler;

.field private static input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

.field private static lastAppliedCycle:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

.field private static lastBandHr:I

.field private static lastBandHrMs:J

.field private static lastGuardToastMs:J

.field private static lastSentFrac:D

.field private static lastTickMs:J

.field private static manager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static panelRoot:Landroid/view/View;

.field private static plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

.field private static profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

.field private static restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

.field private static soloAccum:D

.field private static soloAutoRamp:Z

.field private static stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

.field private static final ticker:Ljava/lang/Runnable;

.field private static final trainerZones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "[I>;"
        }
    .end annotation
.end field

.field private static workout:Lcom/isaigu/gymapp/ai/Workout;

.field private static written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

.field private static writtenPercent:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v4, 0x4

    const/4 v8, -0x1

    .line 32
    new-instance v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v2, 0x55

    const/16 v3, 0x15e

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move v5, v4

    invoke-direct/range {v1 .. v7}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 38
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 40
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 59
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 61
    sput v8, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    .line 66
    sput v8, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Ticker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession$Ticker;-><init>(Lcom/isaigu/gymapp/ai/AiSession$1;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    .line 392
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->trainerZones:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 26
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->tick()V

    return-void
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-object v0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/ai/AiEngine;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static acquireBand(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 205
    if-eqz p0, :cond_d

    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 206
    const-string v0, "ai"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->acquire(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_e

    .line 211
    :cond_d
    :goto_d
    return-void

    .line 208
    :catch_e
    move-exception v0

    .line 209
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireBand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static activityOf(Landroid/view/View;)Landroid/app/Activity;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1105
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1106
    :goto_7
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_26

    .line 1107
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1f

    .line 1108
    check-cast v0, Landroid/app/Activity;

    .line 1112
    :goto_11
    return-object v0

    .line 1105
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_7

    :cond_1d
    move-object v0, v1

    goto :goto_7

    .line 1110
    :cond_1f
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_7

    :cond_26
    move-object v0, v1

    .line 1112
    goto :goto_11
.end method

.method public static adjustCalibration(I)V
    .registers 4

    .prologue
    .line 328
    const/4 v0, 0x0

    const/16 v1, 0x64

    sget v2, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    add-int/2addr v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    .line 329
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v0, :cond_17

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V

    .line 332
    :cond_17
    return-void
.end method

.method public static answerCheckpoint(I)V
    .registers 5

    .prologue
    .line 601
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_d

    .line 602
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->answerCheckpoint(IJ)V

    .line 604
    :cond_d
    return-void
.end method

.method private static apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V
    .registers 5

    .prologue
    .line 817
    if-nez p0, :cond_3

    .line 827
    :goto_2
    return-void

    .line 820
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_1c

    .line 821
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/isaigu/gymapp/ai/AiExercises;->onCycle(JLcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    .line 823
    :cond_1c
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 824
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    sput-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 825
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->lastAppliedCycle:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 826
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    goto :goto_2
.end method

.method private static applyCalibration()V
    .registers 2

    .prologue
    .line 806
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 807
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 808
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 809
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 810
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 811
    const/16 v1, 0x190

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 812
    const/16 v1, 0x12c

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 813
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 814
    return-void
.end method

.method private static applyWorkout()V
    .registers 3

    .prologue
    .line 463
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_30

    .line 464
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->aiGoal()Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 465
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 466
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 467
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 470
    :cond_30
    return-void
.end method

.method public static attach(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .prologue
    .line 79
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    .line 80
    sput-object p1, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 81
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->attachButton(Landroid/view/View;)V

    .line 82
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->attach(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 83
    return-void
.end method

.method public static bandState()Ljava/lang/String;
    .registers 1

    .prologue
    .line 233
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 235
    :goto_4
    return-object v0

    .line 234
    :catch_5
    move-exception v0

    .line 235
    const-string v0, ""

    goto :goto_4
.end method

.method public static beginCalibration()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 303
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 304
    const/16 v0, 0xf

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->currentStrength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    .line 305
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 306
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 307
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    .line 308
    return-void
.end method

.method public static beginRestHr()V
    .registers 2

    .prologue
    .line 290
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->restedLast10min:Z

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;-><init>(Z)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 291
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 292
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    .line 293
    return-void
.end method

.method public static beginSetup(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->loadInput(Landroid/content/Context;)V

    .line 277
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_13

    .line 279
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiProfile;->applyTo(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 281
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyWorkout()V

    .line 282
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 283
    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 284
    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 285
    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 286
    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 287
    return-void
.end method

.method public static buildPlan(IDJ)V
    .registers 12

    .prologue
    .line 297
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiPlanner;->derive(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;IDJ)Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 298
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->build(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 299
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 300
    return-void
.end method

.method private static channelStim()Lcom/isaigu/gymapp/ai/AiEnergy$Stim;
    .registers 4

    .prologue
    .line 740
    new-instance v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;-><init>()V

    .line 741
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 743
    if-eqz v2, :cond_3f

    .line 744
    :try_start_b
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 745
    :goto_19
    if-eqz v0, :cond_31

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v3, :cond_31

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v3, :cond_31

    .line 746
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    .line 748
    :cond_31
    iget-object v0, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_3f

    .line 749
    iget-object v0, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3f} :catch_42

    .line 754
    :cond_3f
    :goto_3f
    return-object v1

    .line 744
    :cond_40
    const/4 v0, 0x0

    goto :goto_19

    .line 752
    :catch_42
    move-exception v0

    goto :goto_3f
.end method

.method public static close()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 540
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_10

    .line 541
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    .line 543
    :cond_10
    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    .line 544
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopTicker()V

    .line 545
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 546
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 547
    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 548
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    .line 549
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->releaseBand()V

    .line 550
    return-void
.end method

.method public static conflict()Ljava/lang/String;
    .registers 2

    .prologue
    .line 250
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 251
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u043f\u0440\u0435\u0434\u0438 AI."

    const-string v1, "Close the automatic session before AI."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_e
    return-object v0

    .line 254
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->isSyncActive()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 255
    const-string v0, "\u0421\u043f\u0440\u0438 \u043c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0430\u0442\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043f\u0440\u0435\u0434\u0438 AI \u0441\u0435\u0441\u0438\u044f."

    const-string v1, "Stop music sync before an AI session."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_e

    .line 258
    :catch_1e
    move-exception v0

    .line 261
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 262
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0430\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0430 \u0442\u0430\u0439\u043c\u0435\u0440\u0430 \u043f\u0440\u0435\u0434\u0438 AI \u0441\u0435\u0441\u0438\u044f."

    const-string v1, "Disarm the timer block program before an AI session."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_2c} :catch_2e

    move-result-object v0

    goto :goto_e

    .line 265
    :catch_2e
    move-exception v0

    .line 267
    :cond_2f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 268
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a \u0438 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v1, "Add a participant and connect the suit."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 270
    :cond_3e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static continueBlock()V
    .registers 4

    .prologue
    .line 577
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v0, :cond_5

    .line 583
    :cond_4
    :goto_4
    return-void

    .line 580
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->continueBlock(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 581
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ensureDeviceRunning()V

    goto :goto_4
.end method

.method public static currentExercise()I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 532
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    .line 533
    if-eqz v1, :cond_15

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_15

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/AiExercises;->current(Lcom/isaigu/gymapp/ai/AiEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_16

    move-result v0

    .line 535
    :cond_15
    :goto_15
    return v0

    .line 534
    :catch_16
    move-exception v1

    goto :goto_15
.end method

.method private static currentStrength()I
    .registers 2

    .prologue
    .line 794
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_22

    :try_start_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 797
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 798
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_20} :catch_21

    .line 802
    :goto_20
    return v0

    .line 800
    :catch_21
    move-exception v0

    .line 802
    :cond_22
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private static ensureDeviceRunning()V
    .registers 4

    .prologue
    .line 970
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 971
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_11

    .line 979
    :cond_10
    :goto_10
    return-void

    .line 975
    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_10

    .line 976
    :catch_17
    move-exception v0

    .line 977
    const-string v1, "ai"

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

    goto :goto_10
.end method

.method private static forceApplyCurrent()V
    .registers 6

    .prologue
    .line 830
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    if-nez v0, :cond_d

    .line 837
    :cond_c
    :goto_c
    return-void

    .line 833
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v2

    .line 834
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_32

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v0

    .line 835
    :goto_23
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 836
    sget v3, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v4, v3

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    goto :goto_c

    .line 834
    :cond_32
    const-wide/16 v0, 0x0

    goto :goto_23
.end method

.method public static getActiveKcal()D
    .registers 2

    .prologue
    .line 764
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->getActiveKcal()D

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_a
.end method

.method public static getCalibPercent()I
    .registers 1

    .prologue
    .line 159
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    return v0
.end method

.method public static getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;
    .registers 1

    .prologue
    .line 768
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    return-object v0
.end method

.method public static getEngine()Lcom/isaigu/gymapp/ai/AiEngine;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    return-object v0
.end method

.method public static getExercises()Lcom/isaigu/gymapp/ai/AiExercises;
    .registers 1

    .prologue
    .line 526
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    return-object v0
.end method

.method public static getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    return-object v0
.end method

.method public static getKcal()D
    .registers 2

    .prologue
    .line 759
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->getKcal()D

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_a
.end method

.method public static getLastBandHr()I
    .registers 1

    .prologue
    .line 167
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    return v0
.end method

.method public static getLastBandHrAgeMs()J
    .registers 4

    .prologue
    .line 171
    sget-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHrMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHrMs:J

    sub-long/2addr v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_f
.end method

.method static getPanelRoot()Landroid/view/View;
    .registers 1

    .prologue
    .line 1116
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    return-object v0
.end method

.method public static getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 1

    .prologue
    .line 151
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    return-object v0
.end method

.method public static getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    return-object v0
.end method

.method public static getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;
    .registers 1

    .prologue
    .line 143
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    return-object v0
.end method

.method public static getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 1

    .prologue
    .line 135
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-object v0
.end method

.method public static getWorkout()Lcom/isaigu/gymapp/ai/Workout;
    .registers 1

    .prologue
    .line 459
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method private static guardManualChanges(J)V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 863
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_e

    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ltz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_f

    .line 941
    :cond_e
    :goto_e
    return-void

    .line 866
    :cond_f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v9

    .line 867
    if-eqz v9, :cond_e

    .line 871
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v0

    move v6, v2

    .line 874
    :goto_1e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_bc

    .line 875
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 876
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_38

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v8

    if-nez v8, :cond_3c

    .line 874
    :cond_38
    :goto_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 879
    :cond_3c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v8

    invoke-virtual {v8}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v10

    .line 880
    if-eqz v10, :cond_38

    .line 883
    iget v8, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    sget-object v11, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    if-ne v8, v11, :cond_99

    iget v8, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    sget-object v11, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    if-ne v8, v11, :cond_99

    iget v8, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    sget-object v11, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 884
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-ne v8, v11, :cond_99

    iget v8, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    sget-object v11, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 885
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-ne v8, v11, :cond_99

    iget-boolean v11, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-lez v8, :cond_b3

    sget v8, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-lez v8, :cond_b3

    .line 886
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v8

    if-eqz v8, :cond_b3

    move v8, v7

    :goto_81
    if-ne v11, v8, :cond_99

    iget-boolean v8, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v8, :cond_9a

    iget v8, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    const/16 v11, 0x78

    sget-object v12, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v12, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 887
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-eq v8, v11, :cond_9a

    :cond_99
    move v6, v7

    .line 890
    :cond_9a
    iget v8, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sget v11, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-le v8, v11, :cond_b5

    move v4, v7

    .line 895
    :cond_a1
    :goto_a1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v8

    if-ne v0, v8, :cond_38

    iget-object v8, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v8, :cond_38

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_38

    move v3, v7

    .line 896
    goto :goto_38

    :cond_b3
    move v8, v2

    .line 886
    goto :goto_81

    .line 892
    :cond_b5
    iget v8, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-ge v8, v5, :cond_a1

    .line 893
    iget v5, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_a1

    .line 899
    :cond_bc
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_f6

    .line 900
    if-nez v6, :cond_ca

    if-nez v4, :cond_ca

    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ge v5, v0, :cond_e

    .line 902
    :cond_ca
    if-eqz v4, :cond_d8

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_d8

    .line 903
    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AiSession;->maxRowStrength(Ljava/util/List;)I

    move-result v5

    .line 904
    :cond_d8
    const/16 v0, 0x64

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    .line 905
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V

    .line 906
    if-eqz v6, :cond_e

    .line 907
    const-string v0, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438\u0442\u0435 \u0441\u0435 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430\u0442 \u043e\u0442 AI."

    const-string v1, "Parameters are controlled by the AI."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    goto/16 :goto_e

    .line 913
    :cond_f6
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_e

    .line 916
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 917
    if-eqz v3, :cond_126

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_10e

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_10e

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_126

    .line 919
    :cond_10e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->userPause(J)V

    .line 920
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 921
    const-string v0, "\u0421\u043f\u0440\u044f\u043d\u043e \u043e\u0442 \u043e\u0441\u043d\u043e\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u2014 AI \u0435 \u043d\u0430 \u043f\u0430\u0443\u0437\u0430. \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u043e\u0442 AI."

    const-string v1, "Stopped from the main screen \u2014 AI paused. Resume in AI."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    .line 923
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->show()V

    goto/16 :goto_e

    .line 926
    :cond_126
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ge v5, v1, :cond_14c

    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-lez v1, :cond_14c

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_14c

    .line 927
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    int-to-double v2, v5

    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->reduceTo(DJ)V

    .line 928
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 929
    const-string v0, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d\u043e \u0440\u044a\u0447\u043d\u043e \u2014 AI \u0433\u043e \u043f\u0440\u0438\u0435\u043c\u0430 \u043a\u0430\u0442\u043e \u201e\u041d\u0430\u043c\u0430\u043b\u0438\u201c."

    const-string v1, "Reduced manually \u2014 AI takes it as \u201cReduce\u201d."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    goto/16 :goto_e

    .line 933
    :cond_14c
    if-nez v6, :cond_154

    if-nez v4, :cond_154

    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ge v5, v0, :cond_e

    .line 934
    :cond_154
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 935
    if-eqz v6, :cond_16a

    .line 936
    const-string v0, "AI \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0438\u043c\u043f\u0443\u043b\u0441 \u0438 \u043f\u0430\u0443\u0437\u0430 \u2014 \u0440\u044a\u0447\u043d\u0430\u0442\u0430 \u043f\u0440\u043e\u043c\u044f\u043d\u0430 \u0435 \u043e\u0442\u043c\u0435\u043d\u0435\u043d\u0430."

    const-string v1, "AI controls frequency, pulse and pause \u2014 manual change undone."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    :goto_165
    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    goto/16 :goto_e

    .line 938
    :cond_16a
    const-string v0, "AI \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430. \u0418\u0437\u043f\u043e\u043b\u0437\u0432\u0430\u0439 \u201e\u041d\u0430\u043c\u0430\u043b\u0438\u201c \u0438\u043b\u0438 \u0421\u0422\u041e\u041f."

    const-string v1, "AI controls strength. Use Reduce or STOP."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_165
.end method

.method public static increase()V
    .registers 4

    .prologue
    .line 561
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_10

    .line 562
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->increase(J)V

    .line 563
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 565
    :cond_10
    return-void
.end method

.method public static isBandConfigured(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 196
    if-eqz p0, :cond_a

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_b

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 198
    :cond_a
    :goto_a
    return v0

    .line 197
    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public static isBandLinkUp()Z
    .registers 1

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 227
    :goto_4
    return v0

    .line 226
    :catch_5
    move-exception v0

    .line 227
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static isBandStreaming()Z
    .registers 4

    .prologue
    .line 175
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHrAgeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isCalibStimOn()Z
    .registers 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    return v0
.end method

.method public static isSoloRamping()Z
    .registers 1

    .prologue
    .line 340
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    return v0
.end method

.method private static leader()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 774
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 790
    :cond_6
    :goto_6
    return-object v0

    .line 778
    :cond_7
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 779
    if-nez v3, :cond_11

    move-object v0, v1

    .line 780
    goto :goto_6

    .line 782
    :cond_11
    const/4 v0, 0x0

    move v2, v0

    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2c

    .line 783
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 784
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_2b

    move-result v4

    if-eqz v4, :cond_6

    .line 782
    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    .line 788
    :catch_2b
    move-exception v0

    :cond_2c
    move-object v0, v1

    .line 790
    goto :goto_6
.end method

.method private static loadInput(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1060
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 1061
    if-nez p0, :cond_b

    .line 1082
    :cond_a
    return-void

    .line 1065
    :cond_b
    :try_start_b
    const-string v0, "ai_session"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1066
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "goal"

    const-string v4, "TONE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 1067
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "mode"

    const-string v4, "ACTIVE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Mode;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 1068
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "sex"

    const-string v4, "MALE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1069
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "fitness"

    const-string v4, "MID"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 1070
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "operator"

    const-string v4, "TRAINER"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Operator;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 1071
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "age"

    const/16 v4, 0x23

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 1072
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "pause"

    const-string v4, "AUTO"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 1073
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "weight_kg"

    const/16 v4, 0x4b

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-double v4, v3

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 1074
    const-string v2, "total_s"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1075
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-lez v0, :cond_bd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_9a
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_9c} :catch_bf

    .line 1078
    :goto_9c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiModel$Screening;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 1079
    sget-object v2, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_a9
    if-ge v0, v3, :cond_a

    aget-object v4, v2, v0

    .line 1080
    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 1075
    :cond_bd
    const/4 v0, 0x0

    goto :goto_9a

    .line 1076
    :catch_bf
    move-exception v0

    goto :goto_9c
.end method

.method private static maxRowStrength(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 944
    move v1, v0

    move v2, v0

    .line 945
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 946
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 947
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 948
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 949
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 945
    :cond_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 952
    :cond_39
    return v2
.end method

.method private static notifyGuard(Ljava/lang/String;J)V
    .registers 8

    .prologue
    .line 956
    const-string v0, "ai"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    sget-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastGuardToastMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    if-nez v0, :cond_27

    .line 966
    :cond_26
    :goto_26
    return-void

    .line 960
    :cond_27
    sput-wide p1, Lcom/isaigu/gymapp/ai/AiSession;->lastGuardToastMs:J

    .line 962
    :try_start_29
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 963
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_37} :catch_38

    goto :goto_26

    .line 964
    :catch_38
    move-exception v0

    goto :goto_26
.end method

.method public static onHeartRate(I)V
    .registers 3

    .prologue
    .line 114
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->onHeartRateImpl(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 118
    :goto_3
    return-void

    .line 115
    :catch_4
    move-exception v0

    .line 116
    const-string v1, "AiSession.onHeartRate"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static onHeartRateImpl(I)V
    .registers 5

    .prologue
    .line 121
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->onHeartRate(I)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    sput p0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    .line 124
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHrMs:J

    .line 125
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_1b

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v2, :cond_1b

    .line 126
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v2, v0, v1, p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->onSample(JI)V

    .line 130
    :cond_1a
    :goto_1a
    return-void

    .line 127
    :cond_1b
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_2b

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_1a

    .line 128
    :cond_2b
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1, p0}, Lcom/isaigu/gymapp/ai/AiEngine;->onHr(JI)V

    goto :goto_1a
.end method

.method public static onPulseCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 88
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->onPulseCycleImpl(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 92
    :goto_3
    return-void

    .line 89
    :catch_4
    move-exception v0

    .line 90
    const-string v1, "AiSession.onPulseCycle"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static onPulseCycleImpl(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .prologue
    .line 95
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->onPulseCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 97
    if-eqz p0, :cond_b

    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-eq p0, v0, :cond_c

    .line 109
    :cond_b
    :goto_b
    return-void

    .line 100
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_3e

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v2, :cond_3e

    .line 102
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_23} :catch_24

    goto :goto_b

    .line 106
    :catch_24
    move-exception v0

    .line 107
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPulseCycle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 103
    :cond_3e
    :try_start_3e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_b

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v0, :cond_b

    .line 104
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_4b} :catch_24

    goto :goto_b
.end method

.method public static ownsOutput()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ownsOutput()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 186
    :cond_7
    :goto_7
    return v0

    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_30

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v1, :cond_30

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 187
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v2, :cond_30

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 188
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v2, :cond_30

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 189
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v2, :cond_7

    :cond_30
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_3a

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-nez v1, :cond_7

    :cond_3a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1122
    if-eqz p0, :cond_11

    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_14

    if-eq v1, v0, :cond_12

    .line 1124
    :cond_11
    :goto_11
    return v0

    .line 1122
    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 1123
    :catch_14
    move-exception v1

    goto :goto_11
.end method

.method private static personalZones()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 399
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->trainerZones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 401
    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_13

    .line 430
    :cond_12
    :goto_12
    return-void

    .line 404
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v4

    move v3, v2

    .line 405
    :goto_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_12

    .line 406
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 407
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-nez v1, :cond_38

    .line 405
    :cond_34
    :goto_34
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1a

    .line 410
    :cond_38
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    .line 411
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v6

    .line 412
    if-eqz v5, :cond_34

    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_34

    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v1, :cond_34

    if-eqz v6, :cond_34

    .line 415
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiProfile;->personal()Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v7

    .line 416
    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 419
    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 420
    invoke-virtual {v7, v1}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->apply([I)[I

    move-result-object v7

    .line 421
    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->trainerZones:Ljava/util/Map;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 422
    :goto_70
    array-length v1, v7

    iget-object v8, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v8, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_87

    .line 423
    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v8, v7, v0

    aput v8, v1, v0

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 425
    :cond_87
    const-string v0, "ai"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "personal zones user "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, v6, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_af} :catch_b0

    goto :goto_34

    .line 427
    :catch_b0
    move-exception v0

    .line 428
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "personalZones: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12
.end method

.method public static reconnectBand(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 215
    if-eqz p0, :cond_d

    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 216
    const-string v0, "ai"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->reconnect(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_e

    .line 221
    :cond_d
    :goto_d
    return-void

    .line 218
    :catch_e
    move-exception v0

    .line 219
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reconnectBand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static reduce()V
    .registers 4

    .prologue
    .line 553
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_10

    .line 554
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->reduce(J)V

    .line 555
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 557
    :cond_10
    return-void
.end method

.method private static releaseBand()V
    .registers 4

    .prologue
    .line 241
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 242
    :goto_a
    const-string v1, "ai"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_12

    .line 246
    :goto_f
    return-void

    .line 241
    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    .line 243
    :catch_12
    move-exception v0

    .line 244
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseBand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private static restoreZones()V
    .registers 7

    .prologue
    .line 434
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->trainerZones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 435
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 436
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    move-object v3, v2

    .line 437
    :goto_2b
    if-eqz v3, :cond_a

    iget-object v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v2, :cond_a

    iget-object v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v2, :cond_a

    .line 438
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 439
    const/4 v2, 0x0

    :goto_3e
    array-length v5, v0

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v2, v5, :cond_58

    .line 440
    iget-object v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v6, v0, v2

    aput v6, v5, v2

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 436
    :cond_55
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_2b

    .line 442
    :cond_58
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_a

    .line 445
    :catch_5c
    move-exception v0

    .line 446
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreZones: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_75
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->trainerZones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 449
    return-void
.end method

.method private static saveExercises()V
    .registers 8

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 507
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 508
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_1a

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->exercisesSaved:Z

    if-nez v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiExercises;->getWorkout()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 523
    :cond_1a
    :goto_1a
    return-void

    .line 511
    :cond_1b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->exercisesSaved:Z

    .line 513
    :try_start_1e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_ab

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 514
    :goto_28
    if-eqz v0, :cond_1a

    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->exercisesUser:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1a

    .line 515
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/AiExercises;->outcome(Lcom/isaigu/gymapp/ai/AiEngine;)Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;

    move-result-object v1

    .line 516
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->exercisesUser:J

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiExercises;->getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->programId:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/ai/AutoHistory;->remember(Landroid/content/Context;JLjava/lang/String;Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;)V

    .line 517
    const-string v0, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exercise outcome lv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " done "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->done:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "% cut "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->cut:D

    mul-double/2addr v4, v6

    .line 518
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "% hr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->hrOver:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_8f} :catch_90

    goto :goto_1a

    .line 520
    :catch_90
    move-exception v0

    .line 521
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exercise outcome: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 513
    :cond_ab
    const/4 v0, 0x0

    goto/16 :goto_28
.end method

.method private static saveInput(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1085
    if-nez p0, :cond_4

    .line 1102
    :goto_3
    return-void

    .line 1089
    :cond_4
    :try_start_4
    const-string v1, "ai_session"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "goal"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 1090
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mode"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 1091
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sex"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1092
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fitness"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 1093
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "operator"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 1094
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "age"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 1095
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pause"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 1096
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weight_kg"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 1097
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "total_s"

    .line 1098
    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v3, :cond_8c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_8c
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1099
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_93} :catch_95

    goto/16 :goto_3

    .line 1100
    :catch_95
    move-exception v0

    goto/16 :goto_3
.end method

.method public static setActivePause(Z)V
    .registers 5

    .prologue
    .line 569
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_10

    .line 570
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->setActivePause(ZJ)V

    .line 571
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 573
    :cond_10
    return-void
.end method

.method private static setWorkLengthAll(I)V
    .registers 5

    .prologue
    .line 1031
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 1044
    :cond_4
    return-void

    .line 1034
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    .line 1035
    if-eqz v2, :cond_4

    .line 1038
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1039
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1040
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1041
    iput p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 1038
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method

.method public static startCalibrationStim(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 311
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v1, :cond_6

    .line 325
    :goto_5
    return-void

    .line 314
    :cond_6
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 315
    const/16 v1, 0xe10

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->setWorkLengthAll(I)V

    .line 316
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V

    .line 318
    :try_start_10
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v1, :cond_19

    .line 319
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_24

    .line 324
    :cond_19
    :goto_19
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v1, v2, :cond_3e

    :goto_21
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    goto :goto_5

    .line 321
    :catch_24
    move-exception v1

    .line 322
    const-string v2, "ai"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAll: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 324
    :cond_3e
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static startExercises(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 475
    sput-object v9, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    .line 476
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->exercisesSaved:Z

    .line 477
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 479
    :try_start_a
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 480
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->programForAi(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;I)Ljava/lang/String;

    move-result-object v10

    .line 481
    if-nez v10, :cond_20

    .line 504
    :goto_1f
    return-void

    .line 484
    :cond_20
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 485
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHistory;->cardioMachine(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_ad

    const/4 v1, 0x1

    :goto_2a
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoTemplates;->noCardioMachine:Z

    .line 486
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_b0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v1

    move-object v4, v1

    .line 488
    :goto_37
    if-eqz v4, :cond_b2

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    :goto_3b
    sput-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->exercisesUser:J

    .line 489
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->exercisesUser:J

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoHistory;->of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    move-result-object v5

    .line 490
    iget-wide v2, v5, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->lastActiveMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoHistory;->hoursSince(JJ)D

    move-result-wide v6

    .line 491
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v1, :cond_b7

    .line 492
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-eqz v4, :cond_b5

    iget v3, v4, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    :goto_59
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I

    invoke-static/range {v1 .. v7}, Lcom/isaigu/gymapp/ai/AiExercises;->forWorkout(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;ILcom/isaigu/gymapp/ai/AiModel$Plan;ID)Lcom/isaigu/gymapp/ai/AiExercises;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    .line 493
    const-string v0, "ai"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "workout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->totalSets()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_8f} :catch_90

    goto :goto_1f

    .line 500
    :catch_90
    move-exception v0

    .line 501
    sput-object v9, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    .line 502
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exercises: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_ad
    move v1, v0

    .line 485
    goto/16 :goto_2a

    :cond_b0
    move-object v4, v9

    .line 487
    goto :goto_37

    .line 488
    :cond_b2
    const-wide/16 v2, 0x0

    goto :goto_3b

    :cond_b5
    move v3, v0

    .line 492
    goto :goto_59

    .line 496
    :cond_b7
    :try_start_b7
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-eqz v4, :cond_fd

    iget v3, v4, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    :goto_bd
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I

    sget-wide v12, Lcom/isaigu/gymapp/ai/AiSession;->exercisesUser:J

    .line 497
    invoke-static {p0, v12, v13, v10}, Lcom/isaigu/gymapp/ai/AutoHistory;->outcomes(Landroid/content/Context;JLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 496
    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/ai/AiExercises;->build(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;ILcom/isaigu/gymapp/ai/AiModel$Plan;IDLjava/util/List;)Lcom/isaigu/gymapp/ai/AiExercises;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    .line 498
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exercises "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 499
    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    if-eqz v3, :cond_f0

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiExercises;->getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->level:I

    :cond_f0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_fb} :catch_90

    goto/16 :goto_1f

    :cond_fd
    move v3, v0

    .line 496
    goto :goto_bd
.end method

.method public static startRun(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 345
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    if-nez v0, :cond_a

    .line 373
    :cond_9
    :goto_9
    return-void

    .line 348
    :cond_a
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 349
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->saveInput(Landroid/content/Context;)V

    .line 350
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 351
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiEnergy;->forSession(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 352
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AiSession;->epocClosed:Z

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 354
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->start(J)V

    .line 355
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->startExercises(Landroid/content/Context;)V

    .line 356
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->personalZones()V

    .line 357
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    add-int/lit16 v2, v2, 0x708

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiSession;->setWorkLengthAll(I)V

    .line 358
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 359
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    .line 360
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-nez v0, :cond_5a

    .line 362
    :try_start_51
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_5a

    .line 363
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5a} :catch_b3

    .line 369
    :cond_5a
    :goto_5a
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 370
    const-string v0, "ai"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run start goal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " op="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ceil="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    goto/16 :goto_9

    .line 365
    :catch_b3
    move-exception v0

    .line 366
    const-string v1, "ai"

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

    goto :goto_5a
.end method

.method private static startTicker()V
    .registers 4

    .prologue
    .line 609
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    .line 611
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 612
    return-void
.end method

.method public static stop()V
    .registers 3

    .prologue
    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 377
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v2, :cond_d

    .line 378
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->stop(J)V

    .line 380
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->restoreZones()V

    .line 381
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 382
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopDevice()V

    .line 383
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_24

    .line 384
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 385
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->saveExercises()V

    .line 389
    :cond_23
    :goto_23
    return-void

    .line 386
    :cond_24
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_23

    .line 387
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    goto :goto_23
.end method

.method private static stopDevice()V
    .registers 4

    .prologue
    .line 1047
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 1049
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_c

    .line 1050
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 1055
    :cond_c
    :goto_c
    return-void

    .line 1052
    :catch_d
    move-exception v0

    .line 1053
    const-string v1, "ai"

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

    goto :goto_c
.end method

.method public static stopSoloRamp()V
    .registers 1

    .prologue
    .line 336
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 337
    return-void
.end method

.method private static stopTicker()V
    .registers 2

    .prologue
    .line 615
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 616
    return-void
.end method

.method private static tick()V
    .registers 11

    .prologue
    const/4 v10, 0x0

    const-wide/16 v2, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 637
    sget-wide v6, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    sub-long v6, v4, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 638
    sput-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    .line 639
    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v8, v9, :cond_26

    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v8, :cond_26

    .line 640
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 693
    :cond_25
    :goto_25
    return-void

    .line 643
    :cond_26
    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v8, v9, :cond_33

    sget-boolean v8, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v8, :cond_33

    .line 644
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiSession;->guardManualChanges(J)V

    .line 646
    :cond_33
    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v8, v9, :cond_7d

    sget-boolean v8, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    if-eqz v8, :cond_7d

    sget-boolean v8, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v8, :cond_7d

    .line 647
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    mul-double v4, v0, v6

    add-double/2addr v2, v4

    sput-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    .line 648
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    cmpl-double v2, v2, v0

    if-ltz v2, :cond_25

    .line 649
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    double-to-int v2, v2

    .line 650
    sget-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    int-to-double v6, v2

    sub-double/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    .line 651
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    if-eqz v3, :cond_61

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    :cond_61
    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 652
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_6e

    .line 653
    sput-boolean v10, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 655
    :cond_6e
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    sub-int/2addr v0, v1

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->adjustCalibration(I)V

    goto :goto_25

    .line 659
    :cond_7d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_25

    .line 662
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiSession;->guardManualChanges(J)V

    .line 663
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v6

    .line 664
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->tick(J)V

    .line 665
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    if-eqz v0, :cond_aa

    .line 666
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v4, v5, v1}, Lcom/isaigu/gymapp/ai/AiExercises;->tick(JLcom/isaigu/gymapp/ai/AiEngine;)V

    .line 667
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_166

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->currentExercise()I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v0

    :goto_a8
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 669
    :cond_aa
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiSession;->tickEnergy(J)V

    .line 670
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 672
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_d2

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v1

    if-eqz v1, :cond_d2

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 673
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v1

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->lastAppliedCycle:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eq v1, v4, :cond_d2

    .line 674
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    .line 677
    :cond_d2
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_169

    sget-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    cmpl-double v1, v4, v2

    if-lez v1, :cond_169

    .line 678
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 682
    :cond_df
    :goto_df
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_eb

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_eb

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_12a

    :cond_eb
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_12a

    .line 684
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 685
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopDevice()V

    .line 686
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 687
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->saveExercises()V

    .line 688
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run end state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " log="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getLog()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_12a
    if-eq v6, v0, :cond_25

    .line 691
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2192 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_166
    move-wide v0, v2

    .line 667
    goto/16 :goto_a8

    .line 679
    :cond_169
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_df

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v2

    sget-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    sub-double/2addr v4, v8

    cmpg-double v1, v2, v4

    if-gez v1, :cond_df

    .line 680
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    goto/16 :goto_df
.end method

.method private static tickEnergy(J)V
    .registers 12

    .prologue
    .line 696
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v0, :cond_9

    .line 736
    :cond_8
    :goto_8
    return-void

    .line 699
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 700
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_17

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_24

    .line 701
    :cond_17
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->epocClosed:Z

    if-nez v0, :cond_8

    .line 702
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->epocClosed:Z

    .line 703
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->closeEpoc()V

    goto :goto_8

    .line 707
    :cond_24
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_a0

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v4

    .line 708
    :goto_36
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    .line 709
    const/4 v6, 0x0

    .line 710
    if-eqz v0, :cond_a3

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOn(J)Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v8, 0x0

    cmpl-double v1, v2, v8

    if-lez v1, :cond_a3

    .line 711
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->channelStim()Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    move-result-object v6

    .line 712
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v2, v1

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double/2addr v2, v8

    iput-wide v2, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 713
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iput v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 714
    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iput v0, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 715
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 726
    :cond_67
    :goto_67
    if-eqz v6, :cond_e7

    .line 728
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    .line 729
    const/4 v0, 0x0

    :goto_71
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    array-length v1, v1

    if-ge v0, v1, :cond_e7

    .line 730
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    if-eqz v1, :cond_e1

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e1

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    aget v1, v1, v0

    int-to-double v2, v1

    .line 731
    :goto_84
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v8, v2, v8

    const/4 v2, 0x4

    if-ne v0, v2, :cond_e4

    const/16 v2, 0x15e

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->armsSent(I)D

    move-result-wide v2

    :goto_93
    mul-double/2addr v2, v8

    sget v7, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v8, v7

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v8

    aput-wide v2, v1, v0

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 707
    :cond_a0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    goto :goto_36

    .line 716
    :cond_a3
    if-eqz v0, :cond_67

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePause(J)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v8, 0x0

    cmpl-double v1, v2, v8

    if-lez v1, :cond_67

    .line 717
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->channelStim()Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    move-result-object v6

    .line 718
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v2, v1

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double/2addr v2, v8

    iput-wide v2, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 719
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iput v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 720
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iput v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 721
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 722
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    iput v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    .line 723
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v2, v1

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double/2addr v2, v8

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    mul-double/2addr v0, v2

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseStrengthPct:D

    .line 724
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    goto :goto_67

    .line 730
    :cond_e1
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    goto :goto_84

    .line 731
    :cond_e4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_93

    .line 735
    :cond_e7
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    move-wide v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AiEnergy;->tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V

    goto/16 :goto_8
.end method

.method public static togglePause()V
    .registers 4

    .prologue
    .line 586
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v0, :cond_5

    .line 598
    :goto_4
    return-void

    .line 589
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 590
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v3, :cond_1d

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 591
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_26

    .line 592
    :cond_1d
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->resume(J)V

    .line 593
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ensureDeviceRunning()V

    goto :goto_4

    .line 595
    :cond_26
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->userPause(J)V

    .line 596
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    goto :goto_4
.end method

.method public static useWorkout(Lcom/isaigu/gymapp/ai/Workout;)V
    .registers 1

    .prologue
    .line 454
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    .line 455
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyWorkout()V

    .line 456
    return-void
.end method

.method private static writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 982
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiRamp;->set(II)V

    .line 983
    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 984
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 985
    sput v5, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    .line 986
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_1c

    .line 1028
    :cond_1b
    :goto_1b
    return-void

    .line 989
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v6

    .line 990
    if-eqz v6, :cond_1b

    move v1, v2

    .line 993
    :goto_25
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c6

    .line 994
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 995
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-nez v3, :cond_43

    .line 993
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 998
    :cond_43
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v7

    .line 999
    if-eqz v7, :cond_3f

    .line 1002
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1003
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1004
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 1005
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1006
    iput v5, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1009
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-lez v3, :cond_c4

    if-lez v5, :cond_c4

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v3

    if-eqz v3, :cond_c4

    move v3, v4

    .line 1010
    :goto_74
    iput-boolean v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 1011
    if-eqz v3, :cond_95

    .line 1012
    const/16 v3, 0x78

    iget v8, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 1013
    int-to-double v8, v5

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v3, v8

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 1015
    :cond_95
    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_a5

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v3, :cond_a5

    .line 1016
    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v7, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v7, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1019
    :cond_a5
    :try_start_a5
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_3f

    .line 1020
    :catch_a9
    move-exception v0

    .line 1021
    const-string v3, "ai"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onParamsChange: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    :cond_c4
    move v3, v2

    .line 1009
    goto :goto_74

    .line 1025
    :cond_c6
    :try_start_c6
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_c9} :catch_cb

    goto/16 :goto_1b

    .line 1026
    :catch_cb
    move-exception v0

    goto/16 :goto_1b
.end method

.method private static zeroOutput()V
    .registers 2

    .prologue
    .line 840
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 841
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    .line 842
    :goto_e
    if-nez v0, :cond_2d

    .line 843
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 844
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 845
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 846
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 847
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 849
    :cond_2d
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 850
    return-void

    .line 841
    :cond_32
    const/4 v0, 0x0

    goto :goto_e
.end method
