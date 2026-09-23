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

.field public static final HR_BLOCK_END_CYCLES:I = 0x1

.field public static final HR_BLOCK_END_E:D = 0.05

.field public static final LONG_PAUSE_S:D = 30.0

.field public static final RECOVERY_MS:J = 0xea60L

.field public static final REDUCE_STEP:D = 0.1

.field public static final REENTRY_MIN:D = 0.6

.field public static final REENTRY_STEP:D = 0.1

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

.field private endBlockRequested:Z

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

.field private hrEndCycles:I

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

.field private reentry:D

.field private final restHr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[D>;"
        }
    .end annotation
.end field

.field private restReady:Z

.field private restReadyMs:J

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

.field private totalIdleS:D

.field private u:D

.field private uUser:D

.field private useB:Z

.field private userPauseStartMs:J

.field private zeroCycles:I


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;Lcom/isaigu/gymapp/ai/AiModel$Plan;)V
    .registers 14

    .prologue
    const-wide/high16 v8, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v4, -0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    .line 86
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 87
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 89
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 99
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    .line 102
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    .line 111
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    .line 112
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 113
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    .line 114
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    .line 115
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 118
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 119
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 124
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 125
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    .line 128
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    .line 133
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    .line 134
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 136
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 138
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    .line 142
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 143
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 144
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    .line 154
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    .line 166
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    .line 167
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    .line 170
    const-string v0, "start"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    .line 175
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 176
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 177
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 178
    iget-wide v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qBudget:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 179
    iget-wide v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    iget-object v1, p2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    return-void
.end method

.method private action(Ljava/lang/String;J)V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    .line 973
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    .line 974
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastActionMs:J

    .line 975
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

    .line 976
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_3f

    .line 977
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 979
    :cond_3f
    return-void
.end method

.method private advancePhase(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 889
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v1, :cond_8

    .line 890
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockSilently(J)V

    .line 892
    :cond_8
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 893
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 894
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 895
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 896
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 897
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2c

    .line 898
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->finish(J)V

    .line 902
    :goto_2b
    return v0

    .line 901
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

    .line 902
    const/4 v0, 0x1

    goto :goto_2b
.end method

.method private applyIdle(DJ)V
    .registers 12

    .prologue
    .line 251
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_7

    .line 258
    :goto_6
    return-void

    .line 254
    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    .line 255
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x4082c00000000000L    # 600.0

    div-double v2, p1, v2

    sub-double/2addr v0, v2

    const-wide v2, 0x3fe3333333333333L    # 0.6

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    .line 256
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 257
    const-string v0, "reentry"

    invoke-direct {p0, v0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_6
.end method

.method private applyRamps(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 823
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

    .line 824
    :cond_17
    const/16 v0, 0x3e8

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 825
    const/16 v0, 0x1f4

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 833
    :goto_1f
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, -0xc8

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 834
    iget v1, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_39

    .line 835
    iget v1, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 837
    :cond_39
    return-void

    .line 826
    :cond_3a
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 827
    const/16 v0, 0x190

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 828
    const/16 v0, 0x12c

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    goto :goto_1f

    .line 830
    :cond_49
    iput v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 831
    iput v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    goto :goto_1f
.end method

.method private arbiter(Lcom/isaigu/gymapp/ai/AiModel$Phase;D)D
    .registers 10

    .prologue
    .line 791
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    if-lez v0, :cond_4a

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 792
    :goto_a
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiAt(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 793
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 794
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 796
    :cond_25
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    mul-double/2addr v0, v2

    .line 797
    mul-double/2addr v0, p2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    mul-double/2addr v0, v2

    .line 798
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    mul-double/2addr v2, v0

    .line 799
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->cHr()D

    move-result-wide v4

    .line 800
    sub-double v2, v0, v2

    mul-double/2addr v2, v4

    sub-double v2, v0, v2

    .line 801
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    mul-double/2addr v0, v2

    .line 802
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    return-wide v0

    .line 791
    :cond_4a
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_a
.end method

.method private beginBlock(J)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 516
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    .line 517
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    .line 518
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    .line 519
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    .line 520
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 521
    cmpl-double v2, v0, v2

    if-lez v2, :cond_20

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    :goto_1d
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 522
    return-void

    .line 521
    :cond_20
    const-wide/high16 v0, -0x3fdc000000000000L    # -10.0

    goto :goto_1d
.end method

.method private blockLevelControl(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;J)V
    .registers 16

    .prologue
    .line 669
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

    .line 671
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    .line 672
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v1, "NON_RESPONDER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    const-string v0, "non_responder"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 675
    :cond_39
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v0

    if-nez v0, :cond_40

    .line 704
    :cond_3f
    :goto_3f
    return-void

    .line 679
    :cond_40
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_f4

    const/4 v0, 0x1

    .line 680
    :goto_51
    iget-wide v2, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_a5

    if-eqz v0, :cond_a5

    .line 681
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

    .line 682
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    cmpl-double v0, v0, v2

    if-lez v0, :cond_8c

    .line 683
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 684
    const-string v0, "l2_shorter_blocks"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 686
    :cond_8c
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide v2, 0x3ff6666666666666L    # 1.4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_f7

    .line 687
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    .line 691
    :goto_9d
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a5

    .line 692
    invoke-direct {p0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->l1(J)V

    .line 696
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

    .line 697
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 698
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    .line 699
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v1, :cond_ed

    .line 700
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 702
    :cond_ed
    const-string v0, "below_corridor"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_3f

    .line 679
    :cond_f4
    const/4 v0, 0x0

    goto/16 :goto_51

    .line 689
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

    .line 842
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 865
    :cond_9
    :goto_9
    return v0

    .line 845
    :cond_a
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v4

    .line 846
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->lastFatigueDrivenIndex()I

    move-result v5

    .line 847
    const/4 v3, -0x1

    .line 848
    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ne v6, v4, :cond_37

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aget-boolean v6, v6, v0

    if-nez v6, :cond_37

    move v2, v0

    .line 857
    :cond_20
    :goto_20
    if-ltz v2, :cond_9

    .line 860
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aput-boolean v1, v0, v2

    .line 861
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 862
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 863
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointSinceMs:J

    .line 864
    const-string v0, "checkpoint"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    move v0, v1

    .line 865
    goto :goto_9

    .line 850
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

    .line 852
    goto :goto_20

    .line 853
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
    .line 982
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

    .line 605
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 630
    :cond_d
    :goto_d
    return-void

    .line 608
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 609
    iput-wide p1, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tRestS:D

    .line 610
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->fitTau()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    .line 611
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_a4

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_a4

    .line 612
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->phaseOfBlock(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;)Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 613
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 614
    if-nez v1, :cond_57

    .line 615
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 618
    :cond_57
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    .line 619
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_a2

    const/4 v1, 0x1

    .line 620
    :goto_71
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-eqz v2, :cond_8d

    if-eqz v1, :cond_8d

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    cmpl-double v2, v2, v8

    if-lez v2, :cond_8d

    .line 621
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    mul-double/2addr v2, v8

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 622
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 624
    :cond_8d
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    .line 625
    invoke-direct {p0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->l1(J)V

    goto/16 :goto_d

    .line 619
    :cond_a2
    const/4 v1, 0x0

    goto :goto_71

    .line 628
    :cond_a4
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    goto/16 :goto_d
.end method

.method private controlPerCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)V
    .registers 12

    .prologue
    .line 722
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

    .line 777
    :cond_1c
    :goto_1c
    return-void

    .line 725
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    .line 726
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 727
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v0, v6, v0

    if-lez v0, :cond_12e

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    .line 729
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    .line 736
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1c

    .line 741
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    if-nez v0, :cond_144

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    .line 742
    :goto_67
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-lez v2, :cond_81

    .line 743
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 744
    const-string v2, "l3_longer_pause"

    invoke-direct {p0, v2, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 746
    :cond_81
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 747
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_ba

    .line 748
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 749
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    if-eqz v0, :cond_148

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    mul-double/2addr v0, v4

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    .line 750
    :goto_9c
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    sub-double/2addr v2, v4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_b8

    .line 751
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 752
    const-string v2, "l4_softer_b"

    invoke-direct {p0, v2, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 754
    :cond_b8
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 756
    :cond_ba
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    if-eqz v0, :cond_14e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v0, :cond_14e

    const-wide v0, 0x3fa999999999999aL    # 0.05

    cmpl-double v0, v6, v0

    if-lez v0, :cond_14e

    .line 757
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_db

    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    .line 763
    :cond_db
    :goto_db
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v0, v1, :cond_e9

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    if-eqz v0, :cond_152

    :cond_e9
    const/4 v0, 0x1

    .line 764
    :goto_ea
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v6, v2

    if-lez v1, :cond_154

    .line 765
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    .line 766
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1c

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 767
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide v4, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    .line 768
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v1, 0x5

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 769
    const-string v0, "u_down"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_1c

    .line 730
    :cond_12e
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_43

    .line 731
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    .line 732
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_43

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    goto/16 :goto_43

    .line 741
    :cond_144
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_67

    .line 749
    :cond_148
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v0

    goto/16 :goto_9c

    .line 761
    :cond_14e
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    goto :goto_db

    .line 763
    :cond_152
    const/4 v0, 0x0

    goto :goto_ea

    .line 772
    :cond_154
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    .line 773
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1c

    .line 774
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
    .line 780
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-nez v0, :cond_7

    .line 781
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 786
    :goto_6
    return-wide v0

    .line 783
    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_15

    .line 784
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 786
    :cond_15
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    goto :goto_6
.end method

.method private endBlock(J)V
    .registers 12

    .prologue
    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 526
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 527
    new-instance v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;-><init>()V

    .line 528
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    .line 529
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 530
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->startMs:J

    .line 531
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tBlockS:D

    .line 532
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    .line 533
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->fEnd:D

    .line 534
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-eqz v0, :cond_ed

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_ed

    const/4 v0, 0x1

    :goto_40
    iput-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->hrEnded:Z

    .line 535
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_f0

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_f0

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    sub-double/2addr v0, v4

    :goto_57
    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    .line 536
    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_f7

    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_f7

    .line 537
    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    div-double/2addr v0, v4

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    .line 538
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 540
    if-nez v0, :cond_a1

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v4

    if-eqz v4, :cond_a1

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_a1

    .line 541
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 544
    :cond_a1
    if-eqz v0, :cond_f4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_f4

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double v0, v4, v0

    :goto_b5
    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    .line 549
    :goto_b7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 551
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    .line 552
    invoke-direct {p0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->blockLevelControl(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;J)V

    .line 554
    :cond_cb
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 555
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    .line 556
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 558
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    .line 560
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    .line 561
    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->hrEnded:Z

    if-eqz v0, :cond_100

    const-string v0, "hr_block_end"

    :goto_e9
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 562
    return-void

    .line 534
    :cond_ed
    const/4 v0, 0x0

    goto/16 :goto_40

    .line 535
    :cond_f0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_57

    .line 544
    :cond_f4
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_b5

    .line 546
    :cond_f7
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    .line 547
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    goto :goto_b7

    .line 561
    :cond_100
    const-string v0, "rest"

    goto :goto_e9
.end method

.method private endBlockSilently(J)V
    .registers 4

    .prologue
    .line 906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 907
    return-void
.end method

.method private finish(J)V
    .registers 6

    .prologue
    .line 931
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    .line 932
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    .line 933
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    :goto_12
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 934
    const-string v0, "done"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 935
    return-void

    .line 933
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    goto :goto_12
.end method

.method private firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I
    .registers 4

    .prologue
    .line 869
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 870
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, p1, :cond_1b

    .line 874
    :goto_1a
    return v1

    .line 869
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 874
    :cond_1f
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method private fitTau()D
    .registers 19

    .prologue
    .line 634
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

    .line 635
    :cond_13
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 655
    :goto_15
    return-wide v2

    .line 637
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

    .line 638
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v8, v2

    if-gez v2, :cond_36

    .line 639
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    .line 641
    :cond_36
    const-wide/16 v6, 0x0

    .line 642
    const-wide/16 v2, 0x0

    .line 643
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

    .line 644
    const/4 v3, 0x1

    aget-wide v12, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    int-to-double v14, v3

    sub-double/2addr v12, v14

    .line 645
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v12, v14

    if-lez v3, :cond_43

    .line 648
    div-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    .line 649
    const/4 v3, 0x0

    aget-wide v14, v2, v3

    const/4 v3, 0x0

    aget-wide v16, v2, v3

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    .line 650
    const/4 v3, 0x0

    aget-wide v2, v2, v3

    mul-double/2addr v2, v12

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 651
    goto :goto_43

    .line 652
    :cond_75
    const-wide/16 v2, 0x0

    cmpg-double v2, v6, v2

    if-lez v2, :cond_81

    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_84

    .line 653
    :cond_81
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    .line 655
    :cond_84
    neg-double v2, v6

    div-double/2addr v2, v4

    goto :goto_15
.end method

.method private guards(JD)V
    .registers 14

    .prologue
    .line 461
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v2

    .line 462
    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-lez v0, :cond_11c

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    .line 463
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    .line 464
    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v4, :cond_47

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_47

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v4, :cond_47

    .line 465
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 466
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v6, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 467
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v6, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    .line 470
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

    .line 472
    :cond_63
    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v2, v4

    if-lez v4, :cond_11f

    .line 473
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v5, "BAND_LOST"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    const-string v4, "band_lost_cooldown"

    invoke-direct {p0, v4, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 475
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 481
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

    .line 482
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 485
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

    .line 487
    :cond_b4
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 488
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 489
    const-string v2, "hr_cap"

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 490
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 491
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 492
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    .line 493
    const-string v2, "hr_cap"

    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 495
    :cond_d2
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_11b

    .line 496
    const-string v2, "hr_cap"

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 497
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

    .line 498
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_105

    .line 499
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 501
    :cond_105
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-nez v0, :cond_11b

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 503
    const-string v0, "can_resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 510
    :cond_11b
    :goto_11b
    return-void

    .line 462
    :cond_11c
    const/4 v0, 0x0

    goto/16 :goto_d

    .line 476
    :cond_11f
    const-wide/16 v4, 0x7530

    cmp-long v4, v2, v4

    if-lez v4, :cond_79

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_79

    .line 477
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 478
    const-string v4, "band_lost_soft"

    invoke-direct {p0, v4, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_79

    .line 506
    :cond_13e
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    goto :goto_11b
.end method

.method private integrate(JD)V
    .registers 12

    .prologue
    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_45

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    .line 447
    :goto_11
    if-eqz v0, :cond_47

    .line 448
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 449
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v4

    mul-double/2addr v4, v0

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    .line 450
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

    .line 451
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    .line 452
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v2, :cond_44

    .line 453
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    .line 458
    :cond_44
    :goto_44
    return-void

    .line 446
    :cond_45
    const/4 v0, 0x0

    goto :goto_11

    .line 456
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
    .line 819
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

    .line 314
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

    .line 318
    :cond_17
    :goto_17
    return v0

    .line 317
    :cond_18
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    sub-long v2, p1, v2

    .line 318
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

    .line 910
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    .line 911
    if-gez v0, :cond_d

    .line 912
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->finish(J)V

    .line 928
    :cond_c
    :goto_c
    return-void

    .line 915
    :cond_d
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ge v1, v0, :cond_c

    .line 918
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 919
    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 920
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 921
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 922
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 923
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_2f

    .line 924
    :cond_2b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 926
    :cond_2f
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 927
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

    .line 707
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    aget v1, v0, v8

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v8

    .line 708
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->budgetHalved:Z

    if-nez v0, :cond_25

    .line 709
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 710
    iput-boolean v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->budgetHalved:Z

    .line 711
    const-string v0, "l1_budget"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 716
    :goto_21
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    .line 717
    return-void

    .line 713
    :cond_25
    const-string v0, "l1_cooldown"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 714
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    goto :goto_21
.end method

.method private lastFatigueDrivenIndex()I
    .registers 4

    .prologue
    .line 878
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_21

    .line 879
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v0, v2, :cond_1e

    move v0, v1

    .line 883
    :goto_1d
    return v0

    .line 878
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 883
    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method private markRestReady(J)V
    .registers 4

    .prologue
    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 600
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 601
    const-string v0, "rest_ready"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 602
    return-void
.end method

.method private phaseOfBlock(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;)Lcom/isaigu/gymapp/ai/AiModel$Phase;
    .registers 6

    .prologue
    .line 659
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

    .line 660
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v2, v3, :cond_8

    .line 664
    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    goto :goto_1a
.end method

.method private restMinReached(J)Z
    .registers 8

    .prologue
    .line 595
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private restRecovered()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 587
    .line 588
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_3e

    .line 589
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v4

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_3a

    move v0, v1

    .line 591
    :goto_2d
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_3c

    if-eqz v0, :cond_3c

    :goto_39
    return v1

    :cond_3a
    move v0, v2

    .line 589
    goto :goto_2d

    :cond_3c
    move v1, v2

    .line 591
    goto :goto_39

    :cond_3e
    move v0, v1

    goto :goto_2d
.end method

.method private silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;
    .registers 8

    .prologue
    .line 959
    new-instance v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 960
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 961
    :goto_17
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 962
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 963
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 964
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 965
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 966
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 967
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 968
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    .line 969
    return-object v1

    .line 960
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

    .line 938
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_38

    .line 939
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

    .line 940
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    .line 942
    :cond_34
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 944
    :cond_38
    return-void
.end method

.method private tickRest(J)V
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 565
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v2, :cond_7

    .line 584
    :cond_6
    :goto_6
    return-void

    .line 568
    :cond_7
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v2, v4

    .line 569
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->restRecovered()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_47

    move v2, v0

    .line 570
    :goto_20
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_49

    .line 571
    :goto_26
    if-nez v2, :cond_2a

    if-eqz v0, :cond_6

    .line 574
    :cond_2a
    if-nez v2, :cond_3b

    .line 575
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    .line 576
    const-string v0, "rest_timeout"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 578
    :cond_3b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 579
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->markRestReady(J)V

    goto :goto_6

    :cond_47
    move v2, v1

    .line 569
    goto :goto_20

    :cond_49
    move v0, v1

    .line 570
    goto :goto_26

    .line 582
    :cond_4b
    invoke-direct {p0, v4, v5, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->closeRestStats(DJ)V

    .line 583
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    goto :goto_6
.end method

.method private trackCorridor(D)V
    .registers 8

    .prologue
    .line 947
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

    .line 956
    :cond_20
    :goto_20
    return-void

    .line 950
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    .line 951
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    .line 952
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

    .line 953
    :goto_4d
    if-eqz v0, :cond_20

    .line 954
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    goto :goto_20

    .line 952
    :cond_55
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method private useHrControl()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 815
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

    .line 286
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

    .line 301
    :cond_18
    :goto_18
    return-void

    .line 289
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    if-le p1, v0, :cond_47

    .line 290
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

    .line 291
    const-string v0, "cr10_down"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 299
    :goto_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 300
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    goto :goto_18

    .line 292
    :cond_47
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    if-ge p1, v0, :cond_69

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_69

    .line 294
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    mul-double/2addr v0, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    .line 295
    const-string v0, "cr10_up"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_3e

    .line 297
    :cond_69
    const-string v0, "cr10_ok"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_3e
.end method

.method public cHr()D
    .registers 11

    .prologue
    const-wide/16 v0, 0x0

    .line 806
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-nez v2, :cond_9

    .line 811
    :goto_8
    return-wide v0

    .line 809
    :cond_9
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 810
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

    .line 811
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
    .line 1052
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

.method public continueBlock(J)Z
    .registers 12

    .prologue
    const/4 v2, 0x0

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-nez v0, :cond_12

    :cond_10
    move v0, v2

    .line 246
    :goto_11
    return v0

    .line 239
    :cond_12
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3d

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    div-double/2addr v0, v6

    .line 240
    :goto_20
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-direct {p0, v4, v5, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->closeRestStats(DJ)V

    .line 241
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->applyIdle(DJ)V

    .line 242
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 243
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 244
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 245
    const-string v0, "continue"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 246
    const/4 v0, 0x1

    goto :goto_11

    .line 239
    :cond_3d
    const-wide/16 v0, 0x0

    goto :goto_20
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
    .line 1140
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    return-object v0
.end method

.method public getCapHits()I
    .registers 2

    .prologue
    .line 1152
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    return v0
.end method

.method public getCeilingScale()D
    .registers 3

    .prologue
    .line 1112
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    return-wide v0
.end method

.method public getCorridorShare()D
    .registers 5

    .prologue
    .line 1156
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
    .line 1120
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    return-object v0
.end method

.method public getCurrentFrac()D
    .registers 3

    .prologue
    .line 1116
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
    .line 1068
    const-wide/16 v2, 0x0

    .line 1069
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

    .line 1070
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 1069
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1072
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
    .line 1176
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    return-wide v0
.end method

.method public getFatigue()D
    .registers 3

    .prologue
    .line 1088
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    return-wide v0
.end method

.method public getFatigueMax()D
    .registers 3

    .prologue
    .line 1092
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    return-wide v0
.end method

.method public getFatigueRec()D
    .registers 3

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

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
    .line 1144
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    return-object v0
.end method

.method public getHrAgeMs(J)J
    .registers 6

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHrFilter()Lcom/isaigu/gymapp/ai/AiHrFilter;
    .registers 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    return-object v0
.end method

.method public getHrS()D
    .registers 3

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHrr60()D
    .registers 3

    .prologue
    .line 1164
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    return-wide v0
.end method

.method public getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 2

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    return-object v0
.end method

.method public getLCount(I)I
    .registers 3

    .prologue
    .line 1148
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
    .line 1128
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActionMs()J
    .registers 3

    .prologue
    .line 1132
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
    .line 1136
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    return-object v0
.end method

.method public getPauseReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    return-object v0
.end method

.method public getPhaseElapsedS()D
    .registers 3

    .prologue
    .line 1064
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    return-wide v0
.end method

.method public getPhaseIndex()I
    .registers 2

    .prologue
    .line 1060
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    return v0
.end method

.method public getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    return-object v0
.end method

.method public getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;
    .registers 2

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    return-object v0
.end method

.method public getQBudget()D
    .registers 3

    .prologue
    .line 1100
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    return-wide v0
.end method

.method public getQUsed()D
    .registers 3

    .prologue
    .line 1096
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    return-wide v0
.end method

.method public getRecoveryRemainingMs(J)J
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    .line 1168
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

.method public getReentry()D
    .registers 3

    .prologue
    .line 1040
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    return-wide v0
.end method

.method public getRestMinS()D
    .registers 3

    .prologue
    .line 1032
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    return-wide v0
.end method

.method public getRestOverS(J)D
    .registers 8

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    :goto_19
    return-wide v0

    :cond_1a
    const-wide/16 v0, 0x0

    goto :goto_19
.end method

.method public getRestRemainingS(J)D
    .registers 14

    .prologue
    const-wide/16 v2, 0x0

    .line 1014
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v0, :cond_e

    :cond_c
    move-wide v0, v2

    .line 1021
    :goto_d
    return-wide v0

    .line 1017
    :cond_e
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestS(J)D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1018
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3f

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpl-double v4, v4, v2

    if-lez v4, :cond_3f

    .line 1019
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1021
    :cond_3f
    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestS(J)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_d
.end method

.method public getRestS(J)D
    .registers 8

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    :goto_11
    return-wide v0

    :cond_12
    const-wide/16 v0, 0x0

    goto :goto_11
.end method

.method public getSessionMaxX()D
    .registers 3

    .prologue
    .line 1160
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    return-wide v0
.end method

.method public getStartMs()J
    .registers 3

    .prologue
    .line 1172
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    return-wide v0
.end method

.method public getState()Lcom/isaigu/gymapp/ai/AiEngine$State;
    .registers 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    return-object v0
.end method

.method public getTotalIdleS()D
    .registers 3

    .prologue
    .line 1044
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    return-wide v0
.end method

.method public getU()D
    .registers 3

    .prologue
    .line 1104
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    return-wide v0
.end method

.method public getUUser()D
    .registers 3

    .prologue
    .line 1108
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    return-wide v0
.end method

.method public getX()D
    .registers 5

    .prologue
    .line 1084
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
    .line 1184
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    return v0
.end method

.method public isInBlock()Z
    .registers 2

    .prologue
    .line 1180
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    return v0
.end method

.method public isManualContinue()Z
    .registers 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    return v0
.end method

.method public isRestHrOk()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 1025
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_18

    .line 1028
    :cond_17
    :goto_17
    return v0

    :cond_18
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v2

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    cmpg-double v1, v2, v4

    if-lez v1, :cond_17

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isRestReady()Z
    .registers 3

    .prologue
    .line 993
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isStimOn(J)Z
    .registers 6

    .prologue
    .line 1124
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

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 325
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    .line 326
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_11

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    .line 387
    :goto_10
    return-object v0

    .line 329
    :cond_11
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    .line 331
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    iget v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v8, v1

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_2d

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->advancePhase(J)Z

    move-result v0

    if-nez v0, :cond_29

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    goto :goto_10

    .line 335
    :cond_29
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    .line 337
    :cond_2d
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v1, v2, :cond_3a

    .line 338
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-nez v1, :cond_45

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->beginBlock(J)V

    .line 346
    :cond_3a
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->checkCheckpoint(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    goto :goto_10

    .line 340
    :cond_45
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    cmpl-double v1, v6, v8

    if-gez v1, :cond_65

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-nez v1, :cond_65

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    sub-long v6, p1, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_3a

    .line 342
    :cond_65
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlock(J)V

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    goto :goto_10

    .line 349
    :cond_6d
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->controlPerCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)V

    .line 350
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-eqz v1, :cond_80

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v1, :cond_80

    .line 351
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlock(J)V

    .line 352
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    goto :goto_10

    .line 355
    :cond_80
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v1, :cond_11d

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    if-eqz v1, :cond_11d

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 356
    :goto_8a
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v2, :cond_95

    .line 357
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    if-nez v2, :cond_121

    move v2, v3

    :goto_93
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 359
    :cond_95
    new-instance v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v6}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 360
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 361
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 362
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 363
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v2, :cond_af

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-ne v1, v2, :cond_af

    move v4, v3

    :cond_af
    iput-boolean v4, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    .line 364
    iget-boolean v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    if-eqz v2, :cond_124

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v4

    .line 365
    :goto_b9
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    .line 366
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v7

    if-eqz v7, :cond_e4

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    cmpl-double v7, v8, v10

    if-lez v7, :cond_e4

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v7

    if-eqz v7, :cond_e4

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v7

    if-nez v7, :cond_e4

    .line 367
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 369
    :cond_e4
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v2

    iput v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 370
    invoke-direct {p0, v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->arbiter(Lcom/isaigu/gymapp/ai/AiModel$Phase;D)D

    move-result-wide v2

    iput-wide v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 371
    invoke-direct {p0, v6, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->applyRamps(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 374
    iget-wide v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->cycleDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;D)D

    move-result-wide v2

    .line 375
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v0, v4, :cond_127

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_127

    .line 376
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v1, "BUDGET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v0, "budget_cooldown"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 379
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v0

    goto/16 :goto_10

    .line 355
    :cond_11d
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    goto/16 :goto_8a

    :cond_121
    move v2, v4

    .line 357
    goto/16 :goto_93

    .line 364
    :cond_124
    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    goto :goto_b9

    .line 381
    :cond_127
    iget-wide v2, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_143

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    cmpg-double v0, v2, v10

    if-gez v0, :cond_143

    .line 382
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    add-double/2addr v2, v4

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 384
    :cond_143
    iput-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 385
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 386
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    move-object v0, v6

    .line 387
    goto/16 :goto_10
.end method

.method public onHr(JI)V
    .registers 13

    .prologue
    .line 306
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->onSample(JIZ)Z

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3a

    .line 309
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

    .line 311
    :cond_3a
    return-void
.end method

.method public phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;
    .registers 4

    .prologue
    .line 1056
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

    .line 212
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    sub-double/2addr v0, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 213
    const-string v0, "reduce"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 214
    return-void
.end method

.method public reduceTo(DJ)V
    .registers 16

    .prologue
    .line 218
    const-wide v6, 0x3fb999999999999aL    # 0.1

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 219
    const-string v0, "reduce"

    invoke-direct {p0, v0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 220
    return-void
.end method

.method public resume(J)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_41

    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 264
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3e

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 265
    :goto_20
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 266
    const-string v2, "resume"

    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 267
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3a

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_3a

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v2, :cond_3a

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->beginBlock(J)V

    .line 271
    :cond_3a
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->applyIdle(DJ)V

    .line 282
    :cond_3d
    :goto_3d
    return-void

    .line 264
    :cond_3e
    const-wide/16 v0, 0x0

    goto :goto_20

    .line 272
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_3d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-eqz v0, :cond_3d

    .line 273
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 274
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 276
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 277
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 278
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 279
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 280
    const-string v0, "resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_3d
.end method

.method public start(J)V
    .registers 6

    .prologue
    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_7

    .line 198
    :goto_6
    return-void

    .line 189
    :cond_7
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    .line 190
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 191
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_25

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->seed(IJ)V

    .line 197
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
    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_d

    .line 208
    :cond_c
    :goto_c
    return-void

    .line 205
    :cond_d
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    .line 206
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 207
    const-string v0, "stop"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_c
.end method

.method public tick(J)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 393
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_b

    .line 394
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 396
    :cond_b
    const-wide/16 v2, 0x7d0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 397
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 398
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v4, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v4, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v4, :cond_35

    .line 443
    :cond_34
    :goto_34
    return-void

    .line 401
    :cond_35
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v4, :cond_3f

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->tickRecovery(J)V

    goto :goto_34

    .line 405
    :cond_3f
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->integrate(JD)V

    .line 406
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->guards(JD)V

    .line 408
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v4, :cond_ec

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v0, :cond_ec

    const/4 v0, 0x1

    .line 409
    :goto_50
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v4, v5, :cond_5e

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v4, v5, :cond_66

    if-nez v0, :cond_66

    .line 411
    :cond_5e
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 412
    invoke-direct {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->trackCorridor(D)V

    .line 414
    :cond_66
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v2, :cond_9a

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->tickRest(J)V

    .line 416
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_9a

    .line 417
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 419
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 420
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-nez v0, :cond_9a

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->restMinReached(J)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 421
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->markRestReady(J)V

    .line 430
    :cond_9a
    :goto_9a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_bf

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_bf

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_bf

    .line 432
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 433
    const-string v0, "checkpoint"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 434
    const-string v0, "checkpoint_timeout"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 437
    :cond_bf
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_34

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_34

    .line 438
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

    .line 439
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_34

    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    goto/16 :goto_34

    :cond_ec
    move v0, v1

    .line 408
    goto/16 :goto_50

    .line 425
    :cond_ef
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 426
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    goto :goto_9a
.end method

.method public userPause(J)V
    .registers 6

    .prologue
    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_1b

    .line 224
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 225
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 226
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 227
    const-string v0, "user_pause"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 229
    :cond_1b
    return-void
.end method
