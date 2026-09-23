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

.field private static final PREFS:Ljava/lang/String; = "ai_session"

.field private static final SOLO_CALIB_STEP_PER_S:D = 1.0

.field private static final TICK_MS:J = 0xfaL

.field private static calibPercent:I

.field private static calibStimOn:Z

.field private static engine:Lcom/isaigu/gymapp/ai/AiEngine;

.field private static final handler:Landroid/os/Handler;

.field private static input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

.field private static lastAppliedCycle:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

.field private static lastBandHr:I

.field private static lastBandHrMs:J

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


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v4, 0x4

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

    .line 50
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Ticker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession$Ticker;-><init>(Lcom/isaigu/gymapp/ai/AiSession$1;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
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

.method static activityOf(Landroid/view/View;)Landroid/app/Activity;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 576
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 577
    :goto_7
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_26

    .line 578
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1f

    .line 579
    check-cast v0, Landroid/app/Activity;

    .line 583
    :goto_11
    return-object v0

    .line 576
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

    .line 581
    :cond_1f
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_7

    :cond_26
    move-object v0, v1

    .line 583
    goto :goto_11
.end method

.method public static adjustCalibration(I)V
    .registers 4

    .prologue
    .line 214
    const/4 v0, 0x0

    const/16 v1, 0x64

    sget v2, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    add-int/2addr v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    .line 215
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v0, :cond_17

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V

    .line 218
    :cond_17
    return-void
.end method

.method public static answerCheckpoint(I)V
    .registers 5

    .prologue
    .line 303
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_d

    .line 304
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->answerCheckpoint(IJ)V

    .line 306
    :cond_d
    return-void
.end method

.method private static apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V
    .registers 5

    .prologue
    .line 433
    if-nez p0, :cond_3

    .line 440
    :goto_2
    return-void

    .line 436
    :cond_3
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 437
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    sput-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 438
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->lastAppliedCycle:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 439
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    goto :goto_2
.end method

.method private static applyCalibration()V
    .registers 2

    .prologue
    .line 422
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 423
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 424
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 425
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 426
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 427
    const/16 v1, 0x190

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 428
    const/16 v1, 0x12c

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 429
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 430
    return-void
.end method

.method public static attach(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .prologue
    .line 64
    sput-object p0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    .line 65
    sput-object p1, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 66
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->attachButton(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public static beginCalibration()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 190
    const/16 v0, 0xf

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->currentStrength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    .line 191
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 192
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 193
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    .line 194
    return-void
.end method

.method public static beginRestHr()V
    .registers 2

    .prologue
    .line 176
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->restedLast10min:Z

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;-><init>(Z)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 177
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 178
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    .line 179
    return-void
.end method

.method public static beginSetup(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->loadInput(Landroid/content/Context;)V

    .line 168
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 169
    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 170
    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 171
    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 172
    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 173
    return-void
.end method

.method public static buildPlan(IDJ)V
    .registers 12

    .prologue
    .line 183
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiPlanner;->derive(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;IDJ)Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 184
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->build(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 185
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 186
    return-void
.end method

.method public static close()V
    .registers 2

    .prologue
    .line 273
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_f

    .line 274
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    .line 276
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopTicker()V

    .line 277
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 278
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 279
    return-void
.end method

.method public static conflict()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->isSyncActive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 148
    const-string v0, "\u0421\u043f\u0440\u0438 \u043c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0430\u0442\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043f\u0440\u0435\u0434\u0438 AI \u0441\u0435\u0441\u0438\u044f."

    const-string v1, "Stop music sync before an AI session."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 163
    :goto_e
    return-object v0

    .line 151
    :catch_f
    move-exception v0

    .line 154
    :cond_10
    :try_start_10
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 155
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0430\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0430 \u0442\u0430\u0439\u043c\u0435\u0440\u0430 \u043f\u0440\u0435\u0434\u0438 AI \u0441\u0435\u0441\u0438\u044f."

    const-string v1, "Disarm the timer block program before an AI session."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1d} :catch_1f

    move-result-object v0

    goto :goto_e

    .line 158
    :catch_1f
    move-exception v0

    .line 160
    :cond_20
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 161
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a \u0438 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v1, "Add a participant and connect the suit."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 163
    :cond_2f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static currentStrength()I
    .registers 2

    .prologue
    .line 410
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_22

    :try_start_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 413
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 414
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_20} :catch_21

    .line 418
    :goto_20
    return v0

    .line 416
    :catch_21
    move-exception v0

    .line 418
    :cond_22
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private static forceApplyCurrent()V
    .registers 6

    .prologue
    .line 443
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    if-nez v0, :cond_d

    .line 450
    :cond_c
    :goto_c
    return-void

    .line 446
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v2

    .line 447
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_32

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v0

    .line 448
    :goto_23
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 449
    sget v3, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    int-to-double v4, v3

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    goto :goto_c

    .line 447
    :cond_32
    const-wide/16 v0, 0x0

    goto :goto_23
.end method

.method public static getCalibPercent()I
    .registers 1

    .prologue
    .line 125
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    return v0
.end method

.method public static getEngine()Lcom/isaigu/gymapp/ai/AiEngine;
    .registers 1

    .prologue
    .line 121
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    return-object v0
.end method

.method public static getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 1

    .prologue
    .line 105
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    return-object v0
.end method

.method public static getLastBandHr()I
    .registers 1

    .prologue
    .line 133
    sget v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    return v0
.end method

.method public static getLastBandHrAgeMs()J
    .registers 4

    .prologue
    .line 137
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
    .line 587
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->panelRoot:Landroid/view/View;

    return-object v0
.end method

.method public static getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 1

    .prologue
    .line 117
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    return-object v0
.end method

.method public static getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    return-object v0
.end method

.method public static getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    return-object v0
.end method

.method public static getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-object v0
.end method

.method public static isBandStreaming()Z
    .registers 4

    .prologue
    .line 141
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHrAgeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isCalibStimOn()Z
    .registers 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    return v0
.end method

.method public static isSoloRamping()Z
    .registers 1

    .prologue
    .line 226
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    return v0
.end method

.method private static leader()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 390
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 406
    :cond_6
    :goto_6
    return-object v0

    .line 394
    :cond_7
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 395
    if-nez v3, :cond_11

    move-object v0, v1

    .line 396
    goto :goto_6

    .line 398
    :cond_11
    const/4 v0, 0x0

    move v2, v0

    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2c

    .line 399
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 400
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_2b

    move-result v4

    if-eqz v4, :cond_6

    .line 398
    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    .line 404
    :catch_2b
    move-exception v0

    :cond_2c
    move-object v0, v1

    .line 406
    goto :goto_6
.end method

.method private static loadInput(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 535
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 536
    if-nez p0, :cond_b

    .line 555
    :cond_a
    return-void

    .line 540
    :cond_b
    :try_start_b
    const-string v0, "ai_session"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 541
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "goal"

    const-string v4, "TONE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 542
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "mode"

    const-string v4, "ACTIVE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Mode;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 543
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "sex"

    const-string v4, "MALE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 544
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "fitness"

    const-string v4, "MID"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 545
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "operator"

    const-string v4, "TRAINER"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Operator;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 546
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    const-string v3, "age"

    const/16 v4, 0x23

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 547
    const-string v2, "total_s"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 548
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-lez v0, :cond_a0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7d
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_7f} :catch_a2

    .line 551
    :goto_7f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiModel$Screening;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 552
    sget-object v2, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_8c
    if-ge v0, v3, :cond_a

    aget-object v4, v2, v0

    .line 553
    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 548
    :cond_a0
    const/4 v0, 0x0

    goto :goto_7d

    .line 549
    :catch_a2
    move-exception v0

    goto :goto_7f
.end method

.method public static onHeartRate(I)V
    .registers 5

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    sput p0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHr:I

    .line 90
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastBandHrMs:J

    .line 91
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_18

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v2, :cond_18

    .line 92
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v2, v0, v1, p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->onSample(JI)V

    .line 96
    :cond_17
    :goto_17
    return-void

    .line 93
    :cond_18
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v2, :cond_17

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_28

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_17

    .line 94
    :cond_28
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1, p0}, Lcom/isaigu/gymapp/ai/AiEngine;->onHr(JI)V

    goto :goto_17
.end method

.method public static onPulseCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .prologue
    .line 72
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-eq p0, v0, :cond_9

    .line 84
    :cond_8
    :goto_8
    return-void

    .line 75
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 76
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_3b

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v2, :cond_3b

    .line 77
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_8

    .line 81
    :catch_21
    move-exception v0

    .line 82
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

    goto :goto_8

    .line 78
    :cond_3b
    :try_start_3b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_8

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v0, :cond_8

    .line 79
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_48} :catch_21

    goto :goto_8
.end method

.method public static reduce()V
    .registers 4

    .prologue
    .line 282
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_10

    .line 283
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->reduce(J)V

    .line 284
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    .line 286
    :cond_10
    return-void
.end method

.method private static saveInput(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 558
    if-nez p0, :cond_4

    .line 573
    :goto_3
    return-void

    .line 562
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

    .line 563
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mode"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 564
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sex"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 565
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fitness"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 566
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "operator"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 567
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "age"

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 568
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "total_s"

    .line 569
    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v3, :cond_6f

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_6f
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_76} :catch_77

    goto :goto_3

    .line 571
    :catch_77
    move-exception v0

    goto :goto_3
.end method

.method private static setWorkLengthAll(I)V
    .registers 5

    .prologue
    .line 506
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 519
    :cond_4
    return-void

    .line 509
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    .line 510
    if-eqz v2, :cond_4

    .line 513
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 514
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 515
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 516
    iput p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 513
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method

.method public static startCalibrationStim(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 197
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v1, :cond_6

    .line 211
    :goto_5
    return-void

    .line 200
    :cond_6
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 201
    const/16 v1, 0xe10

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->setWorkLengthAll(I)V

    .line 202
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->applyCalibration()V

    .line 204
    :try_start_10
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v1, :cond_19

    .line 205
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_24

    .line 210
    :cond_19
    :goto_19
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v1, v2, :cond_3e

    :goto_21
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    goto :goto_5

    .line 207
    :catch_24
    move-exception v1

    .line 208
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

    .line 210
    :cond_3e
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static startRun(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 231
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    if-nez v0, :cond_a

    .line 255
    :cond_9
    :goto_9
    return-void

    .line 234
    :cond_a
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 235
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->saveInput(Landroid/content/Context;)V

    .line 236
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->input:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->profile:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 238
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->start(J)V

    .line 239
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    add-int/lit16 v2, v2, 0x708

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiSession;->setWorkLengthAll(I)V

    .line 240
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 241
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    .line 242
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-nez v0, :cond_48

    .line 244
    :try_start_3f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_48

    .line 245
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_48} :catch_a1

    .line 251
    :cond_48
    :goto_48
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    .line 252
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

    .line 254
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->startTicker()V

    goto/16 :goto_9

    .line 247
    :catch_a1
    move-exception v0

    .line 248
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

    goto :goto_48
.end method

.method private static startTicker()V
    .registers 4

    .prologue
    .line 311
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    .line 313
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    return-void
.end method

.method public static stop()V
    .registers 3

    .prologue
    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 259
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v2, :cond_d

    .line 260
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->stop(J)V

    .line 262
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 263
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopDevice()V

    .line 264
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_1e

    .line 265
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 269
    :cond_1d
    :goto_1d
    return-void

    .line 266
    :cond_1e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_1d

    .line 267
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    goto :goto_1d
.end method

.method private static stopDevice()V
    .registers 4

    .prologue
    .line 522
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 524
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_c

    .line 525
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 530
    :cond_c
    :goto_c
    return-void

    .line 527
    :catch_d
    move-exception v0

    .line 528
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
    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 223
    return-void
.end method

.method private static stopTicker()V
    .registers 2

    .prologue
    .line 317
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method private static tick()V
    .registers 9

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 339
    sget-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 340
    sput-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->lastTickMs:J

    .line 341
    sget-object v6, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v6, v7, :cond_24

    sget-object v6, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v6, :cond_24

    .line 342
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->restHr:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 385
    :cond_23
    :goto_23
    return-void

    .line 345
    :cond_24
    sget-object v6, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v6, v7, :cond_6d

    sget-boolean v6, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    if-eqz v6, :cond_6d

    sget-boolean v6, Lcom/isaigu/gymapp/ai/AiSession;->calibStimOn:Z

    if-eqz v6, :cond_6d

    .line 346
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    sput-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    .line 347
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    cmpl-double v2, v2, v0

    if-ltz v2, :cond_23

    .line 348
    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    double-to-int v2, v2

    .line 349
    sget-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    int-to-double v6, v2

    sub-double/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->soloAccum:D

    .line 350
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    if-eqz v3, :cond_51

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    :cond_51
    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 351
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_5e

    .line 352
    sput-boolean v8, Lcom/isaigu/gymapp/ai/AiSession;->soloAutoRamp:Z

    .line 354
    :cond_5e
    sget v1, Lcom/isaigu/gymapp/ai/AiSession;->calibPercent:I

    sub-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->adjustCalibration(I)V

    goto :goto_23

    .line 358
    :cond_6d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_23

    .line 361
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 362
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->tick(J)V

    .line 363
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    .line 365
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v2, :cond_a1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v2

    if-eqz v2, :cond_a1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 366
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession;->lastAppliedCycle:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eq v2, v3, :cond_a1

    .line 367
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiSession;->apply(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V

    .line 370
    :cond_a1
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v2, :cond_134

    sget-wide v2, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_134

    .line 371
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 375
    :cond_b0
    :goto_b0
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v2, :cond_bc

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v2, :cond_bc

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v2, :cond_f8

    :cond_bc
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_f8

    .line 377
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    .line 378
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopDevice()V

    .line 379
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sput-object v2, Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    .line 380
    const-string v2, "ai"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run end state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " log="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->getLog()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_f8
    if-eq v0, v1, :cond_23

    .line 383
    const-string v2, "ai"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u2192 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 372
    :cond_134
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v2, :cond_b0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v2

    sget-wide v4, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    sub-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_b0

    .line 373
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->forceApplyCurrent()V

    goto/16 :goto_b0
.end method

.method public static togglePause()V
    .registers 4

    .prologue
    .line 289
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-nez v0, :cond_5

    .line 300
    :goto_4
    return-void

    .line 292
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 293
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v3, :cond_1d

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    .line 294
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_23

    .line 295
    :cond_1d
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->resume(J)V

    goto :goto_4

    .line 297
    :cond_23
    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->userPause(J)V

    .line 298
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->zeroOutput()V

    goto :goto_4
.end method

.method private static writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 466
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiRamp;->set(II)V

    .line 467
    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 468
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_18

    .line 503
    :cond_17
    :goto_17
    return-void

    .line 471
    :cond_18
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v4

    .line 472
    if-eqz v4, :cond_17

    move v1, v2

    .line 475
    :goto_21
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_93

    .line 476
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 477
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    if-nez v5, :cond_3f

    .line 475
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    .line 480
    :cond_3f
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    .line 481
    if-eqz v5, :cond_3b

    .line 484
    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    iput v6, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 485
    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    iput v6, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 486
    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 487
    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 488
    iput v3, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 489
    iput-boolean v2, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 490
    iget-object v6, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v6, :cond_75

    iget-object v6, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v6, :cond_75

    .line 491
    iget-object v6, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v5, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v5, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 494
    :cond_75
    :try_start_75
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_3b

    .line 495
    :catch_79
    move-exception v0

    .line 496
    const-string v5, "ai"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onParamsChange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 500
    :cond_93
    :try_start_93
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_17

    .line 501
    :catch_97
    move-exception v0

    goto/16 :goto_17
.end method

.method private static zeroOutput()V
    .registers 2

    .prologue
    .line 453
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiSession;->lastSentFrac:D

    .line 454
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    .line 455
    :goto_e
    if-nez v0, :cond_2d

    .line 456
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 457
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 458
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 459
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 460
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession;->CALIB_CYCLE:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 462
    :cond_2d
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiSession;->writeAll(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;I)V

    .line 463
    return-void

    .line 454
    :cond_32
    const/4 v0, 0x0

    goto :goto_e
.end method
