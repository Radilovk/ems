.class public final Lcom/isaigu/gymapp/ai/AiSession;
.super Ljava/lang/Object;
.source "AiSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiSession$Ticker;,
        Lcom/isaigu/gymapp/ai/AiSession$Stage;
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

.field private static written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

.field private static writtenPercent:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 32
    new-instance v7, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v1, 0x55

    const/16 v2, 0x15e

    const/4 v3, 0x4

    const/4 v4, 0x4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    sput-object v7, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 38
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 40
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 53
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    .line 60
    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Ticker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession$Ticker;-><init>(Lcom/isaigu/gymapp/ai/AiSession$1;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .line 26
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->tick()V

    return-void
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 1

    .line 26
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-object v0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/ai/AiEngine;
    .registers 1

    .line 26
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .line 26
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static acquireBand(Landroid/app/Activity;)V
    .registers 4

    .line 190
    const-string v0, "ai"

    if-eqz p0, :cond_24

    :try_start_4
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 191
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->acquire(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    goto :goto_24

    .line 193
    :catchall_e
    move-exception p0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireBand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 195
    :cond_24
    :goto_24
    nop

    .line 196
    :goto_25
    return-void
.end method

.method static activityOf(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .line 926
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_e

    :cond_8
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    if-eqz p0, :cond_d

    goto :goto_3

    :cond_d
    move-object p0, v0

    .line 927
    :goto_e
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_20

    .line 928
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_19

    .line 929
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 931
    :cond_19
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_e

    .line 933
    :cond_20
    return-object v0
.end method

.method public static adjustCalibration(I)V
    .registers 2

    .line 309
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    add-int/2addr v0, p0

    const/16 p0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    .line 310
    sget-boolean p0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz p0, :cond_17

    .line 311
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V

    .line 313
    :cond_17
    return-void
.end method

.method public static answerCheckpoint(I)V
    .registers 4

    .line 430
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_b

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->answerCheckpoint(IJ)V

    .line 433
    :cond_b
    return-void
.end method

.method private static apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V
    .registers 5

    .line 641
    if-nez p0, :cond_3

    .line 642
    return-void

    .line 644
    :cond_3
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 645
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    sput-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 646
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->lastAppliedCycle:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 647
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 648
    return-void
.end method

.method private static applyCalibration()V
    .registers 2

    .line 630
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 631
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 632
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 633
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 634
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 635
    const/16 v1, 0x190

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 636
    const/16 v1, 0x12c

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 637
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 638
    return-void
.end method

.method public static attach(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 73
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    .line 74
    sput-object p1, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 75
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->attachButton(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public static bandState()Ljava/lang/String;
    .registers 1

    .line 218
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 219
    :catchall_5
    move-exception v0

    .line 220
    const-string v0, ""

    return-object v0
.end method

.method public static beginCalibration()V
    .registers 2

    .line 284
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 285
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->currentStrength()I

    move-result v0

    const/16 v1, 0xf

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    .line 286
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 287
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 288
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    .line 289
    return-void
.end method

.method public static beginRestHr()V
    .registers 2

    .line 271
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->restedLast10min:Z

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;-><init>(Z)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 272
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 273
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    .line 274
    return-void
.end method

.method public static beginSetup(Landroid/content/Context;)V
    .registers 2

    .line 256
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->loadInput(Landroid/content/Context;)V

    .line 259
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object p0

    .line 260
    if-eqz p0, :cond_12

    .line 261
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AiProfile;->applyTo(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 263
    :cond_12
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 264
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 265
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 266
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 267
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 268
    return-void
.end method

.method public static buildPlan(IDJ)V
    .registers 11

    .line 278
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiPlanner;->derive(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;IDJ)Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 279
    sget-object p1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/ai/AiPlanner;->build(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 280
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 281
    return-void
.end method

.method private static channelStim()Lcom/isaigu/gymapp/ai/AiEnergy$Stim;
    .registers 4

    .line 564
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;-><init>()V

    .line 565
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 567
    if-eqz v1, :cond_44

    .line 568
    :try_start_b
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 569
    :goto_1b
    if-eqz v2, :cond_33

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v3, :cond_33

    .line 570
    iget-object v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    .line 572
    :cond_33
    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v2, :cond_44

    .line 573
    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_42

    goto :goto_44

    .line 576
    :catchall_42
    move-exception v1

    goto :goto_45

    .line 577
    :cond_44
    :goto_44
    nop

    .line 578
    :goto_45
    return-object v0
.end method

.method public static close()V
    .registers 2

    .line 370
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_f

    .line 371
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    .line 373
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopTicker()V

    .line 374
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 375
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 376
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 377
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    .line 378
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->releaseBand()V

    .line 379
    return-void
.end method

.method public static conflict()Ljava/lang/String;
    .registers 2

    .line 236
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->isSyncActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 237
    const-string v0, "\u0421\u043f\u0440\u0438 \u043c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0430\u0442\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043f\u0440\u0435\u0434\u0438 AI \u0441\u0435\u0441\u0438\u044f."

    const-string v1, "Stop music sync before an AI session."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_10

    return-object v0

    .line 241
    :cond_f
    goto :goto_11

    .line 240
    :catchall_10
    move-exception v0

    .line 243
    :goto_11
    :try_start_11
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 244
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0430\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0430 \u0442\u0430\u0439\u043c\u0435\u0440\u0430 \u043f\u0440\u0435\u0434\u0438 AI \u0441\u0435\u0441\u0438\u044f."

    const-string v1, "Disarm the timer block program before an AI session."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_21

    return-object v0

    .line 248
    :cond_20
    goto :goto_22

    .line 247
    :catchall_21
    move-exception v0

    .line 249
    :goto_22
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-nez v0, :cond_31

    .line 250
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a \u0438 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v1, "Add a participant and connect the suit."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method public static continueBlock()V
    .registers 3

    .line 406
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v0, :cond_5

    .line 407
    return-void

    .line 409
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->continueBlock(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 410
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ensureDeviceRunning()V

    .line 412
    :cond_12
    return-void
.end method

.method private static currentStrength()I
    .registers 2

    .line 618
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_23

    :try_start_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 621
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 622
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return v0

    .line 624
    :catchall_21
    move-exception v0

    goto :goto_24

    .line 625
    :cond_23
    nop

    .line 626
    :goto_24
    const/4 v0, 0x0

    return v0
.end method

.method private static ensureDeviceRunning()V
    .registers 3

    .line 791
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_2f

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_2f

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_11

    goto :goto_2f

    .line 796
    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    .line 799
    goto :goto_2e

    .line 797
    :catchall_17
    move-exception v0

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ai"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :goto_2e
    return-void

    .line 793
    :cond_2f
    :goto_2f
    return-void
.end method

.method private static forceApplyCurrent()V
    .registers 5

    .line 651
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_34

    .line 654
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    .line 655
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v2, :cond_22

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v1

    goto :goto_24

    :cond_22
    const-wide/16 v1, 0x0

    .line 656
    :goto_24
    sput-wide v1, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 657
    sget v3, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v3, v3

    mul-double v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 658
    return-void

    .line 652
    :cond_34
    :goto_34
    return-void
.end method

.method public static getActiveKcal()D
    .registers 2

    .line 588
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->getActiveKcal()D

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_b
    return-wide v0
.end method

.method public static getCalibPercent()I
    .registers 1

    .line 150
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    return v0
.end method

.method public static getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;
    .registers 1

    .line 592
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    return-object v0
.end method

.method public static getEngine()Lcom/isaigu/gymapp/ai/AiEngine;
    .registers 1

    .line 146
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    return-object v0
.end method

.method public static getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 1

    .line 130
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    return-object v0
.end method

.method public static getKcal()D
    .registers 2

    .line 583
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->getKcal()D

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_b
    return-wide v0
.end method

.method public static getLastBandHr()I
    .registers 1

    .line 158
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    return v0
.end method

.method public static getLastBandHrAgeMs()J
    .registers 5

    .line 162
    sget-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHrMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHrMs:J

    sub-long/2addr v0, v2

    goto :goto_15

    :cond_10
    const-wide v0, 0x7fffffffffffffffL

    :goto_15
    return-wide v0
.end method

.method static getPanelRoot()Landroid/view/View;
    .registers 1

    .line 937
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    return-object v0
.end method

.method public static getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 1

    .line 142
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    return-object v0
.end method

.method public static getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;
    .registers 1

    .line 138
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    return-object v0
.end method

.method public static getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;
    .registers 1

    .line 134
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    return-object v0
.end method

.method public static getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 1

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-object v0
.end method

.method private static guardManualChanges(J)V
    .registers 15

    .line 684
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_16d

    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ltz v0, :cond_16d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_e

    goto/16 :goto_16d

    .line 687
    :cond_e
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 688
    if-nez v0, :cond_15

    .line 689
    return-void

    .line 691
    :cond_15
    nop

    .line 692
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    .line 693
    nop

    .line 694
    nop

    .line 695
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_bb

    .line 696
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 697
    const/4 v8, 0x1

    if-eqz v7, :cond_b7

    invoke-virtual {v7}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b7

    invoke-virtual {v7}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v9

    if-nez v9, :cond_3c

    .line 698
    goto/16 :goto_b7

    .line 700
    :cond_3c
    invoke-virtual {v7}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v9

    invoke-virtual {v9}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v9

    .line 701
    if-nez v9, :cond_48

    .line 702
    goto/16 :goto_b7

    .line 704
    :cond_48
    iget v10, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    sget-object v11, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    if-ne v10, v11, :cond_97

    iget v10, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    sget-object v11, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    if-ne v10, v11, :cond_97

    iget v10, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    sget-object v11, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 705
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-ne v10, v11, :cond_97

    iget v10, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    sget-object v11, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 706
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-ne v10, v11, :cond_97

    iget-boolean v10, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    sget-object v11, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-lez v11, :cond_7e

    sget v11, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-lez v11, :cond_7e

    const/4 v11, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v11, 0x0

    :goto_7f
    if-ne v10, v11, :cond_97

    iget-boolean v10, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v10, :cond_98

    iget v10, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    const/16 v11, 0x78

    sget-object v12, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v12, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 708
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-eq v10, v11, :cond_98

    .line 709
    :cond_97
    const/4 v4, 0x1

    .line 711
    :cond_98
    iget v10, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sget v11, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-le v10, v11, :cond_a0

    .line 712
    const/4 v6, 0x1

    goto :goto_a6

    .line 713
    :cond_a0
    iget v10, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-ge v10, v1, :cond_a6

    .line 714
    iget v1, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 716
    :cond_a6
    :goto_a6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v9

    if-ne v7, v9, :cond_b7

    iget-object v9, v7, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v9, :cond_b7

    iget-object v7, v7, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v7, :cond_b7

    .line 717
    const/4 v5, 0x1

    .line 695
    :cond_b7
    :goto_b7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1f

    .line 720
    :cond_bb
    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v3, v7, :cond_f6

    .line 721
    if-nez v4, :cond_c9

    if-nez v6, :cond_c9

    sget v3, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ge v1, v3, :cond_f5

    .line 723
    :cond_c9
    if-eqz v6, :cond_d8

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v3, v5, :cond_d8

    .line 724
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->maxRowStrength(Ljava/util/List;)I

    move-result v1

    goto :goto_d9

    :cond_d8
    nop

    .line 725
    :goto_d9
    const/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    .line 726
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V

    .line 727
    if-eqz v4, :cond_f5

    .line 728
    const-string v0, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438\u0442\u0435 \u0441\u0435 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430\u0442 \u043e\u0442 AI."

    const-string v1, "Parameters are controlled by the AI."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    .line 732
    :cond_f5
    return-void

    .line 734
    :cond_f6
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v0, :cond_fb

    .line 735
    return-void

    .line 737
    :cond_fb
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 738
    if-eqz v5, :cond_124

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v2, :cond_10d

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v2, :cond_10d

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v2, :cond_124

    .line 740
    :cond_10d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->userPause(J)V

    .line 741
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 742
    const-string v0, "\u0421\u043f\u0440\u044f\u043d\u043e \u043e\u0442 \u043e\u0441\u043d\u043e\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u2014 AI \u0435 \u043d\u0430 \u043f\u0430\u0443\u0437\u0430. \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u043e\u0442 AI."

    const-string v1, "Stopped from the main screen \u2014 AI paused. Resume in AI."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    .line 744
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->show()V

    .line 745
    return-void

    .line 747
    :cond_124
    sget v2, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ge v1, v2, :cond_147

    if-lez v2, :cond_147

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v2, :cond_147

    .line 748
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    int-to-double v1, v1

    sget v3, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->reduceTo(DJ)V

    .line 749
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 750
    const-string v0, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d\u043e \u0440\u044a\u0447\u043d\u043e \u2014 AI \u0433\u043e \u043f\u0440\u0438\u0435\u043c\u0430 \u043a\u0430\u0442\u043e \u201e\u041d\u0430\u043c\u0430\u043b\u0438\u201c."

    const-string v1, "Reduced manually \u2014 AI takes it as \u201cReduce\u201d."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    .line 752
    return-void

    .line 754
    :cond_147
    if-nez v4, :cond_14f

    if-nez v6, :cond_14f

    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    if-ge v1, v0, :cond_16c

    .line 755
    :cond_14f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 756
    if-eqz v4, :cond_161

    .line 757
    const-string v0, "AI \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0438\u043c\u043f\u0443\u043b\u0441 \u0438 \u043f\u0430\u0443\u0437\u0430 \u2014 \u0440\u044a\u0447\u043d\u0430\u0442\u0430 \u043f\u0440\u043e\u043c\u044f\u043d\u0430 \u0435 \u043e\u0442\u043c\u0435\u043d\u0435\u043d\u0430."

    const-string v1, "AI controls frequency, pulse and pause \u2014 manual change undone."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_169

    .line 759
    :cond_161
    const-string v0, "AI \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430. \u0418\u0437\u043f\u043e\u043b\u0437\u0432\u0430\u0439 \u201e\u041d\u0430\u043c\u0430\u043b\u0438\u201c \u0438\u043b\u0438 \u0421\u0422\u041e\u041f."

    const-string v1, "AI controls strength. Use Reduce or STOP."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    :goto_169
    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->notifyGuard(Ljava/lang/String;J)V

    .line 762
    :cond_16c
    return-void

    .line 685
    :cond_16d
    :goto_16d
    return-void
.end method

.method public static increase()V
    .registers 3

    .line 390
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_e

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->increase(J)V

    .line 392
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 394
    :cond_e
    return-void
.end method

.method public static isBandConfigured(Landroid/content/Context;)Z
    .registers 2

    .line 181
    const/4 v0, 0x0

    if-eqz p0, :cond_d

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    .line 182
    :catchall_b
    move-exception p0

    .line 183
    return v0

    .line 181
    :cond_d
    :goto_d
    return v0
.end method

.method public static isBandLinkUp()Z
    .registers 1

    .line 210
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 211
    :catchall_5
    move-exception v0

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public static isBandStreaming()Z
    .registers 5

    .line 166
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHrAgeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-gez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isCalibStimOn()Z
    .registers 1

    .line 154
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    return v0
.end method

.method public static isSoloRamping()Z
    .registers 1

    .line 321
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    return v0
.end method

.method private static leader()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 598
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 599
    return-object v1

    .line 602
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 603
    if-nez v0, :cond_d

    .line 604
    return-object v1

    .line 606
    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 607
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 608
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_27

    if-nez v4, :cond_23

    .line 609
    return-object v3

    .line 606
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 613
    :cond_26
    goto :goto_28

    .line 612
    :catchall_27
    move-exception v0

    .line 614
    :goto_28
    return-object v1
.end method

.method private static loadInput(Landroid/content/Context;)V
    .registers 7

    .line 881
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 882
    if-nez p0, :cond_a

    .line 883
    return-void

    .line 886
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    const-string v1, "ai_session"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 887
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v2, "goal"

    const-string v3, "TONE"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 888
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v2, "mode"

    const-string v3, "ACTIVE"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Mode;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 889
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v2, "sex"

    const-string v3, "MALE"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 890
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v2, "fitness"

    const-string v3, "MID"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 891
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v2, "operator"

    const-string v3, "TRAINER"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Operator;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 892
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v2, "age"

    const/16 v3, 0x23

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 893
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v2, "pause"

    const-string v3, "AUTO"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 894
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v2, "weight_kg"

    const/16 v3, 0x4b

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 895
    const-string v1, "total_s"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 896
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-lez p0, :cond_99

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_9a

    :cond_99
    const/4 p0, 0x0

    :goto_9a
    iput-object p0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;
    :try_end_9c
    .catchall {:try_start_b .. :try_end_9c} :catchall_9d

    .line 898
    goto :goto_9e

    .line 897
    :catchall_9d
    move-exception p0

    .line 899
    :goto_9e
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    new-instance v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiModel$Screening;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 900
    sget-object p0, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_ab
    if-ge v2, v1, :cond_bf

    aget-object v3, p0, v2

    .line 901
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .line 903
    :cond_bf
    return-void
.end method

.method private static maxRowStrength(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)I"
        }
    .end annotation

    .line 765
    nop

    .line 766
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 767
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 768
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 769
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 770
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 766
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 773
    :cond_38
    return v1
.end method

.method private static notifyGuard(Ljava/lang/String;J)V
    .registers 8

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "guard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ai"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    sget-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastGuardToastMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0xfa0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_36

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    if-nez v0, :cond_25

    goto :goto_36

    .line 781
    :cond_25
    sput-wide p1, Lcom/isaigu/gymapp/ai/AiSession;->lastGuardToastMs:J

    .line 783
    :try_start_27
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 784
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_34

    .line 786
    goto :goto_35

    .line 785
    :catchall_34
    move-exception p0

    .line 787
    :goto_35
    return-void

    .line 779
    :cond_36
    :goto_36
    return-void
.end method

.method public static onHeartRate(I)V
    .registers 2

    .line 106
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->onHeartRateImpl(I)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 109
    goto :goto_a

    .line 107
    :catchall_4
    move-exception p0

    .line 108
    const-string v0, "AiSession.onHeartRate"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_a
    return-void
.end method

.method private static onHeartRateImpl(I)V
    .registers 5

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 114
    sput p0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    .line 115
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHrMs:J

    .line 116
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_16

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v2, :cond_16

    .line 117
    invoke-virtual {v2, v0, v1, p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->onSample(JI)V

    goto :goto_2b

    .line 118
    :cond_16
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_26

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_2b

    .line 119
    :cond_26
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1, p0}, Lcom/isaigu/gymapp/ai/AiEngine;->onHr(JI)V

    .line 121
    :cond_2b
    :goto_2b
    return-void
.end method

.method public static onPulseCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .line 81
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->onPulseCycleImpl(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 84
    goto :goto_a

    .line 82
    :catchall_4
    move-exception p0

    .line 83
    const-string v0, "AiSession.onPulseCycle"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :goto_a
    return-void
.end method

.method private static onPulseCycleImpl(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .line 89
    if-eqz p0, :cond_47

    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-eq p0, v0, :cond_9

    goto :goto_47

    .line 92
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p0, v2, :cond_21

    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz p0, :cond_21

    .line 94
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    goto :goto_2e

    .line 95
    :cond_21
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p0, v0, :cond_2e

    sget-boolean p0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz p0, :cond_2e

    .line 96
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2f

    .line 100
    :cond_2e
    :goto_2e
    goto :goto_46

    .line 98
    :catchall_2f
    move-exception p0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPulseCycle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ai"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_46
    return-void

    .line 90
    :cond_47
    :goto_47
    return-void
.end method

.method public static ownsOutput()Z
    .registers 2

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_26

    .line 172
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 173
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 174
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_30

    :cond_26
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_32

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    .line 171
    :goto_33
    return v0
.end method

.method public static reconnectBand(Landroid/app/Activity;)V
    .registers 4

    .line 200
    const-string v0, "ai"

    if-eqz p0, :cond_24

    :try_start_4
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 201
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->reconnect(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    goto :goto_24

    .line 203
    :catchall_e
    move-exception p0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnectBand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 205
    :cond_24
    :goto_24
    nop

    .line 206
    :goto_25
    return-void
.end method

.method public static reduce()V
    .registers 3

    .line 382
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_e

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->reduce(J)V

    .line 384
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 386
    :cond_e
    return-void
.end method

.method private static releaseBand()V
    .registers 4

    .line 226
    const-string v0, "ai"

    :try_start_2
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 227
    :goto_e
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_12

    .line 230
    goto :goto_27

    .line 228
    :catchall_12
    move-exception v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseBand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_27
    return-void
.end method

.method private static saveInput(Landroid/content/Context;)V
    .registers 5

    .line 906
    if-nez p0, :cond_3

    .line 907
    return-void

    .line 910
    :cond_3
    :try_start_3
    const-string v0, "ai_session"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "goal"

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 911
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "mode"

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 912
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "sex"

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 913
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "fitness"

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 914
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "operator"

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 915
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "age"

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 916
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pause"

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 917
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "weight_kg"

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 918
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "total_s"

    .line 919
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v2, :cond_8b

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_8b
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 920
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_93

    .line 922
    goto :goto_94

    .line 921
    :catchall_93
    move-exception p0

    .line 923
    :goto_94
    return-void
.end method

.method public static setActivePause(Z)V
    .registers 4

    .line 398
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_e

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->setActivePause(ZJ)V

    .line 400
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 402
    :cond_e
    return-void
.end method

.method private static setWorkLengthAll(I)V
    .registers 5

    .line 852
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 853
    return-void

    .line 855
    :cond_5
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 856
    if-nez v0, :cond_c

    .line 857
    return-void

    .line 859
    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 860
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 861
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    .line 862
    iput p0, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 859
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 865
    :cond_26
    return-void
.end method

.method public static startCalibrationStim(Landroid/content/Context;)V
    .registers 4

    .line 292
    sget-boolean p0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz p0, :cond_5

    .line 293
    return-void

    .line 295
    :cond_5
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 296
    const/16 v0, 0xe10

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->setWorkLengthAll(I)V

    .line 297
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V

    .line 299
    :try_start_10
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_19

    .line 300
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1a

    .line 304
    :cond_19
    goto :goto_31

    .line 302
    :catchall_1a
    move-exception v0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ai"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_31
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 306
    return-void
.end method

.method public static startRun(Landroid/content/Context;)V
    .registers 5

    .line 326
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    if-eqz v0, :cond_b9

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    if-nez v0, :cond_a

    goto/16 :goto_b9

    .line 329
    :cond_a
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 330
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->saveInput(Landroid/content/Context;)V

    .line 331
    new-instance p0, Lcom/isaigu/gymapp/ai/AiEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    invoke-direct {p0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 332
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiEnergy;->forSession(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 333
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->epocClosed:Z

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 335
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->start(J)V

    .line 336
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget p0, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    add-int/lit16 p0, p0, 0x708

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->setWorkLengthAll(I)V

    .line 337
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 338
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    .line 339
    sget-boolean p0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    const-string v1, "ai"

    if-nez p0, :cond_6d

    .line 341
    :try_start_4e
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz p0, :cond_57

    .line 342
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_58

    .line 346
    :cond_57
    goto :goto_6d

    .line 344
    :catchall_58
    move-exception p0

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_6d
    :goto_6d
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 349
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "run start goal="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " op="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ceil="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cap="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    .line 352
    return-void

    .line 327
    :cond_b9
    :goto_b9
    return-void
.end method

.method private static startTicker()V
    .registers 4

    .line 438
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    .line 440
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    return-void
.end method

.method public static stop()V
    .registers 3

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 356
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v2, :cond_b

    .line 357
    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->stop(J)V

    .line 359
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 360
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopDevice()V

    .line 361
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_1c

    .line 362
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    goto :goto_25

    .line 363
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_25

    .line 364
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 366
    :cond_25
    :goto_25
    return-void
.end method

.method private static stopDevice()V
    .registers 3

    .line 868
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 870
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_c

    .line 871
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    .line 875
    :cond_c
    goto :goto_24

    .line 873
    :catchall_d
    move-exception v0

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ai"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :goto_24
    return-void
.end method

.method public static stopSoloRamp()V
    .registers 1

    .line 317
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 318
    return-void
.end method

.method private static stopTicker()V
    .registers 2

    .line 444
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method private static tick()V
    .registers 9

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 466
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 467
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    .line 468
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v4, v5, :cond_1f

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v4, :cond_1f

    .line 469
    invoke-virtual {v4, v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 470
    return-void

    .line 472
    :cond_1f
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v4, v5, :cond_2c

    sget-boolean v4, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v4, :cond_2c

    .line 473
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->guardManualChanges(J)V

    .line 475
    :cond_2c
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v4, v5, :cond_72

    sget-boolean v4, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    if-eqz v4, :cond_72

    sget-boolean v4, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v4, :cond_72

    .line 476
    sget-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    .line 477
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_71

    .line 478
    double-to-int v2, v0

    .line 479
    int-to-double v6, v2

    sub-double/2addr v0, v6

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    .line 480
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    if-eqz v3, :cond_54

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    :cond_54
    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 481
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    add-int/2addr v0, v2

    const/4 v3, 0x0

    if-lt v0, v1, :cond_63

    .line 482
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 484
    :cond_63
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    sub-int/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->adjustCalibration(I)V

    .line 486
    :cond_71
    return-void

    .line 488
    :cond_72
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v2, :cond_77

    .line 489
    return-void

    .line 491
    :cond_77
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->guardManualChanges(J)V

    .line 492
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    .line 493
    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->tick(J)V

    .line 494
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->tickEnergy(J)V

    .line 495
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 497
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_ad

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v1

    if-eqz v1, :cond_ad

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 498
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v1

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->lastAppliedCycle:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eq v1, v3, :cond_ad

    .line 499
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    .line 502
    :cond_ad
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_bd

    sget-wide v3, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_bd

    .line 503
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    goto :goto_d6

    .line 504
    :cond_bd
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_d6

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v3

    sget-wide v5, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    const-wide v7, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    sub-double/2addr v5, v7

    cmpg-double v1, v3, v5

    if-gez v1, :cond_d6

    .line 505
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 507
    :cond_d6
    :goto_d6
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v3, "ai"

    if-eq v0, v1, :cond_e4

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_e4

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_11a

    :cond_e4
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v4, :cond_11a

    .line 509
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 510
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopDevice()V

    .line 511
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run end state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " log="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->getLog()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_11a
    if-eq v2, v0, :cond_14b

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " \u2192 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_14b
    return-void
.end method

.method private static tickEnergy(J)V
    .registers 16

    .line 520
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    if-eqz v0, :cond_ee

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v0, :cond_a

    goto/16 :goto_ee

    .line 523
    :cond_a
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 524
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_e1

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_18

    goto/16 :goto_e1

    .line 531
    :cond_18
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-gez v4, :cond_2b

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v0

    goto :goto_2d

    :cond_2b
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_2d
    move-wide v5, v0

    .line 532
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    .line 533
    const/4 v1, 0x0

    .line 534
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_62

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOn(J)Z

    move-result v4

    if-eqz v4, :cond_62

    iget-wide v9, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    cmpl-double v4, v9, v7

    if-lez v4, :cond_62

    .line 535
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->channelStim()Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    move-result-object v1

    .line 536
    sget v4, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v7, v4

    iget-wide v9, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double v7, v7, v9

    iput-wide v7, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 537
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iput v4, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 538
    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 539
    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    move-object v7, v1

    goto :goto_9f

    .line 540
    :cond_62
    if-eqz v0, :cond_9e

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4, p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePause(J)Z

    move-result v4

    if-eqz v4, :cond_9e

    iget-wide v9, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    cmpl-double v4, v9, v7

    if-lez v4, :cond_9e

    .line 541
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->channelStim()Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    move-result-object v1

    .line 542
    sget v4, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v9, v4

    iget-wide v11, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double v9, v9, v11

    iput-wide v9, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 543
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iput v4, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 544
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iput v4, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 545
    iput-wide v7, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 546
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    iput v4, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    .line 547
    sget v4, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v7, v4

    iget-wide v9, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double v7, v7, v9

    iget-wide v9, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    mul-double v7, v7, v9

    iput-wide v7, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseStrengthPct:D

    .line 548
    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    move-object v7, v1

    goto :goto_9f

    .line 550
    :cond_9e
    move-object v7, v1

    :goto_9f
    if-eqz v7, :cond_da

    .line 552
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, v7, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    .line 553
    const/4 v0, 0x0

    :goto_a9
    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    array-length v1, v1

    if-ge v0, v1, :cond_da

    .line 554
    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    if-eqz v1, :cond_bf

    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_bf

    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    aget v1, v1, v0

    int-to-double v10, v1

    goto :goto_c0

    :cond_bf
    move-wide v10, v8

    .line 555
    :goto_c0
    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    div-double/2addr v10, v8

    const/4 v4, 0x4

    if-ne v0, v4, :cond_cc

    const-wide v12, 0x3fa999999999999aL    # 0.05

    goto :goto_cd

    :cond_cc
    move-wide v12, v2

    :goto_cd
    mul-double v10, v10, v12

    sget v4, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v12, v4

    mul-double v10, v10, v12

    div-double/2addr v10, v8

    aput-wide v10, v1, v0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 559
    :cond_da
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    move-wide v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V

    .line 560
    return-void

    .line 525
    :cond_e1
    :goto_e1
    sget-boolean p0, Lcom/isaigu/gymapp/ai/AiSession;->epocClosed:Z

    if-nez p0, :cond_ed

    .line 526
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiSession;->epocClosed:Z

    .line 527
    sget-object p0, Lcom/isaigu/gymapp/ai/AiSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEnergy;->closeEpoc()V

    .line 529
    :cond_ed
    return-void

    .line 521
    :cond_ee
    :goto_ee
    return-void
.end method

.method public static togglePause()V
    .registers 4

    .line 415
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v0, :cond_5

    .line 416
    return-void

    .line 418
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 419
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v3, :cond_27

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 420
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_1e

    goto :goto_27

    .line 424
    :cond_1e
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->userPause(J)V

    .line 425
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    goto :goto_2f

    .line 421
    :cond_27
    :goto_27
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->resume(J)V

    .line 422
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ensureDeviceRunning()V

    .line 427
    :goto_2f
    return-void
.end method

.method private static writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V
    .registers 13

    .line 803
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiRamp;->set(II)V

    .line 804
    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 805
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->written:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 806
    sput p1, Lcom/isaigu/gymapp/ai/AiSession;->writtenPercent:I

    .line 807
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v1, :cond_1b

    .line 808
    return-void

    .line 810
    :cond_1b
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 811
    if-nez v1, :cond_22

    .line 812
    return-void

    .line 814
    :cond_22
    const/4 v2, 0x0

    :goto_23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_bf

    .line 815
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 816
    if-eqz v3, :cond_bb

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_bb

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    if-nez v4, :cond_3f

    .line 817
    goto/16 :goto_bb

    .line 819
    :cond_3f
    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 820
    if-nez v4, :cond_4a

    .line 821
    goto :goto_bb

    .line 823
    :cond_4a
    iget v5, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iput v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 824
    iget v5, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iput v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 825
    iget v5, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 826
    iget v5, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 827
    iput p1, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 830
    iget v5, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-lez v5, :cond_6d

    if-lez p1, :cond_6d

    const/4 v5, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v5, 0x0

    .line 831
    :goto_6e
    iput-boolean v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 832
    if-eqz v5, :cond_90

    .line 833
    const/16 v5, 0x78

    iget v7, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 834
    int-to-double v7, p1

    iget-wide v9, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 836
    :cond_90
    iget-object v5, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v5, :cond_a0

    iget-object v5, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v5, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v5, :cond_a0

    .line 837
    iget-object v5, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v4, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v4, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 840
    :cond_a0
    :try_start_a0
    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a4

    .line 843
    goto :goto_bb

    .line 841
    :catchall_a4
    move-exception v3

    .line 842
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onParamsChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ai"

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_bb
    :goto_bb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    .line 846
    :cond_bf
    :try_start_bf
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c3

    .line 848
    goto :goto_c4

    .line 847
    :catchall_c3
    move-exception p0

    .line 849
    :goto_c4
    return-void
.end method

.method private static zeroOutput()V
    .registers 2

    .line 661
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 662
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 663
    :goto_e
    if-nez v0, :cond_2d

    .line 664
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 665
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 666
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 667
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 668
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 670
    :cond_2d
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 671
    return-void
.end method
