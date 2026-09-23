.class public final Lcom/isaigu/gymapp/ai/AiEngine;
.super Ljava/lang/Object;
.source "AiEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiEngine$State;,
        Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;,
        Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;
    }
.end annotation


# static fields
.field public static final BAND_LOSS_HARD_MS:J = 0x1d4c0L

.field public static final BAND_LOSS_SOFT_MS:J = 0x7530L

.field public static final CHECKPOINT_TIMEOUT_MS:J = 0x3a98L

.field public static final RECOVERY_MS:J = 0xea60L

.field public static final REDUCE_STEP:D = 0.1

.field public static final RESUME_HOLD_MS:J = 0x7530L

.field public static final STALE_HR_MS:J = 0x2710L

.field public static final TICK_EXPECT_MS:J = 0xfaL

.field public static final U_MIN:D = 0.6


# instance fields
.field private blockMaxHr:D

.field private blockMaxX:D

.field private blockQ:D

.field private blockStartHr:D

.field private blockStartMs:J

.field private final blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;",
            ">;"
        }
    .end annotation
.end field

.field private budgetHalved:Z

.field private cResp:D

.field private canResume:Z

.field private capHits:I

.field private ceilingScale:D

.field private final checkpointDone:[Z

.field private checkpointSinceMs:J

.field private corridorInS:D

.field private corridorTotalS:D

.field private ctrlActive:Z

.field private current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

.field private currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

.field private cycleStartMs:J

.field private endMs:J

.field private fMaxEff:D

.field private fatigue:D

.field private final flags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private frozen:Z

.field private highCycles:I

.field private highDStreak:I

.field private final hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

.field private hrAtEnd:D

.field private hrr60:D

.field private final in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

.field private inBlock:Z

.field private final lCount:[I

.field private lastAction:Ljava/lang/String;

.field private lastActionMs:J

.field private lastCycleMs:J

.field private lastTickMs:J

.field private final log:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mainBlocks:I

.field private offFactor:D

.field private pauseReason:Ljava/lang/String;

.field private phaseElapsedS:D

.field private phaseIdx:I

.field private phiCapBand:D

.field private phiScale:D

.field private final plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

.field private final prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

.field private qBudget:D

.field private qUsed:D

.field private final rRef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final restHr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[D>;"
        }
    .end annotation
.end field

.field private restStartMs:J

.field private resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

.field private sessionMaxX:D

.field private sigmaB:D

.field private startMs:J

.field private state:Lcom/isaigu/gymapp/ai/AiEngine$State;

.field private stimPauseRecoverSinceMs:J

.field private tRestMinS:D

.field private final tauRef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private u:D

.field private uUser:D

.field private useB:Z

.field private zeroCycles:I


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;Lcom/isaigu/gymapp/ai/AiModel$Plan;)V
    .registers 14

    .prologue
    const-wide/high16 v8, -0x3fdc000000000000L    # -10.0

    const-wide/16 v6, -0x1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    .line 76
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 77
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 79
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 89
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    .line 92
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    .line 101
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    .line 102
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 103
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    .line 104
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    .line 105
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 108
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 109
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 114
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 115
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    .line 118
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    .line 123
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    .line 124
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 126
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 128
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    .line 136
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    .line 148
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    .line 149
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    .line 152
    const-string v0, "start"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    .line 157
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 158
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 159
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 160
    iget-wide v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qBudget:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 161
    iget-wide v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    iget-object v1, p2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    return-void
.end method

.method private action(Ljava/lang/String;J)V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    .line 855
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    .line 856
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastActionMs:J

    .line 857
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_1a

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    sub-long v0, p2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    :cond_1a
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_3f

    .line 859
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 861
    :cond_3f
    return-void
.end method

.method private advancePhase(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 772
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v1, :cond_8

    .line 773
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockSilently(J)V

    .line 775
    :cond_8
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 776
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 777
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 778
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 779
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 780
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2c

    .line 781
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->finish(J)V

    .line 785
    :goto_2b
    return v0

    .line 784
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 785
    const/4 v0, 0x1

    goto :goto_2b
.end method

.method private applyRamps(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 706
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_3a

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 707
    :cond_17
    const/16 v0, 0x3e8

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 708
    const/16 v0, 0x1f4

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 716
    :goto_1f
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, -0xc8

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 717
    iget v1, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_39

    .line 718
    iget v1, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 720
    :cond_39
    return-void

    .line 709
    :cond_3a
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 710
    const/16 v0, 0x190

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 711
    const/16 v0, 0x12c

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    goto :goto_1f

    .line 713
    :cond_49
    iput v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 714
    iput v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    goto :goto_1f
.end method

.method private arbiter(Lcom/isaigu/gymapp/ai/AiModel$Phase;D)D
    .registers 10

    .prologue
    .line 675
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    if-lez v0, :cond_47

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 676
    :goto_a
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiAt(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 677
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 678
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 680
    :cond_25
    mul-double/2addr v0, p2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    mul-double/2addr v0, v2

    .line 681
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    mul-double/2addr v2, v0

    .line 682
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->cHr()D

    move-result-wide v4

    .line 683
    sub-double v2, v0, v2

    mul-double/2addr v2, v4

    sub-double v2, v0, v2

    .line 684
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    mul-double/2addr v0, v2

    .line 685
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    return-wide v0

    .line 675
    :cond_47
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_a
.end method

.method private beginBlock(J)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 436
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    .line 437
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    .line 438
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    .line 439
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    .line 440
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 441
    cmpl-double v2, v0, v2

    if-lez v2, :cond_20

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    :goto_1d
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 442
    return-void

    .line 441
    :cond_20
    const-wide/high16 v0, -0x3fdc000000000000L    # -10.0

    goto :goto_1d
.end method

.method private blockLevelControl(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;J)V
    .registers 16

    .prologue
    .line 563
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-nez v0, :cond_39

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_39

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_39

    .line 565
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    .line 566
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v1, "NON_RESPONDER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    const-string v0, "non_responder"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 569
    :cond_39
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v0

    if-nez v0, :cond_40

    .line 598
    :cond_3f
    :goto_3f
    return-void

    .line 573
    :cond_40
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_f4

    const/4 v0, 0x1

    .line 574
    :goto_51
    iget-wide v2, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_a5

    if-eqz v0, :cond_a5

    .line 575
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    .line 576
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    cmpl-double v0, v0, v2

    if-lez v0, :cond_8c

    .line 577
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 578
    const-string v0, "l2_shorter_blocks"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 580
    :cond_8c
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide v2, 0x3ff6666666666666L    # 1.4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_f7

    .line 581
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    .line 585
    :goto_9d
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a5

    .line 586
    invoke-direct {p0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->l1(J)V

    .line 590
    :cond_a5
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    const-wide/high16 v2, -0x3fec000000000000L    # -5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3f

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3f

    .line 591
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 592
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    .line 593
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v1, :cond_ed

    .line 594
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 596
    :cond_ed
    const-string v0, "below_corridor"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_3f

    .line 573
    :cond_f4
    const/4 v0, 0x0

    goto/16 :goto_51

    .line 583
    :cond_f7
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    goto :goto_9d
.end method

.method private checkCheckpoint(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)Z
    .registers 16

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 725
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 748
    :cond_9
    :goto_9
    return v0

    .line 728
    :cond_a
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v4

    .line 729
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->lastFatigueDrivenIndex()I

    move-result v5

    .line 730
    const/4 v3, -0x1

    .line 731
    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ne v6, v4, :cond_37

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aget-boolean v6, v6, v0

    if-nez v6, :cond_37

    move v2, v0

    .line 740
    :cond_20
    :goto_20
    if-ltz v2, :cond_9

    .line 743
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aput-boolean v1, v0, v2

    .line 744
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 745
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 746
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointSinceMs:J

    .line 747
    const-string v0, "checkpoint"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    move v0, v1

    .line 748
    goto :goto_9

    .line 733
    :cond_37
    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ne v6, v4, :cond_4f

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_4f

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    iget v4, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v10, v4

    mul-double/2addr v8, v10

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_4f

    move v2, v1

    .line 735
    goto :goto_20

    .line 736
    :cond_4f
    iget v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ne v4, v5, :cond_68

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aget-boolean v4, v4, v2

    if-nez v4, :cond_68

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    const-wide v6, 0x3feb333333333333L    # 0.85

    iget v8, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-gez v4, :cond_20

    :cond_68
    move v2, v3

    goto :goto_20
.end method

.method private static clamp(DDD)D
    .registers 8

    .prologue
    .line 864
    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private closeRestStats(DJ)V
    .registers 16

    .prologue
    const-wide v8, 0x3ff4cccccccccccdL    # 1.3

    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 524
    :cond_d
    :goto_d
    return-void

    .line 502
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 503
    iput-wide p1, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tRestS:D

    .line 504
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->fitTau()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    .line 505
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_a4

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_a4

    .line 506
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->phaseOfBlock(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;)Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 507
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 508
    if-nez v1, :cond_57

    .line 509
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 512
    :cond_57
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    .line 513
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_a2

    const/4 v1, 0x1

    .line 514
    :goto_71
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-eqz v2, :cond_8d

    if-eqz v1, :cond_8d

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    cmpl-double v2, v2, v8

    if-lez v2, :cond_8d

    .line 515
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    mul-double/2addr v2, v8

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 516
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 518
    :cond_8d
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    .line 519
    invoke-direct {p0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->l1(J)V

    goto/16 :goto_d

    .line 513
    :cond_a2
    const/4 v1, 0x0

    goto :goto_71

    .line 522
    :cond_a4
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    goto/16 :goto_d
.end method

.method private controlPerCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)V
    .registers 12

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1d

    .line 661
    :cond_1c
    :goto_1c
    return-void

    .line 619
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    .line 620
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 621
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v0, v6, v0

    if-lez v0, :cond_fa

    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    .line 623
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    .line 630
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1c

    .line 633
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    if-eqz v0, :cond_110

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    .line 634
    :goto_5f
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-lez v2, :cond_79

    .line 635
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 636
    const-string v2, "l3_longer_pause"

    invoke-direct {p0, v2, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 638
    :cond_79
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 639
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_b2

    .line 640
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 641
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    if-eqz v0, :cond_114

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    mul-double/2addr v0, v4

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    .line 642
    :goto_94
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    sub-double/2addr v2, v4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_b0

    .line 643
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 644
    const-string v2, "l4_softer_b"

    invoke-direct {p0, v2, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 646
    :cond_b0
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 648
    :cond_b2
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v6, v0

    if-lez v0, :cond_11a

    .line 649
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    .line 650
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1c

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, v1, :cond_1c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 651
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide v4, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    .line 652
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v1, 0x5

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 653
    const-string v0, "u_down"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_1c

    .line 624
    :cond_fa
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_43

    .line 625
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    .line 626
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_43

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    goto/16 :goto_43

    .line 633
    :cond_110
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_5f

    .line 641
    :cond_114
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v0

    goto/16 :goto_94

    .line 656
    :cond_11a
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    .line 657
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1c

    .line 658
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    goto/16 :goto_1c
.end method

.method private currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D
    .registers 6

    .prologue
    .line 664
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-nez v0, :cond_7

    .line 665
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 670
    :goto_6
    return-wide v0

    .line 667
    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_15

    .line 668
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 670
    :cond_15
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    goto :goto_6
.end method

.method private endBlock(J)V
    .registers 16

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v10, 0x0

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 446
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    .line 447
    new-instance v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;-><init>()V

    .line 448
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    .line 449
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 450
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->startMs:J

    .line 451
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tBlockS:D

    .line 452
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    .line 453
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->fEnd:D

    .line 454
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_c6

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_c6

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    sub-double/2addr v0, v6

    :goto_48
    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    .line 455
    iget-wide v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_c8

    iget-wide v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 456
    iget-wide v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    iget-wide v6, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    .line 457
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 459
    if-nez v0, :cond_8e

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v6

    if-eqz v6, :cond_8e

    iget-wide v6, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    cmpl-double v6, v6, v10

    if-lez v6, :cond_8e

    .line 460
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    iget-wide v6, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-wide v0, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 463
    :cond_8e
    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v1, v6, v10

    if-lez v1, :cond_9f

    iget-wide v2, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double/2addr v2, v0

    :cond_9f
    iput-wide v2, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    .line 468
    :goto_a1
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 470
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    .line 471
    invoke-direct {p0, v5, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->blockLevelControl(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;J)V

    .line 473
    :cond_b5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 474
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 476
    const-string v0, "rest"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 477
    return-void

    :cond_c6
    move-wide v0, v2

    .line 454
    goto :goto_48

    .line 465
    :cond_c8
    iput-wide v2, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    .line 466
    iput-wide v2, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    goto :goto_a1
.end method

.method private endBlockSilently(J)V
    .registers 4

    .prologue
    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 790
    return-void
.end method

.method private finish(J)V
    .registers 6

    .prologue
    .line 813
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    .line 814
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    .line 815
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    :goto_12
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 816
    const-string v0, "done"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 817
    return-void

    .line 815
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    goto :goto_12
.end method

.method private firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I
    .registers 4

    .prologue
    .line 752
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 753
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, p1, :cond_1b

    .line 757
    :goto_1a
    return v1

    .line 752
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 757
    :cond_1f
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method private fitTau()D
    .registers 19

    .prologue
    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    if-gtz v2, :cond_16

    .line 529
    :cond_13
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 549
    :goto_15
    return-wide v2

    .line 531
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    int-to-double v4, v4

    sub-double v8, v2, v4

    .line 532
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v8, v2

    if-gez v2, :cond_36

    .line 533
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    .line 535
    :cond_36
    const-wide/16 v6, 0x0

    .line 536
    const-wide/16 v2, 0x0

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v4, v2

    :cond_43
    :goto_43
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 538
    const/4 v3, 0x1

    aget-wide v12, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    int-to-double v14, v3

    sub-double/2addr v12, v14

    .line 539
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v12, v14

    if-lez v3, :cond_43

    .line 542
    div-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    .line 543
    const/4 v3, 0x0

    aget-wide v14, v2, v3

    const/4 v3, 0x0

    aget-wide v16, v2, v3

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    .line 544
    const/4 v3, 0x0

    aget-wide v2, v2, v3

    mul-double/2addr v2, v12

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 545
    goto :goto_43

    .line 546
    :cond_75
    const-wide/16 v2, 0x0

    cmpg-double v2, v6, v2

    if-lez v2, :cond_81

    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_84

    .line 547
    :cond_81
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    .line 549
    :cond_84
    neg-double v2, v6

    div-double/2addr v2, v4

    goto :goto_15
.end method

.method private guards(JD)V
    .registers 14

    .prologue
    .line 381
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v2

    .line 382
    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-lez v0, :cond_11c

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    .line 383
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    .line 384
    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v4, :cond_47

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_47

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v4, :cond_47

    .line 385
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 386
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v6, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 387
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v6, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    .line 390
    :cond_47
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v4, :cond_79

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v4

    if-eqz v4, :cond_79

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v4, v5, :cond_63

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v4, v5, :cond_79

    .line 392
    :cond_63
    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v2, v4

    if-lez v4, :cond_11f

    .line 393
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v5, "BAND_LOST"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    const-string v4, "band_lost_cooldown"

    invoke-direct {p0, v4, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 401
    :cond_79
    :goto_79
    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v4, :cond_8f

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8f

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_8f

    .line 402
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 405
    :cond_8f
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v2, :cond_d2

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v2, :cond_d2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    int-to-double v2, v2

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_d2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v3, :cond_b4

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v3, :cond_b4

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_d2

    .line 407
    :cond_b4
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 408
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 409
    const-string v2, "hr_cap"

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 410
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 411
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 412
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    .line 413
    const-string v2, "hr_cap"

    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 415
    :cond_d2
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_11b

    .line 416
    const-string v2, "hr_cap"

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 417
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v2, :cond_13e

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_13e

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    invoke-virtual {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_13e

    .line 418
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_105

    .line 419
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 421
    :cond_105
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-nez v0, :cond_11b

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 423
    const-string v0, "can_resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 430
    :cond_11b
    :goto_11b
    return-void

    .line 382
    :cond_11c
    const/4 v0, 0x0

    goto/16 :goto_d

    .line 396
    :cond_11f
    const-wide/16 v4, 0x7530

    cmp-long v4, v2, v4

    if-lez v4, :cond_79

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_79

    .line 397
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 398
    const-string v4, "band_lost_soft"

    invoke-direct {p0, v4, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_79

    .line 426
    :cond_13e
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    goto :goto_11b
.end method

.method private integrate(JD)V
    .registers 12

    .prologue
    .line 366
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_45

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    .line 367
    :goto_11
    if-eqz v0, :cond_47

    .line 368
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 369
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v4

    mul-double/2addr v4, v0

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    .line 370
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    mul-double/2addr v0, p3

    .line 371
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    .line 372
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v2, :cond_44

    .line 373
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    .line 378
    :cond_44
    :goto_44
    return-void

    .line 366
    :cond_45
    const/4 v0, 0x0

    goto :goto_11

    .line 376
    :cond_47
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    neg-double v2, p3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    goto :goto_44
.end method

.method private isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z
    .registers 4

    .prologue
    .line 702
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v0, v1, :cond_c

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isStimOnAt(J)Z
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v1, :cond_17

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_17

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_18

    .line 255
    :cond_17
    :goto_17
    return v0

    .line 254
    :cond_18
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    sub-long v2, p1, v2

    .line 255
    cmp-long v1, v2, v6

    if-ltz v1, :cond_17

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_17

    const/4 v0, 0x1

    goto :goto_17
.end method

.method private jumpToCooldown(J)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 793
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    .line 794
    if-gez v0, :cond_d

    .line 795
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->finish(J)V

    .line 810
    :cond_c
    :goto_c
    return-void

    .line 798
    :cond_d
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ge v1, v0, :cond_c

    .line 801
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 802
    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 803
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 804
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 805
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 806
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_2f

    .line 807
    :cond_2b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 809
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_c
.end method

.method private l1(J)V
    .registers 12

    .prologue
    const/4 v8, 0x1

    .line 601
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    aget v1, v0, v8

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v8

    .line 602
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->budgetHalved:Z

    if-nez v0, :cond_25

    .line 603
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 604
    iput-boolean v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->budgetHalved:Z

    .line 605
    const-string v0, "l1_budget"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 610
    :goto_21
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    .line 611
    return-void

    .line 607
    :cond_25
    const-string v0, "l1_cooldown"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    goto :goto_21
.end method

.method private lastFatigueDrivenIndex()I
    .registers 4

    .prologue
    .line 761
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_21

    .line 762
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v0, v2, :cond_1e

    move v0, v1

    .line 766
    :goto_1d
    return v0

    .line 761
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 766
    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method private phaseOfBlock(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;)Lcom/isaigu/gymapp/ai/AiModel$Phase;
    .registers 6

    .prologue
    .line 553
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 554
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v2, v3, :cond_8

    .line 558
    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    goto :goto_1a
.end method

.method private silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;
    .registers 8

    .prologue
    .line 841
    new-instance v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 842
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 843
    :goto_17
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 844
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 845
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 846
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 847
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 848
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 849
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 850
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    .line 851
    return-object v1

    .line 842
    :cond_36
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    goto :goto_17
.end method

.method private tickRecovery(J)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 820
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_38

    .line 821
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_34

    .line 822
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    .line 824
    :cond_34
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 826
    :cond_38
    return-void
.end method

.method private tickRest(J)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 480
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 482
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_75

    .line 483
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v6

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_56

    move v0, v1

    .line 485
    :goto_38
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v8, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_58

    if-eqz v0, :cond_58

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_58

    move v0, v1

    .line 486
    :goto_4b
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_5a

    .line 487
    :goto_51
    if-nez v0, :cond_5c

    if-nez v1, :cond_5c

    .line 496
    :goto_55
    return-void

    :cond_56
    move v0, v2

    .line 483
    goto :goto_38

    :cond_58
    move v0, v2

    .line 485
    goto :goto_4b

    :cond_5a
    move v1, v2

    .line 486
    goto :goto_51

    .line 490
    :cond_5c
    if-nez v0, :cond_6d

    .line 491
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    .line 492
    const-string v0, "rest_timeout"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 494
    :cond_6d
    invoke-direct {p0, v4, v5, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->closeRestStats(DJ)V

    .line 495
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    goto :goto_55

    :cond_75
    move v0, v1

    goto :goto_38
.end method

.method private trackCorridor(D)V
    .registers 8

    .prologue
    .line 829
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_21

    .line 838
    :cond_20
    :goto_20
    return-void

    .line 832
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    .line 833
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    .line 834
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_55

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4c

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_55

    :cond_4c
    const/4 v0, 0x1

    .line 835
    :goto_4d
    if-eqz v0, :cond_20

    .line 836
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    goto :goto_20

    .line 834
    :cond_55
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method private useHrControl()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 698
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public answerCheckpoint(IJ)V
    .registers 14

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_18

    const-string v0, "checkpoint"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 238
    :cond_18
    :goto_18
    return-void

    .line 226
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    if-le p1, v0, :cond_47

    .line 227
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    const-wide v4, 0x3fb1eb851eb851ecL    # 0.07

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    sub-int v6, p1, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double v4, v8, v4

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    .line 228
    const-string v0, "cr10_down"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 236
    :goto_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 237
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    goto :goto_18

    .line 229
    :cond_47
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    if-ge p1, v0, :cond_69

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_69

    .line 231
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    mul-double/2addr v0, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    .line 232
    const-string v0, "cr10_up"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_3e

    .line 234
    :cond_69
    const-string v0, "cr10_ok"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_3e
.end method

.method public cHr()D
    .registers 11

    .prologue
    const-wide/16 v0, 0x0

    .line 689
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-nez v2, :cond_9

    .line 694
    :goto_8
    return-wide v0

    .line 692
    :cond_9
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 693
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v4, v2, v3}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x3e8

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Profile;->dtHrMs:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_24

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 694
    :cond_24
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->validShare()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cMed:D

    mul-double/2addr v0, v2

    goto :goto_8
.end method

.method public canResume()Z
    .registers 3

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getBlocks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 966
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    return-object v0
.end method

.method public getCapHits()I
    .registers 2

    .prologue
    .line 978
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    return v0
.end method

.method public getCeilingScale()D
    .registers 3

    .prologue
    .line 938
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    return-wide v0
.end method

.method public getCorridorShare()D
    .registers 5

    .prologue
    .line 982
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_e

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    div-double/2addr v0, v2

    :goto_d
    return-wide v0

    :cond_e
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_d
.end method

.method public getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    return-object v0
.end method

.method public getCurrentFrac()D
    .registers 3

    .prologue
    .line 942
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public getElapsedPlanS()D
    .registers 7

    .prologue
    .line 894
    const-wide/16 v2, 0x0

    .line 895
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 896
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 895
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 898
    :cond_26
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    iget v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getEndMs()J
    .registers 3

    .prologue
    .line 1002
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    return-wide v0
.end method

.method public getFatigue()D
    .registers 3

    .prologue
    .line 914
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    return-wide v0
.end method

.method public getFatigueMax()D
    .registers 3

    .prologue
    .line 918
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    return-wide v0
.end method

.method public getFlags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    return-object v0
.end method

.method public getHrAgeMs(J)J
    .registers 6

    .prologue
    .line 906
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHrFilter()Lcom/isaigu/gymapp/ai/AiHrFilter;
    .registers 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    return-object v0
.end method

.method public getHrS()D
    .registers 3

    .prologue
    .line 902
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHrr60()D
    .registers 3

    .prologue
    .line 990
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    return-wide v0
.end method

.method public getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    return-object v0
.end method

.method public getLCount(I)I
    .registers 3

    .prologue
    .line 974
    const/4 v0, 0x1

    if-lt p1, v0, :cond_b

    const/4 v0, 0x5

    if-gt p1, v0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    aget v0, v0, p1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLastAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActionMs()J
    .registers 3

    .prologue
    .line 958
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastActionMs:J

    return-wide v0
.end method

.method public getLog()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 962
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    return-object v0
.end method

.method public getPauseReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    return-object v0
.end method

.method public getPhaseElapsedS()D
    .registers 3

    .prologue
    .line 890
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    return-wide v0
.end method

.method public getPhaseIndex()I
    .registers 2

    .prologue
    .line 886
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    return v0
.end method

.method public getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    return-object v0
.end method

.method public getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;
    .registers 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    return-object v0
.end method

.method public getQBudget()D
    .registers 3

    .prologue
    .line 926
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    return-wide v0
.end method

.method public getQUsed()D
    .registers 3

    .prologue
    .line 922
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    return-wide v0
.end method

.method public getRecoveryRemainingMs(J)J
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    .line 994
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_14

    const-wide/32 v2, 0xea60

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    sub-long v4, p1, v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_14
    return-wide v0
.end method

.method public getSessionMaxX()D
    .registers 3

    .prologue
    .line 986
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    return-wide v0
.end method

.method public getStartMs()J
    .registers 3

    .prologue
    .line 998
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    return-wide v0
.end method

.method public getState()Lcom/isaigu/gymapp/ai/AiEngine$State;
    .registers 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    return-object v0
.end method

.method public getU()D
    .registers 3

    .prologue
    .line 930
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    return-wide v0
.end method

.method public getUUser()D
    .registers 3

    .prologue
    .line 934
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    return-wide v0
.end method

.method public getX()D
    .registers 5

    .prologue
    .line 910
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    :goto_18
    return-wide v0

    :cond_19
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_18
.end method

.method public isFrozen()Z
    .registers 2

    .prologue
    .line 1010
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    return v0
.end method

.method public isInBlock()Z
    .registers 2

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    return v0
.end method

.method public isStimOn(J)Z
    .registers 6

    .prologue
    .line 950
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;
    .registers 16

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 262
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_f

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    .line 317
    :goto_e
    return-object v0

    .line 266
    :cond_f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    .line 268
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    iget v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v8, v1

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_2b

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->advancePhase(J)Z

    move-result v0

    if-nez v0, :cond_27

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    goto :goto_e

    .line 272
    :cond_27
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    .line 274
    :cond_2b
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v1, v2, :cond_38

    .line 275
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-nez v1, :cond_43

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->beginBlock(J)V

    .line 283
    :cond_38
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->checkCheckpoint(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    goto :goto_e

    .line 277
    :cond_43
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    cmpl-double v1, v6, v8

    if-gez v1, :cond_5f

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    sub-long v6, p1, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_38

    .line 279
    :cond_5f
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlock(J)V

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    goto :goto_e

    .line 286
    :cond_67
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->controlPerCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)V

    .line 288
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v1, :cond_101

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    if-eqz v1, :cond_101

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 289
    :goto_74
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v2, :cond_7f

    .line 290
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    if-nez v2, :cond_105

    move v2, v3

    :goto_7d
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 292
    :cond_7f
    new-instance v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v6}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 293
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 294
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 295
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 296
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v2, :cond_99

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-ne v1, v2, :cond_99

    move v4, v3

    :cond_99
    iput-boolean v4, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    .line 297
    iget-boolean v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    if-eqz v2, :cond_108

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v4

    .line 298
    :goto_a3
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    .line 299
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v7

    if-eqz v7, :cond_c8

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_c8

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 300
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 302
    :cond_c8
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v2

    iput v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 303
    invoke-direct {p0, v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->arbiter(Lcom/isaigu/gymapp/ai/AiModel$Phase;D)D

    move-result-wide v2

    iput-wide v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 304
    invoke-direct {p0, v6, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->applyRamps(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 307
    iget-wide v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->cycleDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;D)D

    move-result-wide v2

    .line 308
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v0, v4, :cond_10b

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_10b

    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v1, "BUDGET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const-string v0, "budget_cooldown"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    goto/16 :goto_e

    .line 288
    :cond_101
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    goto/16 :goto_74

    :cond_105
    move v2, v4

    .line 290
    goto/16 :goto_7d

    .line 297
    :cond_108
    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    goto :goto_a3

    .line 314
    :cond_10b
    iput-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 315
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 316
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    move-object v0, v6

    .line 317
    goto/16 :goto_e
.end method

.method public onHr(JI)V
    .registers 13

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->onSample(JIZ)Z

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3a

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v4

    aput-wide v4, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_3a
    return-void
.end method

.method public phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;
    .registers 4

    .prologue
    .line 882
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    return-object v0
.end method

.method public reduce(J)V
    .registers 8

    .prologue
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 194
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    sub-double/2addr v0, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 195
    const-string v0, "reduce"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 196
    return-void
.end method

.method public resume(J)V
    .registers 6

    .prologue
    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_10

    .line 209
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 210
    const-string v0, "resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 219
    :cond_f
    :goto_f
    return-void

    .line 211
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-eqz v0, :cond_f

    .line 212
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 213
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 216
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 217
    const-string v0, "resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_f
.end method

.method public start(J)V
    .registers 6

    .prologue
    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_7

    .line 180
    :goto_6
    return-void

    .line 171
    :cond_7
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    .line 172
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 173
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_25

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->seed(IJ)V

    .line 179
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_6
.end method

.method public stop(J)V
    .registers 6

    .prologue
    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_d

    .line 190
    :cond_c
    :goto_c
    return-void

    .line 187
    :cond_d
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    .line 188
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 189
    const-string v0, "stop"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_c
.end method

.method public tick(J)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 323
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_a

    .line 324
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 326
    :cond_a
    const-wide/16 v0, 0x7d0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    sub-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 327
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 328
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v3, :cond_33

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v3, :cond_33

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_34

    .line 363
    :cond_33
    :goto_33
    return-void

    .line 331
    :cond_34
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_3e

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->tickRecovery(J)V

    goto :goto_33

    .line 335
    :cond_3e
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->integrate(JD)V

    .line 336
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->guards(JD)V

    .line 338
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v3, :cond_50

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_58

    .line 339
    :cond_50
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 340
    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->trackCorridor(D)V

    .line 342
    :cond_58
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_75

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->tickRest(J)V

    .line 344
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_75

    .line 346
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 350
    :cond_75
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_9a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_9a

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_9a

    .line 352
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 353
    const-string v0, "checkpoint"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 354
    const-string v0, "checkpoint_timeout"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 357
    :cond_9a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_33

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_33

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_33

    .line 358
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    .line 359
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_33

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    goto/16 :goto_33
.end method

.method public userPause(J)V
    .registers 6

    .prologue
    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_19

    .line 200
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 201
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 202
    const-string v0, "user_pause"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 204
    :cond_19
    return-void
.end method
