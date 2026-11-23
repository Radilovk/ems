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

.field private static calibRunS:D

.field private static calibStimOn:Z

.field private static coachUserId:J

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

.field private static looked:Z

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

    .line 31
    new-instance v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v2, 0x55

    const/16 v3, 0x15e

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move v5, v4

    invoke-direct/range {v1 .. v7}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 39
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 60
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 62
    sput v8, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    .line 67
    sput v8, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Ticker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession$Ticker;-><init>(Lcom/isaigu/gymapp/ai/AiSession$1;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->trainerZones:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 25
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->tick()V

    return-void
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-object v0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/ai/AiEngine;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static acquireBand(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 219
    if-eqz p0, :cond_d

    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 220
    const-string v0, "ai"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->acquire(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_e

    .line 225
    :cond_d
    :goto_d
    return-void

    .line 222
    :catch_e
    move-exception v0

    .line 223
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

    .line 1312
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1313
    :goto_7
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_26

    .line 1314
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1f

    .line 1315
    check-cast v0, Landroid/app/Activity;

    .line 1319
    :goto_11
    return-object v0

    .line 1312
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

    .line 1317
    :cond_1f
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_7

    :cond_26
    move-object v0, v1

    .line 1319
    goto :goto_11
.end method

.method public static adjustCalibration(I)V
    .registers 4

    .prologue
    .line 362
    const/4 v0, 0x0

    const/16 v1, 0x64

    sget v2, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    add-int/2addr v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    .line 363
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v0, :cond_17

    .line 364
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V

    .line 366
    :cond_17
    return-void
.end method

.method public static answerCheckpoint(I)V
    .registers 5

    .prologue
    .line 727
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_d

    .line 728
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->answerCheckpoint(IJ)V

    .line 730
    :cond_d
    return-void
.end method

.method private static apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V
    .registers 5

    .prologue
    .line 972
    if-nez p0, :cond_3

    .line 982
    :goto_2
    return-void

    .line 975
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_1c

    .line 976
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/isaigu/gymapp/ai/AiExercises;->onCycle(JLcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    .line 978
    :cond_1c
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 979
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    sput-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 980
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->lastAppliedCycle:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 981
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->gentler(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    goto :goto_2
.end method

.method private static applyCalibration()V
    .registers 2

    .prologue
    .line 961
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 962
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 963
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 964
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 965
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 966
    const/16 v1, 0x190

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 967
    const/16 v1, 0x12c

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 968
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 969
    return-void
.end method

.method private static applyWorkout()V
    .registers 2

    .prologue
    .line 497
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_2c

    .line 498
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->aiGoal()Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 499
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 500
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 501
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->derivedFocus()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 503
    :cond_2c
    return-void
.end method

.method public static attach(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .prologue
    .line 80
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    .line 81
    sput-object p1, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 82
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->attachButton(Landroid/view/View;)V

    .line 83
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->attach(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 84
    return-void
.end method

.method public static bandState()Ljava/lang/String;
    .registers 1

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 249
    :goto_4
    return-object v0

    .line 248
    :catch_5
    move-exception v0

    .line 249
    const-string v0, ""

    goto :goto_4
.end method

.method public static beginCalibration()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 335
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 336
    sput v2, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    .line 337
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->calibRunS:D

    .line 338
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 339
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 340
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    .line 341
    return-void
.end method

.method public static beginRestHr()V
    .registers 2

    .prologue
    .line 303
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v0, :cond_11

    .line 304
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->restedLast10min:Z

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;-><init>(Z)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 306
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 307
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    .line 308
    return-void
.end method

.method public static beginSetup(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 275
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->loadInput(Landroid/content/Context;)V

    .line 278
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 279
    if-eqz v2, :cond_3d

    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    :goto_10
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->coachUserId:J

    .line 280
    if-eqz v2, :cond_40

    .line 281
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/ai/AiProfile;->applyTo(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 282
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoHistory;->of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sessions:I

    .line 290
    :cond_25
    :goto_25
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->reset(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 291
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyWorkout()V

    .line 292
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 293
    sput-object v4, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 294
    sput-object v4, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 295
    sput-object v4, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 296
    sput-object v4, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 299
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    .line 300
    return-void

    .line 279
    :cond_3d
    const-wide/16 v0, 0x0

    goto :goto_10

    .line 285
    :cond_40
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const/4 v1, -0x1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sessions:I

    .line 286
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    if-gtz v0, :cond_25

    .line 287
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_5a

    const/16 v0, 0xa6

    :goto_57
    iput v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    goto :goto_25

    :cond_5a
    const/16 v0, 0xb2

    goto :goto_57
.end method

.method public static buildPlan(IDJ)V
    .registers 12

    .prologue
    .line 329
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiPlanner;->derive(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;IDJ)Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 330
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->build(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 331
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 332
    return-void
.end method

.method private static channelStim()Lcom/isaigu/gymapp/ai/AiEnergy$Stim;
    .registers 4

    .prologue
    .line 881
    new-instance v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;-><init>()V

    .line 882
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 884
    if-eqz v2, :cond_3f

    .line 885
    :try_start_b
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 886
    :goto_19
    if-eqz v0, :cond_31

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v3, :cond_31

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v3, :cond_31

    .line 887
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    .line 889
    :cond_31
    iget-object v0, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_3f

    .line 890
    iget-object v0, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3f} :catch_42

    .line 895
    :cond_3f
    :goto_3f
    return-object v1

    .line 885
    :cond_40
    const/4 v0, 0x0

    goto :goto_19

    .line 893
    :catch_42
    move-exception v0

    goto :goto_3f
.end method

.method public static close()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 592
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_10

    .line 593
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    .line 595
    :cond_10
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->looked:Z

    if-eqz v0, :cond_1a

    .line 596
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoLook;->restore()V

    .line 597
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->looked:Z

    .line 599
    :cond_1a
    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    .line 600
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopTicker()V

    .line 601
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 602
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 603
    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 604
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    .line 605
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->releaseBand()V

    .line 606
    return-void
.end method

.method public static coachLive(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)Ljava/lang/String;
    .registers 15

    .prologue
    .line 649
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_6

    if-nez p0, :cond_9

    .line 650
    :cond_6
    const-string v0, ""

    .line 695
    :cond_8
    :goto_8
    return-object v0

    .line 652
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 653
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 655
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    .line 656
    const-string v3, "softer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 657
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->reduce()V

    .line 658
    const-string v0, "\u0441\u0438\u043b\u0430 \u221210 % \u00b7 "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 659
    :cond_3b
    const-string v3, "stronger"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 660
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->increase()V

    .line 661
    const-string v0, "\u0441\u0438\u043b\u0430 + \u00b7 "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 662
    :cond_4c
    const-string v3, "pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_61

    .line 663
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    .line 664
    const-string v0, "\u043f\u0430\u0443\u0437\u0430 \u00b7 "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 665
    :cond_61
    const-string v3, "resume"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v3, :cond_71

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_7a

    .line 666
    :cond_71
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    .line 667
    const-string v0, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430 \u00b7 "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 668
    :cond_7a
    const-string v3, "continue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_8f

    .line 669
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->continueBlock()V

    .line 670
    const-string v0, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430 \u0441\u0435\u0440\u0438\u044f \u00b7 "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 671
    :cond_8f
    const-string v2, "to_cooldown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 672
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v8, v9}, Lcom/isaigu/gymapp/ai/AiEngine;->toCooldown(J)V

    .line 673
    const-string v0, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u00b7 "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    .line 674
    :cond_a3
    const-string v2, "double_on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string v2, "double_off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 675
    :cond_b3
    const-string v2, "double_on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiSession;->setActivePause(Z)V

    .line 676
    const-string v2, "double_on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    const-string v0, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 "

    :goto_c6
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    :cond_cb
    const-string v0, "\u0431\u0435\u0437 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u00b7 "

    goto :goto_c6

    .line 679
    :cond_ce
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-nez v0, :cond_de

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-nez v0, :cond_de

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-nez v0, :cond_de

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v0, :cond_1a3

    .line 680
    :cond_de
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-eqz v0, :cond_1d9

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 681
    :goto_e8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-eqz v0, :cond_1e1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 682
    :goto_f2
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-eqz v0, :cond_1e9

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    add-double/2addr v4, v0

    .line 683
    :goto_103
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v0, :cond_1f1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v12

    add-double/2addr v6, v0

    .line 684
    :goto_114
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual/range {v1 .. v7}, Lcom/isaigu/gymapp/ai/AiEngine;->setTune(IIDD)V

    .line 685
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    if-eqz v0, :cond_136

    const-string v0, "\u0438\u043c\u043f\u0443\u043b\u0441 "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneOn()I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->signed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :cond_136
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    if-eqz v0, :cond_153

    const-string v0, "\u043f\u0430\u0443\u0437\u0430 "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneOff()I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->signed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_153
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    if-eqz v0, :cond_17b

    const-string v0, "Hz "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneHz()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->signed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " % \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :cond_17b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    if-eqz v0, :cond_1a3

    const-string v0, "\u043f\u043e\u0447\u0438\u0432\u043a\u0438 "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneRest()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->signed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " % \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_1a3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    if-eqz v0, :cond_1c0

    .line 691
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3, v8, v9}, Lcom/isaigu/gymapp/ai/AiEngine;->endActiveIn(DJ)V

    .line 692
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1f9

    const-string v0, "\u043a\u0440\u0430\u0439 \u043d\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442 \u00b7 "

    :goto_1bd
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_1c0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 680
    :cond_1d9
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneOn()I

    move-result v2

    goto/16 :goto_e8

    .line 681
    :cond_1e1
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneOff()I

    move-result v3

    goto/16 :goto_f2

    .line 682
    :cond_1e9
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneHz()D

    move-result-wide v4

    goto/16 :goto_103

    .line 683
    :cond_1f1
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneRest()D

    move-result-wide v6

    goto/16 :goto_114

    .line 692
    :cond_1f9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u043e\u0449\u0435 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1bd
.end method

.method public static coachUserId()J
    .registers 2

    .prologue
    .line 640
    sget-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->coachUserId:J

    return-wide v0
.end method

.method public static conflict()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    const-string v0, "ai"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/OutputOwner;->conflict(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_9

    .line 271
    :goto_8
    return-object v0

    .line 268
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-nez v0, :cond_18

    .line 269
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a \u0438 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v1, "Add a participant and connect the suit."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 271
    :cond_18
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static continueBlock()V
    .registers 4

    .prologue
    .line 703
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v0, :cond_5

    .line 709
    :cond_4
    :goto_4
    return-void

    .line 706
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->continueBlock(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 707
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ensureDeviceRunning()V

    goto :goto_4
.end method

.method public static currentExercise()I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 565
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    .line 566
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

    .line 568
    :cond_15
    :goto_15
    return v0

    .line 567
    :catch_16
    move-exception v1

    goto :goto_15
.end method

.method private static currentStrength()I
    .registers 2

    .prologue
    .line 949
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 951
    if-eqz v0, :cond_22

    :try_start_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 952
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 953
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_20} :catch_21

    .line 957
    :goto_20
    return v0

    .line 955
    :catch_21
    move-exception v0

    .line 957
    :cond_22
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private static ensureDeviceRunning()V
    .registers 4

    .prologue
    .line 1145
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1146
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_11

    .line 1154
    :cond_10
    :goto_10
    return-void

    .line 1150
    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_10

    .line 1151
    :catch_17
    move-exception v0

    .line 1152
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
    .line 1005
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1012
    :cond_c
    :goto_c
    return-void

    .line 1008
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v2

    .line 1009
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_36

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v0

    .line 1010
    :goto_23
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 1011
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiSession;->gentler(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v4, v3

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    goto :goto_c

    .line 1009
    :cond_36
    const-wide/16 v0, 0x0

    goto :goto_23
.end method

.method private static gentler(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;
    .registers 7

    .prologue
    .line 986
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_28

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiExercises;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    move-object v1, v0

    .line 987
    :goto_11
    if-eqz v1, :cond_27

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-lez v0, :cond_27

    iget v0, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    if-lt v0, v2, :cond_2b

    iget v0, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    if-lt v0, v2, :cond_2b

    .line 1001
    :cond_27
    :goto_27
    return-object p0

    .line 986
    :cond_28
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_11

    .line 990
    :cond_2b
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 991
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iget v3, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 992
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iget v1, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 993
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 994
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 995
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 996
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 997
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 998
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    .line 999
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 1000
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    move-object p0, v0

    .line 1001
    goto :goto_27
.end method

.method public static getActiveKcal()D
    .registers 2

    .prologue
    .line 905
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
    .line 173
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    return v0
.end method

.method public static getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;
    .registers 1

    .prologue
    .line 909
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    return-object v0
.end method

.method public static getEngine()Lcom/isaigu/gymapp/ai/AiEngine;
    .registers 1

    .prologue
    .line 169
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    return-object v0
.end method

.method public static getExercises()Lcom/isaigu/gymapp/ai/AiExercises;
    .registers 1

    .prologue
    .line 559
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    return-object v0
.end method

.method public static getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 1

    .prologue
    .line 149
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    return-object v0
.end method

.method public static getKcal()D
    .registers 2

    .prologue
    .line 900
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
    .line 181
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    return v0
.end method

.method public static getLastBandHrAgeMs()J
    .registers 4

    .prologue
    .line 185
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
    .line 1323
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    return-object v0
.end method

.method public static getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 1

    .prologue
    .line 161
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    return-object v0
.end method

.method public static getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;
    .registers 1

    .prologue
    .line 157
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    return-object v0
.end method

.method public static getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;
    .registers 1

    .prologue
    .line 153
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    return-object v0
.end method

.method public static getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 1

    .prologue
    .line 145
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-object v0
.end method

.method public static getWorkout()Lcom/isaigu/gymapp/ai/Workout;
    .registers 1

    .prologue
    .line 493
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method private static guardManualChanges(J)V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1038
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_e

    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ltz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_f

    .line 1116
    :cond_e
    :goto_e
    return-void

    .line 1041
    :cond_f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v9

    .line 1042
    if-eqz v9, :cond_e

    .line 1046
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v0

    move v6, v2

    .line 1049
    :goto_1e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_bc

    .line 1050
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1051
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_38

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v8

    if-nez v8, :cond_3c

    .line 1049
    :cond_38
    :goto_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 1054
    :cond_3c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v8

    invoke-virtual {v8}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v10

    .line 1055
    if-eqz v10, :cond_38

    .line 1058
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

    .line 1059
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-ne v8, v11, :cond_99

    iget v8, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    sget-object v11, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 1060
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-ne v8, v11, :cond_99

    iget-boolean v11, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-lez v8, :cond_b3

    sget v8, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-lez v8, :cond_b3

    .line 1061
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

    .line 1062
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-eq v8, v11, :cond_9a

    :cond_99
    move v6, v7

    .line 1065
    :cond_9a
    iget v8, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sget v11, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-le v8, v11, :cond_b5

    move v4, v7

    .line 1070
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

    .line 1071
    goto :goto_38

    :cond_b3
    move v8, v2

    .line 1061
    goto :goto_81

    .line 1067
    :cond_b5
    iget v8, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-ge v8, v5, :cond_a1

    .line 1068
    iget v5, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_a1

    .line 1074
    :cond_bc
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_f6

    .line 1075
    if-nez v6, :cond_ca

    if-nez v4, :cond_ca

    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ge v5, v0, :cond_e

    .line 1077
    :cond_ca
    if-eqz v4, :cond_d8

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_d8

    .line 1078
    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AiSession;->maxRowStrength(Ljava/util/List;)I

    move-result v5

    .line 1079
    :cond_d8
    const/16 v0, 0x64

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    .line 1080
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V

    .line 1081
    if-eqz v6, :cond_e

    .line 1082
    const-string v0, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438\u0442\u0435 \u0441\u0435 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430\u0442 \u043e\u0442 AI."

    const-string v1, "Parameters are controlled by the AI."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    goto/16 :goto_e

    .line 1088
    :cond_f6
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_e

    .line 1091
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 1092
    if-eqz v3, :cond_126

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_10e

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_10e

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_126

    .line 1094
    :cond_10e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->userPause(J)V

    .line 1095
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 1096
    const-string v0, "\u0421\u043f\u0440\u044f\u043d\u043e \u043e\u0442 \u043e\u0441\u043d\u043e\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u2014 AI \u0435 \u043d\u0430 \u043f\u0430\u0443\u0437\u0430. \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u043e\u0442 AI."

    const-string v1, "Stopped from the main screen \u2014 AI paused. Resume in AI."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    .line 1098
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->show()V

    goto/16 :goto_e

    .line 1101
    :cond_126
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ge v5, v1, :cond_14c

    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-lez v1, :cond_14c

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_14c

    .line 1102
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    int-to-double v2, v5

    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->reduceTo(DJ)V

    .line 1103
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 1104
    const-string v0, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d\u043e \u0440\u044a\u0447\u043d\u043e \u2014 AI \u0433\u043e \u043f\u0440\u0438\u0435\u043c\u0430 \u043a\u0430\u0442\u043e \u201e\u041d\u0430\u043c\u0430\u043b\u0438\u201c."

    const-string v1, "Reduced manually \u2014 AI takes it as \u201cReduce\u201d."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    goto/16 :goto_e

    .line 1108
    :cond_14c
    if-nez v6, :cond_154

    if-nez v4, :cond_154

    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ge v5, v0, :cond_e

    .line 1109
    :cond_154
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 1110
    if-eqz v6, :cond_16a

    .line 1111
    const-string v0, "AI \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0438\u043c\u043f\u0443\u043b\u0441 \u0438 \u043f\u0430\u0443\u0437\u0430 \u2014 \u0440\u044a\u0447\u043d\u0430\u0442\u0430 \u043f\u0440\u043e\u043c\u044f\u043d\u0430 \u0435 \u043e\u0442\u043c\u0435\u043d\u0435\u043d\u0430."

    const-string v1, "AI controls frequency, pulse and pause \u2014 manual change undone."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    :goto_165
    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    goto/16 :goto_e

    .line 1113
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
    .line 617
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_10

    .line 618
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->increase(J)V

    .line 619
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 621
    :cond_10
    return-void
.end method

.method public static isBandConfigured(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 210
    if-eqz p0, :cond_a

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_b

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 212
    :cond_a
    :goto_a
    return v0

    .line 211
    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public static isBandLinkUp()Z
    .registers 1

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 241
    :goto_4
    return v0

    .line 240
    :catch_5
    move-exception v0

    .line 241
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static isBandStreaming()Z
    .registers 4

    .prologue
    .line 189
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
    .line 177
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    return v0
.end method

.method public static isGuest()Z
    .registers 4

    .prologue
    .line 636
    sget-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->coachUserId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isSoloRamping()Z
    .registers 1

    .prologue
    .line 374
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    return v0
.end method

.method private static leader()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 929
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 945
    :cond_6
    :goto_6
    return-object v0

    .line 933
    :cond_7
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 934
    if-nez v3, :cond_11

    move-object v0, v1

    .line 935
    goto :goto_6

    .line 937
    :cond_11
    const/4 v0, 0x0

    move v2, v0

    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2c

    .line 938
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 939
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_2b

    move-result v4

    if-eqz v4, :cond_6

    .line 937
    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    .line 943
    :catch_2b
    move-exception v0

    :cond_2c
    move-object v0, v1

    .line 945
    goto :goto_6
.end method

.method public static leaderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 917
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 918
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_13

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 919
    :goto_e
    if-nez v0, :cond_15

    .line 920
    const-string v0, ""

    .line 924
    :goto_12
    return-object v0

    .line 918
    :cond_13
    const/4 v0, 0x0

    goto :goto_e

    .line 922
    :cond_15
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    goto :goto_12

    :cond_24
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    goto :goto_12

    :cond_2b
    const-string v0, ""
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_12

    .line 923
    :catch_2e
    move-exception v0

    .line 924
    const-string v0, ""

    goto :goto_12
.end method

.method private static loadInput(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1267
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 1268
    if-nez p0, :cond_b

    .line 1289
    :cond_a
    return-void

    .line 1272
    :cond_b
    :try_start_b
    const-string v0, "ai_session"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1273
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "goal"

    const-string v4, "TONE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 1274
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "mode"

    const-string v4, "ACTIVE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Mode;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 1275
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "sex"

    const-string v4, "MALE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1276
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "fitness"

    const-string v4, "MID"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 1277
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "operator"

    const-string v4, "TRAINER"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Operator;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 1278
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "age"

    const/16 v4, 0x23

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 1279
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "pause"

    const-string v4, "AUTO"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 1280
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "weight_kg"

    const/16 v4, 0x4b

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-double v4, v3

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 1281
    const-string v2, "total_s"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1282
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-lez v0, :cond_bd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_9a
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_9c} :catch_bf

    .line 1285
    :goto_9c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiModel$Screening;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 1286
    sget-object v2, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_a9
    if-ge v0, v3, :cond_a

    aget-object v4, v2, v0

    .line 1287
    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 1282
    :cond_bd
    const/4 v0, 0x0

    goto :goto_9a

    .line 1283
    :catch_bf
    move-exception v0

    goto :goto_9c
.end method

.method private static look()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 578
    :try_start_2
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_e

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_13

    :cond_e
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    if-eqz v2, :cond_13

    move v0, v1

    .line 579
    :cond_13
    if-eqz v0, :cond_35

    .line 580
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    const-string v2, "AI"

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v0

    :goto_2b
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/ai/AutoLook;->apply(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->looked:Z

    .line 589
    :cond_31
    :goto_31
    return-void

    .line 580
    :cond_32
    const-string v0, ""

    goto :goto_2b

    .line 582
    :cond_35
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->looked:Z

    if-eqz v0, :cond_31

    .line 583
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoLook;->restore()V

    .line 584
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->looked:Z
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3f} :catch_40

    goto :goto_31

    .line 586
    :catch_40
    move-exception v0

    .line 587
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "look: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method static manager()Lcom/isaigu/gymapp/train/TrainItemManager;
    .registers 1

    .prologue
    .line 165
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
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

    .line 1119
    move v1, v0

    move v2, v0

    .line 1120
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 1121
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1122
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1123
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1124
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1120
    :cond_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1127
    :cond_39
    return v2
.end method

.method private static notifyGuard(Ljava/lang/String;J)V
    .registers 8

    .prologue
    .line 1131
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

    .line 1132
    sget-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastGuardToastMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    if-nez v0, :cond_27

    .line 1141
    :cond_26
    :goto_26
    return-void

    .line 1135
    :cond_27
    sput-wide p1, Lcom/isaigu/gymapp/ai/AiSession;->lastGuardToastMs:J

    .line 1137
    :try_start_29
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_37} :catch_38

    goto :goto_26

    .line 1139
    :catch_38
    move-exception v0

    goto :goto_26
.end method

.method public static onHeartRate(I)V
    .registers 3

    .prologue
    .line 124
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->onHeartRateImpl(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 128
    :goto_3
    return-void

    .line 125
    :catch_4
    move-exception v0

    .line 126
    const-string v1, "AiSession.onHeartRate"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static onHeartRateImpl(I)V
    .registers 5

    .prologue
    .line 131
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->onHeartRate(I)V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    sput p0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    .line 134
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHrMs:J

    .line 135
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_17

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_21

    :cond_17
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v2, :cond_21

    .line 136
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v2, v0, v1, p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->onSample(JI)V

    .line 140
    :cond_20
    :goto_20
    return-void

    .line 137
    :cond_21
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v2, :cond_20

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_31

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_20

    .line 138
    :cond_31
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1, p0}, Lcom/isaigu/gymapp/ai/AiEngine;->onHr(JI)V

    goto :goto_20
.end method

.method public static onPulseCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 94
    if-eqz p0, :cond_c

    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-nez v0, :cond_d

    .line 101
    :cond_c
    :goto_c
    return-void

    .line 97
    :cond_d
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->onPulseCycleImpl(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_c

    .line 98
    :catch_11
    move-exception v0

    .line 99
    const-string v1, "AiSession.onPulseCycle"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method private static onPulseCycleImpl(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .prologue
    .line 104
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->onPulseCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 105
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/MapRunner;->onPulseCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 107
    if-eqz p0, :cond_e

    :try_start_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-eq p0, v0, :cond_f

    .line 119
    :cond_e
    :goto_e
    return-void

    .line 110
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_41

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v2, :cond_41

    .line 112
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_26} :catch_27

    goto :goto_e

    .line 116
    :catch_27
    move-exception v0

    .line 117
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

    goto :goto_e

    .line 113
    :cond_41
    :try_start_41
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_e

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v0, :cond_e

    .line 114
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4e} :catch_27

    goto :goto_e
.end method

.method public static ownsOutput()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ownsOutput()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 200
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

    .line 201
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v2, :cond_30

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 202
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v2, :cond_30

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 203
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

    .line 1329
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

    .line 1331
    :cond_11
    :goto_11
    return v0

    .line 1329
    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 1330
    :catch_14
    move-exception v1

    goto :goto_11
.end method

.method private static personalZones()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 433
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->trainerZones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 435
    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_13

    .line 464
    :cond_12
    :goto_12
    return-void

    .line 438
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v4

    move v3, v2

    .line 439
    :goto_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_12

    .line 440
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 441
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-nez v1, :cond_38

    .line 439
    :cond_34
    :goto_34
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1a

    .line 444
    :cond_38
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    .line 445
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v6

    .line 446
    if-eqz v5, :cond_34

    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_34

    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v1, :cond_34

    if-eqz v6, :cond_34

    .line 449
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiProfile;->personal()Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v7

    .line 450
    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 453
    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 454
    invoke-virtual {v7, v1}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->apply([I)[I

    move-result-object v7

    .line 455
    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->trainerZones:Ljava/util/Map;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 456
    :goto_70
    array-length v1, v7

    iget-object v8, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v8, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_87

    .line 457
    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v8, v7, v0

    aput v8, v1, v0

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 459
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

    .line 461
    :catch_b0
    move-exception v0

    .line 462
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
    .line 229
    if-eqz p0, :cond_d

    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 230
    const-string v0, "ai"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->reconnect(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_e

    .line 235
    :cond_d
    :goto_d
    return-void

    .line 232
    :catch_e
    move-exception v0

    .line 233
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
    .line 609
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_10

    .line 610
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->reduce(J)V

    .line 611
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 613
    :cond_10
    return-void
.end method

.method private static releaseBand()V
    .registers 4

    .prologue
    .line 255
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 256
    :goto_a
    const-string v1, "ai"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_12

    .line 260
    :goto_f
    return-void

    .line 255
    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    .line 257
    :catch_12
    move-exception v0

    .line 258
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

.method public static rememberRestHr(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 321
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_f

    .line 323
    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    invoke-static {p0, v0, v1, p1}, Lcom/isaigu/gymapp/wearable/scale/RestHrStore;->add(Landroid/content/Context;JI)V

    .line 325
    :cond_f
    return-void
.end method

.method public static restartRestHr()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 312
    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 313
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 314
    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 315
    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 316
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    .line 317
    return-void
.end method

.method private static restoreZones()V
    .registers 7

    .prologue
    .line 468
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

    .line 469
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 470
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    move-object v3, v2

    .line 471
    :goto_2b
    if-eqz v3, :cond_a

    iget-object v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v2, :cond_a

    iget-object v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v2, :cond_a

    .line 472
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 473
    const/4 v2, 0x0

    :goto_3e
    array-length v5, v0

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v2, v5, :cond_58

    .line 474
    iget-object v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v6, v0, v2

    aput v6, v5, v2

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 470
    :cond_55
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_2b

    .line 476
    :cond_58
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_a

    .line 479
    :catch_5c
    move-exception v0

    .line 480
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

    .line 482
    :cond_75
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->trainerZones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 483
    return-void
.end method

.method private static safe(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 1158
    if-nez p0, :cond_4

    .line 1185
    :goto_3
    return-void

    .line 1163
    :cond_4
    const/4 v2, -0x1

    .line 1165
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_10
    move v3, v10

    .line 1166
    :goto_11
    if-eqz v1, :cond_3e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3e

    .line 1167
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1168
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7a

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_7a

    .line 1169
    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->age(Lcom/isaigu/gymapp/bean/TrainUser;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_36} :catch_77

    move-result v0

    .line 1166
    :goto_37
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_11

    .line 1165
    :cond_3b
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_10

    :cond_3e
    move v9, v2

    .line 1174
    :goto_3f
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    iget v5, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    iget v8, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    invoke-static/range {v1 .. v9}, Lcom/isaigu/gymapp/ai/SafeLimits;->cycle(IIIIIDII)[I

    move-result-object v0

    .line 1175
    aget v1, v0, v10

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 1176
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 1177
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 1178
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 1179
    const/4 v1, 0x7

    aget v1, v0, v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 1180
    const/4 v1, 0x4

    aget v1, v0, v1

    if-nez v1, :cond_71

    .line 1181
    iput v10, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    goto :goto_3

    .line 1183
    :cond_71
    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    goto :goto_3

    .line 1172
    :catch_77
    move-exception v0

    move v9, v2

    goto :goto_3f

    :cond_7a
    move v0, v2

    goto :goto_37
.end method

.method private static saveExercises()V
    .registers 8

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 540
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 541
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

    .line 556
    :cond_1a
    :goto_1a
    return-void

    .line 544
    :cond_1b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->exercisesSaved:Z

    .line 546
    :try_start_1e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_ab

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 547
    :goto_28
    if-eqz v0, :cond_1a

    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->exercisesUser:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1a

    .line 548
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/AiExercises;->outcome(Lcom/isaigu/gymapp/ai/AiEngine;)Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;

    move-result-object v1

    .line 549
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->exercisesUser:J

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiExercises;->getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->programId:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/ai/AutoHistory;->remember(Landroid/content/Context;JLjava/lang/String;Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;)V

    .line 550
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

    .line 551
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

    .line 550
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_8f} :catch_90

    goto :goto_1a

    .line 553
    :catch_90
    move-exception v0

    .line 554
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

    .line 546
    :cond_ab
    const/4 v0, 0x0

    goto/16 :goto_28
.end method

.method private static saveInput(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1292
    if-nez p0, :cond_4

    .line 1309
    :goto_3
    return-void

    .line 1296
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

    .line 1297
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mode"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 1298
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sex"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1299
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fitness"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 1300
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "operator"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 1301
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "age"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 1302
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pause"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 1303
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weight_kg"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 1304
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "total_s"

    .line 1305
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

    .line 1306
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_93} :catch_95

    goto/16 :goto_3

    .line 1307
    :catch_95
    move-exception v0

    goto/16 :goto_3
.end method

.method public static setActivePause(Z)V
    .registers 5

    .prologue
    .line 625
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_10

    .line 626
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->setActivePause(ZJ)V

    .line 627
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 629
    :cond_10
    return-void
.end method

.method private static setWorkLengthAll(I)V
    .registers 5

    .prologue
    .line 1238
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 1251
    :cond_4
    return-void

    .line 1241
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    .line 1242
    if-eqz v2, :cond_4

    .line 1245
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1246
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1247
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1248
    iput p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 1245
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method

.method private static signed(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 699
    if-lez p0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public static startCalibrationStim(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 344
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v1, :cond_6

    .line 359
    :goto_5
    return-void

    .line 347
    :cond_6
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 348
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->calibRunS:D

    const-wide/high16 v4, 0x406e000000000000L    # 240.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    sput-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->calibRunS:D

    .line 349
    const/16 v1, 0xe10

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->setWorkLengthAll(I)V

    .line 350
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V

    .line 352
    :try_start_1a
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v1, :cond_23

    .line 353
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_23} :catch_2e

    .line 358
    :cond_23
    :goto_23
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v1, v2, :cond_48

    :goto_2b
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    goto :goto_5

    .line 355
    :catch_2e
    move-exception v1

    .line 356
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

    goto :goto_23

    .line 358
    :cond_48
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private static startExercises(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 508
    sput-object v9, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    .line 509
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->exercisesSaved:Z

    .line 510
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 512
    :try_start_a
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 513
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoTemplates;->programForAi(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;ILcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v10

    .line 514
    if-nez v10, :cond_24

    .line 537
    :goto_23
    return-void

    .line 517
    :cond_24
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 518
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHistory;->cardioMachine(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b1

    const/4 v1, 0x1

    :goto_2e
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoTemplates;->noCardioMachine:Z

    .line 519
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 520
    if-eqz v1, :cond_b4

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v1

    move-object v4, v1

    .line 521
    :goto_3b
    if-eqz v4, :cond_b6

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    :goto_3f
    sput-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->exercisesUser:J

    .line 522
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->exercisesUser:J

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoHistory;->of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    move-result-object v5

    .line 523
    iget-wide v2, v5, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->lastActiveMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoHistory;->hoursSince(JJ)D

    move-result-wide v6

    .line 524
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v1, :cond_bb

    .line 525
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-eqz v4, :cond_b9

    iget v3, v4, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    :goto_5d
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I

    invoke-static/range {v1 .. v7}, Lcom/isaigu/gymapp/ai/AiExercises;->forWorkout(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;ILcom/isaigu/gymapp/ai/AiModel$Plan;ID)Lcom/isaigu/gymapp/ai/AiExercises;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    .line 526
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

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_93} :catch_94

    goto :goto_23

    .line 533
    :catch_94
    move-exception v0

    .line 534
    sput-object v9, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    .line 535
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

    goto/16 :goto_23

    :cond_b1
    move v1, v0

    .line 518
    goto/16 :goto_2e

    :cond_b4
    move-object v4, v9

    .line 520
    goto :goto_3b

    .line 521
    :cond_b6
    const-wide/16 v2, 0x0

    goto :goto_3f

    :cond_b9
    move v3, v0

    .line 525
    goto :goto_5d

    .line 529
    :cond_bb
    :try_start_bb
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-eqz v4, :cond_101

    iget v3, v4, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    :goto_c1
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I

    sget-wide v12, Lcom/isaigu/gymapp/ai/AiSession;->exercisesUser:J

    .line 530
    invoke-static {p0, v12, v13, v10}, Lcom/isaigu/gymapp/ai/AutoHistory;->outcomes(Landroid/content/Context;JLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 529
    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/ai/AiExercises;->build(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;ILcom/isaigu/gymapp/ai/AiModel$Plan;IDLjava/util/List;)Lcom/isaigu/gymapp/ai/AiExercises;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    .line 531
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

    .line 532
    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    if-eqz v3, :cond_f4

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiExercises;->getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->level:I

    :cond_f4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_ff} :catch_94

    goto/16 :goto_23

    :cond_101
    move v3, v0

    .line 529
    goto :goto_c1
.end method

.method public static startRun(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 379
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    if-nez v0, :cond_a

    .line 407
    :cond_9
    :goto_9
    return-void

    .line 382
    :cond_a
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 383
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->saveInput(Landroid/content/Context;)V

    .line 384
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 385
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiEnergy;->forSession(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 386
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AiSession;->epocClosed:Z

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 388
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->start(J)V

    .line 389
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->startExercises(Landroid/content/Context;)V

    .line 390
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->personalZones()V

    .line 391
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    add-int/lit16 v2, v2, 0x708

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiSession;->setWorkLengthAll(I)V

    .line 392
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 393
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    .line 394
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-nez v0, :cond_5a

    .line 396
    :try_start_51
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_5a

    .line 397
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5a} :catch_b3

    .line 403
    :cond_5a
    :goto_5a
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 404
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

    .line 406
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    goto/16 :goto_9

    .line 399
    :catch_b3
    move-exception v0

    .line 400
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
    .line 735
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    .line 737
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 738
    return-void
.end method

.method public static stop()V
    .registers 3

    .prologue
    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 411
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v2, :cond_d

    .line 412
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->stop(J)V

    .line 414
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->restoreZones()V

    .line 415
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 416
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopDevice()V

    .line 417
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_24

    .line 418
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 419
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->saveExercises()V

    .line 423
    :cond_23
    :goto_23
    return-void

    .line 420
    :cond_24
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_23

    .line 421
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    goto :goto_23
.end method

.method private static stopDevice()V
    .registers 4

    .prologue
    .line 1254
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 1256
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_c

    .line 1257
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 1262
    :cond_c
    :goto_c
    return-void

    .line 1259
    :catch_d
    move-exception v0

    .line 1260
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
    .line 370
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 371
    return-void
.end method

.method private static stopTicker()V
    .registers 2

    .prologue
    .line 741
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 742
    return-void
.end method

.method private static tick()V
    .registers 13

    .prologue
    const-wide/16 v2, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x0

    .line 762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 763
    sget-wide v6, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    sub-long v6, v4, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 764
    sput-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    .line 765
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->look()V

    .line 766
    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v8, v9, :cond_25

    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v8, v9, :cond_46

    .line 767
    :cond_25
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v0, :cond_3c

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 768
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->restedLast10min:Z

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;-><init>(Z)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 770
    :cond_3c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v0, :cond_45

    .line 771
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 834
    :cond_45
    :goto_45
    return-void

    .line 775
    :cond_46
    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v8, v9, :cond_72

    sget-boolean v8, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v8, :cond_72

    .line 776
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiSession;->guardManualChanges(J)V

    .line 777
    sget-wide v8, Lcom/isaigu/gymapp/ai/AiSession;->calibRunS:D

    add-double/2addr v8, v6

    sput-wide v8, Lcom/isaigu/gymapp/ai/AiSession;->calibRunS:D

    .line 778
    sget-wide v8, Lcom/isaigu/gymapp/ai/AiSession;->calibRunS:D

    const-wide v10, 0x4072c00000000000L    # 300.0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_72

    .line 780
    sput-boolean v12, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 781
    sput-boolean v12, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 782
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopDevice()V

    .line 783
    const-string v0, "ai"

    const-string v1, "calibration 300 s \u2014 stim stopped"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 787
    :cond_72
    sget-object v8, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v8, v9, :cond_bc

    sget-boolean v8, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    if-eqz v8, :cond_bc

    sget-boolean v8, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v8, :cond_bc

    .line 788
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    mul-double v4, v0, v6

    add-double/2addr v2, v4

    sput-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    .line 789
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    cmpl-double v2, v2, v0

    if-ltz v2, :cond_45

    .line 790
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    double-to-int v2, v2

    .line 791
    sget-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    int-to-double v6, v2

    sub-double/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    .line 792
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    if-eqz v3, :cond_a0

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    :cond_a0
    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 793
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_ad

    .line 794
    sput-boolean v12, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 796
    :cond_ad
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    sub-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->adjustCalibration(I)V

    goto :goto_45

    .line 800
    :cond_bc
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_45

    .line 803
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiSession;->guardManualChanges(J)V

    .line 804
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v6

    .line 805
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->tick(J)V

    .line 806
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    if-eqz v0, :cond_e9

    .line 807
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->exercises:Lcom/isaigu/gymapp/ai/AiExercises;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v4, v5, v1}, Lcom/isaigu/gymapp/ai/AiExercises;->tick(JLcom/isaigu/gymapp/ai/AiEngine;)V

    .line 808
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_1a5

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->currentExercise()I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v0

    :goto_e7
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 810
    :cond_e9
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiSession;->tickEnergy(J)V

    .line 811
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 813
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_111

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v1

    if-eqz v1, :cond_111

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 814
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v1

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->lastAppliedCycle:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eq v1, v4, :cond_111

    .line 815
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    .line 818
    :cond_111
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_1a8

    sget-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    cmpl-double v1, v4, v2

    if-lez v1, :cond_1a8

    .line 819
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 823
    :cond_11e
    :goto_11e
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_12a

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_12a

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_169

    :cond_12a
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_169

    .line 825
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 826
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopDevice()V

    .line 827
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 828
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->saveExercises()V

    .line 829
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

    .line 831
    :cond_169
    if-eq v6, v0, :cond_45

    .line 832
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

    goto/16 :goto_45

    :cond_1a5
    move-wide v0, v2

    .line 808
    goto/16 :goto_e7

    .line 820
    :cond_1a8
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_11e

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v2

    sget-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    sub-double/2addr v4, v8

    cmpg-double v1, v2, v4

    if-gez v1, :cond_11e

    .line 821
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    goto/16 :goto_11e
.end method

.method private static tickEnergy(J)V
    .registers 12

    .prologue
    .line 837
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v0, :cond_9

    .line 877
    :cond_8
    :goto_8
    return-void

    .line 840
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 841
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_17

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_24

    .line 842
    :cond_17
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->epocClosed:Z

    if-nez v0, :cond_8

    .line 843
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->epocClosed:Z

    .line 844
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->closeEpoc()V

    goto :goto_8

    .line 848
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

    .line 849
    :goto_36
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    .line 850
    const/4 v6, 0x0

    .line 851
    if-eqz v0, :cond_a3

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOn(J)Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v8, 0x0

    cmpl-double v1, v2, v8

    if-lez v1, :cond_a3

    .line 852
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->channelStim()Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    move-result-object v6

    .line 853
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v2, v1

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double/2addr v2, v8

    iput-wide v2, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 854
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iput v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 855
    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iput v0, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 856
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 867
    :cond_67
    :goto_67
    if-eqz v6, :cond_e7

    .line 869
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    .line 870
    const/4 v0, 0x0

    :goto_71
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    array-length v1, v1

    if-ge v0, v1, :cond_e7

    .line 871
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    if-eqz v1, :cond_e1

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e1

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    aget v1, v1, v0

    int-to-double v2, v1

    .line 872
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

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 848
    :cond_a0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    goto :goto_36

    .line 857
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

    .line 858
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->channelStim()Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    move-result-object v6

    .line 859
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v2, v1

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double/2addr v2, v8

    iput-wide v2, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 860
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iput v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 861
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iput v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 862
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 863
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    iput v1, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    .line 864
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v2, v1

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double/2addr v2, v8

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    mul-double/2addr v0, v2

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseStrengthPct:D

    .line 865
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    goto :goto_67

    .line 871
    :cond_e1
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    goto :goto_84

    .line 872
    :cond_e4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_93

    .line 876
    :cond_e7
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    move-wide v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AiEnergy;->tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V

    goto/16 :goto_8
.end method

.method public static togglePause()V
    .registers 4

    .prologue
    .line 712
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v0, :cond_5

    .line 724
    :goto_4
    return-void

    .line 715
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 716
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v3, :cond_1d

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 717
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_26

    .line 718
    :cond_1d
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->resume(J)V

    .line 719
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ensureDeviceRunning()V

    goto :goto_4

    .line 721
    :cond_26
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->userPause(J)V

    .line 722
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    goto :goto_4
.end method

.method public static useWorkout(Lcom/isaigu/gymapp/ai/Workout;)V
    .registers 1

    .prologue
    .line 488
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->workout:Lcom/isaigu/gymapp/ai/Workout;

    .line 489
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyWorkout()V

    .line 490
    return-void
.end method

.method private static writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1188
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->safe(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    .line 1189
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiRamp;->set(II)V

    .line 1190
    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1191
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 1192
    sput v5, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    .line 1193
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_1f

    .line 1235
    :cond_1e
    :goto_1e
    return-void

    .line 1196
    :cond_1f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v6

    .line 1197
    if-eqz v6, :cond_1e

    move v1, v2

    .line 1200
    :goto_28
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c9

    .line 1201
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1202
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_42

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-nez v3, :cond_46

    .line 1200
    :cond_42
    :goto_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    .line 1205
    :cond_46
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v7

    .line 1206
    if-eqz v7, :cond_42

    .line 1209
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1210
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1211
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 1212
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1213
    iput v5, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1216
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-lez v3, :cond_c7

    if-lez v5, :cond_c7

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v3

    if-eqz v3, :cond_c7

    move v3, v4

    .line 1217
    :goto_77
    iput-boolean v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 1218
    if-eqz v3, :cond_98

    .line 1219
    const/16 v3, 0x78

    iget v8, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 1220
    int-to-double v8, v5

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v3, v8

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 1222
    :cond_98
    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_a8

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v3, :cond_a8

    .line 1223
    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v7, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v7, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1226
    :cond_a8
    :try_start_a8
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_42

    .line 1227
    :catch_ac
    move-exception v0

    .line 1228
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

    goto/16 :goto_42

    :cond_c7
    move v3, v2

    .line 1216
    goto :goto_77

    .line 1232
    :cond_c9
    :try_start_c9
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_cc} :catch_ce

    goto/16 :goto_1e

    .line 1233
    :catch_ce
    move-exception v0

    goto/16 :goto_1e
.end method

.method private static zeroOutput()V
    .registers 2

    .prologue
    .line 1015
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 1016
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    .line 1017
    :goto_e
    if-nez v0, :cond_2d

    .line 1018
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 1019
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 1020
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 1021
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 1022
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 1024
    :cond_2d
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 1025
    return-void

    .line 1016
    :cond_32
    const/4 v0, 0x0

    goto :goto_e
.end method
