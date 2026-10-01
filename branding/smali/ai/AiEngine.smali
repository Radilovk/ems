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

.field private pauseOn:Z

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

.field private setDone:Z

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

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    .line 89
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 90
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 92
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 102
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    .line 105
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    .line 114
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    .line 115
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 118
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    .line 119
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    .line 120
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 123
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 124
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 129
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 130
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    .line 133
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    .line 138
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    .line 139
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 141
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 143
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    .line 147
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 148
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 149
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    .line 161
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    .line 173
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    .line 174
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    .line 177
    const-string v0, "start"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    .line 182
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 183
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 184
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 185
    iget-wide v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qBudget:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 186
    iget-boolean v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseOn:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    .line 187
    iget-wide v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    iget-object v1, p2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    return-void
.end method

.method private action(Ljava/lang/String;J)V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    .line 1109
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    .line 1110
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastActionMs:J

    .line 1111
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

    .line 1112
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_3f

    .line 1113
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1115
    :cond_3f
    return-void
.end method

.method private advancePhase(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1025
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v1, :cond_8

    .line 1026
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockSilently(J)V

    .line 1028
    :cond_8
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 1029
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 1030
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 1031
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 1032
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 1033
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2c

    .line 1034
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->finish(J)V

    .line 1038
    :goto_2b
    return v0

    .line 1037
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

    .line 1038
    const/4 v0, 0x1

    goto :goto_2b
.end method

.method private applyIdle(DJ)V
    .registers 12

    .prologue
    .line 337
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_7

    .line 344
    :goto_6
    return-void

    .line 340
    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    .line 341
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x4082c00000000000L    # 600.0

    div-double v2, p1, v2

    sub-double/2addr v0, v2

    const-wide v2, 0x3fe3333333333333L    # 0.6

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    .line 342
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 343
    const-string v0, "reentry"

    invoke-direct {p0, v0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_6
.end method

.method private applyRamps(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 958
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v0, v2, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v2, :cond_3a

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 959
    :cond_17
    const/16 v0, 0x3e8

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 960
    const/16 v0, 0x1f4

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 969
    :goto_1f
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, -0xc8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 970
    iget v2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    iget v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    add-int/2addr v2, v3

    if-le v2, v0, :cond_39

    .line 971
    iget v2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 973
    :cond_39
    return-void

    .line 961
    :cond_3a
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 963
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    :goto_4c
    add-int/lit16 v0, v0, 0x190

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 964
    const/16 v0, 0x12c

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    goto :goto_1f

    :cond_55
    move v0, v1

    .line 963
    goto :goto_4c

    .line 966
    :cond_57
    iput v1, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 967
    iput v1, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    goto :goto_1f
.end method

.method private arbiter(Lcom/isaigu/gymapp/ai/AiModel$Phase;D)D
    .registers 10

    .prologue
    .line 926
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    if-lez v0, :cond_4a

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 927
    :goto_a
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiAt(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 928
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 929
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 931
    :cond_25
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    mul-double/2addr v0, v2

    .line 932
    mul-double/2addr v0, p2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    mul-double/2addr v0, v2

    .line 933
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    mul-double/2addr v2, v0

    .line 934
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->cHr()D

    move-result-wide v4

    .line 935
    sub-double v2, v0, v2

    mul-double/2addr v2, v4

    sub-double v2, v0, v2

    .line 936
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    mul-double/2addr v0, v2

    .line 937
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    return-wide v0

    .line 926
    :cond_4a
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_a
.end method

.method private beginBlock(J)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 648
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    .line 649
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    .line 650
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    .line 651
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    .line 652
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 653
    cmpl-double v2, v0, v2

    if-lez v2, :cond_20

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    :goto_1d
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 654
    return-void

    .line 653
    :cond_20
    const-wide/high16 v0, -0x3fdc000000000000L    # -10.0

    goto :goto_1d
.end method

.method private blockLevelControl(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;J)V
    .registers 16

    .prologue
    .line 804
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4b

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v1, "NON_RESPONDER"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-nez v0, :cond_4b

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4b

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4b

    .line 806
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    .line 807
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v1, "NON_RESPONDER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    const-string v0, "non_responder"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 810
    :cond_4b
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v0

    if-nez v0, :cond_52

    .line 839
    :cond_51
    :goto_51
    return-void

    .line 814
    :cond_52
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_106

    const/4 v0, 0x1

    .line 815
    :goto_63
    iget-wide v2, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_b7

    if-eqz v0, :cond_b7

    .line 816
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

    .line 817
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9e

    .line 818
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 819
    const-string v0, "l2_shorter_blocks"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 821
    :cond_9e
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide v2, 0x3ff6666666666666L    # 1.4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_109

    .line 822
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    .line 826
    :goto_af
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b7

    .line 827
    invoke-direct {p0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->l1(J)V

    .line 831
    :cond_b7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_51

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    const-wide/high16 v2, -0x3fec000000000000L    # -5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_51

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_51

    .line 832
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 833
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    .line 834
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v1, :cond_ff

    .line 835
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 837
    :cond_ff
    const-string v0, "below_corridor"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_51

    .line 814
    :cond_106
    const/4 v0, 0x0

    goto/16 :goto_63

    .line 824
    :cond_109
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    goto :goto_af
.end method

.method private checkCheckpoint(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)Z
    .registers 16

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 978
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1001
    :cond_9
    :goto_9
    return v0

    .line 981
    :cond_a
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v4

    .line 982
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->lastFatigueDrivenIndex()I

    move-result v5

    .line 983
    const/4 v3, -0x1

    .line 984
    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ne v6, v4, :cond_37

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aget-boolean v6, v6, v0

    if-nez v6, :cond_37

    move v2, v0

    .line 993
    :cond_20
    :goto_20
    if-ltz v2, :cond_9

    .line 996
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aput-boolean v1, v0, v2

    .line 997
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 998
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 999
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointSinceMs:J

    .line 1000
    const-string v0, "checkpoint"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    move v0, v1

    .line 1001
    goto :goto_9

    .line 986
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

    .line 988
    goto :goto_20

    .line 989
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
    .line 1118
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

    .line 739
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 764
    :cond_d
    :goto_d
    return-void

    .line 742
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 743
    iput-wide p1, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tRestS:D

    .line 744
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->fitTau()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    .line 745
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_a4

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_a4

    .line 746
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->phaseOfBlock(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;)Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 747
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 748
    if-nez v1, :cond_57

    .line 749
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 752
    :cond_57
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    .line 753
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_a2

    const/4 v1, 0x1

    .line 754
    :goto_71
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-eqz v2, :cond_8d

    if-eqz v1, :cond_8d

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    cmpl-double v2, v2, v8

    if-lez v2, :cond_8d

    .line 755
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    mul-double/2addr v2, v8

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 756
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 758
    :cond_8d
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    .line 759
    invoke-direct {p0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->l1(J)V

    goto/16 :goto_d

    .line 753
    :cond_a2
    const/4 v1, 0x0

    goto :goto_71

    .line 762
    :cond_a4
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    goto/16 :goto_d
.end method

.method private controlPerCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)V
    .registers 12

    .prologue
    .line 857
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

    .line 912
    :cond_1c
    :goto_1c
    return-void

    .line 860
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    .line 861
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 862
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v0, v6, v0

    if-lez v0, :cond_12e

    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    .line 864
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    .line 871
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1c

    .line 876
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

    .line 877
    :goto_67
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-lez v2, :cond_81

    .line 878
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 879
    const-string v2, "l3_longer_pause"

    invoke-direct {p0, v2, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 881
    :cond_81
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 882
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_ba

    .line 883
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 884
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

    .line 885
    :goto_9c
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    sub-double/2addr v2, v4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_b8

    .line 886
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 887
    const-string v2, "l4_softer_b"

    invoke-direct {p0, v2, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 889
    :cond_b8
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 891
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

    .line 892
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_db

    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    .line 898
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

    .line 899
    :goto_ea
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v6, v2

    if-lez v1, :cond_154

    .line 900
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    .line 901
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1c

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 902
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide v4, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    .line 903
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v1, 0x5

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 904
    const-string v0, "u_down"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_1c

    .line 865
    :cond_12e
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_43

    .line 866
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    .line 867
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_43

    .line 868
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    goto/16 :goto_43

    .line 876
    :cond_144
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_67

    .line 884
    :cond_148
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v0

    goto/16 :goto_9c

    .line 896
    :cond_14e
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    goto :goto_db

    .line 898
    :cond_152
    const/4 v0, 0x0

    goto :goto_ea

    .line 907
    :cond_154
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    .line 908
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1c

    .line 909
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
    .line 915
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-nez v0, :cond_7

    .line 916
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 921
    :goto_6
    return-wide v0

    .line 918
    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_15

    .line 919
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 921
    :cond_15
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    goto :goto_6
.end method

.method private endBlock(J)V
    .registers 12

    .prologue
    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 658
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 659
    new-instance v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;-><init>()V

    .line 660
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    .line 661
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 662
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->startMs:J

    .line 663
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tBlockS:D

    .line 664
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    .line 665
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->fEnd:D

    .line 666
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-eqz v0, :cond_101

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_101

    const/4 v0, 0x1

    :goto_40
    iput-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->hrEnded:Z

    .line 667
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_104

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_104

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    sub-double/2addr v0, v4

    :goto_57
    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    .line 668
    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_10b

    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10b

    .line 669
    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    div-double/2addr v0, v4

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    .line 670
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 672
    if-nez v0, :cond_a1

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v4

    if-eqz v4, :cond_a1

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_a1

    .line 673
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 676
    :cond_a1
    if-eqz v0, :cond_108

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_108

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double v0, v4, v0

    :goto_b5
    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    .line 681
    :goto_b7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 683
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    .line 684
    invoke-direct {p0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->blockLevelControl(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;J)V

    .line 686
    :cond_cb
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 687
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    .line 688
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 690
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 691
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->setDone:Z

    if-eqz v0, :cond_114

    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->hrEnded:Z

    if-nez v0, :cond_114

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_114

    const/4 v0, 0x1

    .line 692
    :goto_ee
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    .line 693
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->setDone:Z

    .line 694
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    .line 695
    iget-boolean v1, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->hrEnded:Z

    if-eqz v1, :cond_116

    const-string v0, "hr_block_end"

    :goto_fd
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 696
    return-void

    .line 666
    :cond_101
    const/4 v0, 0x0

    goto/16 :goto_40

    .line 667
    :cond_104
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_57

    .line 676
    :cond_108
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_b5

    .line 678
    :cond_10b
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    .line 679
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    goto :goto_b7

    .line 691
    :cond_114
    const/4 v0, 0x0

    goto :goto_ee

    .line 695
    :cond_116
    if-eqz v0, :cond_11b

    const-string v0, "set_done"

    goto :goto_fd

    :cond_11b
    const-string v0, "rest"

    goto :goto_fd
.end method

.method private endBlockSilently(J)V
    .registers 4

    .prologue
    .line 1042
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 1043
    return-void
.end method

.method private finish(J)V
    .registers 6

    .prologue
    .line 1067
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    .line 1068
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    .line 1069
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    :goto_12
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 1070
    const-string v0, "done"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 1071
    return-void

    .line 1069
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    goto :goto_12
.end method

.method private firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I
    .registers 4

    .prologue
    .line 1005
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 1006
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, p1, :cond_1b

    .line 1010
    :goto_1a
    return v1

    .line 1005
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1010
    :cond_1f
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method private fitTau()D
    .registers 19

    .prologue
    .line 768
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

    .line 769
    :cond_13
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 789
    :goto_15
    return-wide v2

    .line 771
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

    .line 772
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v8, v2

    if-gez v2, :cond_36

    .line 773
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    .line 775
    :cond_36
    const-wide/16 v6, 0x0

    .line 776
    const-wide/16 v2, 0x0

    .line 777
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

    .line 778
    const/4 v3, 0x1

    aget-wide v12, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    int-to-double v14, v3

    sub-double/2addr v12, v14

    .line 779
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v12, v14

    if-lez v3, :cond_43

    .line 782
    div-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    .line 783
    const/4 v3, 0x0

    aget-wide v14, v2, v3

    const/4 v3, 0x0

    aget-wide v16, v2, v3

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    .line 784
    const/4 v3, 0x0

    aget-wide v2, v2, v3

    mul-double/2addr v2, v12

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 785
    goto :goto_43

    .line 786
    :cond_75
    const-wide/16 v2, 0x0

    cmpg-double v2, v6, v2

    if-lez v2, :cond_81

    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_84

    .line 787
    :cond_81
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    .line 789
    :cond_84
    neg-double v2, v6

    div-double/2addr v2, v4

    goto :goto_15
.end method

.method private guards(JD)V
    .registers 14

    .prologue
    .line 580
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v2

    .line 581
    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-lez v0, :cond_11c

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    .line 582
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    .line 583
    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v4, :cond_47

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_47

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v4, :cond_47

    .line 584
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 585
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v6, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 586
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v6, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    .line 589
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

    .line 591
    :cond_63
    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v2, v4

    if-lez v4, :cond_11f

    .line 592
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v5, "BAND_LOST"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    const-string v4, "band_lost_cooldown"

    invoke-direct {p0, v4, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 600
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

    .line 601
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 604
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

    .line 606
    :cond_b4
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 607
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 608
    const-string v2, "hr_cap"

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 609
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 610
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 611
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    .line 612
    const-string v2, "hr_cap"

    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 614
    :cond_d2
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_11b

    .line 615
    const-string v2, "hr_cap"

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 616
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

    .line 617
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_105

    .line 618
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 620
    :cond_105
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-nez v0, :cond_11b

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 622
    const-string v0, "can_resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 629
    :cond_11b
    :goto_11b
    return-void

    .line 581
    :cond_11c
    const/4 v0, 0x0

    goto/16 :goto_d

    .line 595
    :cond_11f
    const-wide/16 v4, 0x7530

    cmp-long v4, v2, v4

    if-lez v4, :cond_79

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_79

    .line 596
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 597
    const-string v4, "band_lost_soft"

    invoke-direct {p0, v4, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_79

    .line 625
    :cond_13e
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    goto :goto_11b
.end method

.method private integrate(JD)V
    .registers 14

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 555
    neg-double v0, p3

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    .line 556
    const-wide/16 v0, 0x0

    .line 557
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_5b

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    .line 558
    :goto_1f
    if-eqz v2, :cond_5d

    .line 559
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 560
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 561
    mul-double/2addr v2, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    int-to-double v6, v6

    mul-double/2addr v2, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    int-to-double v6, v6

    mul-double/2addr v2, v6

    mul-double/2addr v2, p3

    .line 562
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr v6, v2

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    .line 563
    iget-boolean v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v6, :cond_4a

    .line 564
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    add-double/2addr v2, v6

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    .line 576
    :cond_4a
    :goto_4a
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    mul-double/2addr v2, v4

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    .line 577
    return-void

    .line 557
    :cond_5b
    const/4 v2, 0x0

    goto :goto_1f

    .line 566
    :cond_5d
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_4a

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAt(J)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 568
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    mul-double/2addr v2, v0

    .line 569
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 570
    mul-double/2addr v2, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    int-to-double v6, v6

    mul-double/2addr v2, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    int-to-double v6, v6

    mul-double/2addr v2, v6

    mul-double/2addr v2, p3

    .line 571
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr v6, v2

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    .line 572
    iget-boolean v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v6, :cond_4a

    .line 573
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    add-double/2addr v2, v6

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    goto :goto_4a
.end method

.method private isActivePauseAt(J)Z
    .registers 12

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v1, :cond_1f

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1f

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_1f

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-gtz v1, :cond_20

    .line 405
    :cond_1f
    :goto_1f
    return v0

    .line 404
    :cond_20
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    sub-long v2, p1, v2

    .line 405
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    int-to-long v4, v1

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1f

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    add-int/2addr v1, v4

    int-to-long v4, v1

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_1f
.end method

.method private isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z
    .registers 4

    .prologue
    .line 954
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

    .line 413
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

    .line 417
    :cond_17
    :goto_17
    return v0

    .line 416
    :cond_18
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    sub-long v2, p1, v2

    .line 417
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

    .line 1046
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    .line 1047
    if-gez v0, :cond_d

    .line 1048
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->finish(J)V

    .line 1064
    :cond_c
    :goto_c
    return-void

    .line 1051
    :cond_d
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ge v1, v0, :cond_c

    .line 1054
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 1055
    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 1056
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 1057
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 1058
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 1059
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_2f

    .line 1060
    :cond_2b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 1062
    :cond_2f
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 1063
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

    .line 842
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    aget v1, v0, v8

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v8

    .line 843
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->budgetHalved:Z

    if-nez v0, :cond_25

    .line 844
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 845
    iput-boolean v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->budgetHalved:Z

    .line 846
    const-string v0, "l1_budget"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 851
    :goto_21
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    .line 852
    return-void

    .line 848
    :cond_25
    const-string v0, "l1_cooldown"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 849
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    goto :goto_21
.end method

.method private lastFatigueDrivenIndex()I
    .registers 4

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_21

    .line 1015
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v0, v2, :cond_1e

    move v0, v1

    .line 1019
    :goto_1d
    return v0

    .line 1014
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1019
    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method private markRestReady(J)V
    .registers 4

    .prologue
    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 734
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 735
    const-string v0, "rest_ready"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 736
    return-void
.end method

.method private nextPeak(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D
    .registers 12

    .prologue
    .line 639
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    if-eqz v0, :cond_3b

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 640
    :goto_a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_3e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 641
    :goto_1c
    iget-wide v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    invoke-static/range {v1 .. v7}, Lcom/isaigu/gymapp/ai/AiPlanner;->afterOn(DLcom/isaigu/gymapp/ai/AiModel$CycleSpec;DD)D

    move-result-wide v1

    .line 642
    iget v0, v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v6

    iget-boolean v7, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    invoke-static/range {v1 .. v9}, Lcom/isaigu/gymapp/ai/AiPlanner;->afterOff(DLcom/isaigu/gymapp/ai/AiModel$CycleSpec;DIZD)D

    move-result-wide v4

    .line 643
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 639
    :cond_3b
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    goto :goto_a

    .line 640
    :cond_3e
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    goto :goto_1c
.end method

.method private phaseOfBlock(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;)Lcom/isaigu/gymapp/ai/AiModel$Phase;
    .registers 6

    .prologue
    .line 793
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

    .line 794
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v2, v3, :cond_8

    .line 798
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
    .line 729
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

    .line 721
    .line 722
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

    .line 723
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

    .line 725
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

    .line 723
    goto :goto_2d

    :cond_3c
    move v1, v2

    .line 725
    goto :goto_39

    :cond_3e
    move v0, v1

    goto :goto_2d
.end method

.method private silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;
    .registers 8

    .prologue
    .line 1095
    new-instance v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 1096
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 1097
    :goto_17
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 1098
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 1099
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 1100
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 1101
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 1102
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 1103
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 1104
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    .line 1105
    return-object v1

    .line 1096
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

    .line 1074
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_38

    .line 1075
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

    .line 1076
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    .line 1078
    :cond_34
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 1080
    :cond_38
    return-void
.end method

.method private tickRest(J)V
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 699
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v2, :cond_7

    .line 718
    :cond_6
    :goto_6
    return-void

    .line 702
    :cond_7
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v2, v4

    .line 703
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->restRecovered()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_47

    move v2, v0

    .line 704
    :goto_20
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_49

    .line 705
    :goto_26
    if-nez v2, :cond_2a

    if-eqz v0, :cond_6

    .line 708
    :cond_2a
    if-nez v2, :cond_3b

    .line 709
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    .line 710
    const-string v0, "rest_timeout"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 712
    :cond_3b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 713
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->markRestReady(J)V

    goto :goto_6

    :cond_47
    move v2, v1

    .line 703
    goto :goto_20

    :cond_49
    move v0, v1

    .line 704
    goto :goto_26

    .line 716
    :cond_4b
    invoke-direct {p0, v4, v5, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->closeRestStats(DJ)V

    .line 717
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    goto :goto_6
.end method

.method private trackCorridor(D)V
    .registers 8

    .prologue
    .line 1083
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

    .line 1092
    :cond_20
    :goto_20
    return-void

    .line 1086
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    .line 1087
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    .line 1088
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

    .line 1089
    :goto_4d
    if-eqz v0, :cond_20

    .line 1090
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    goto :goto_20

    .line 1088
    :cond_55
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method private useHrControl()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 950
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

    .line 372
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

    .line 387
    :cond_18
    :goto_18
    return-void

    .line 375
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    if-le p1, v0, :cond_47

    .line 376
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

    .line 377
    const-string v0, "cr10_down"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 385
    :goto_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 386
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    goto :goto_18

    .line 378
    :cond_47
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    if-ge p1, v0, :cond_69

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_69

    .line 380
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    mul-double/2addr v0, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    .line 381
    const-string v0, "cr10_up"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_3e

    .line 383
    :cond_69
    const-string v0, "cr10_ok"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_3e
.end method

.method public cHr()D
    .registers 11

    .prologue
    const-wide/16 v0, 0x0

    .line 941
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-nez v2, :cond_9

    .line 946
    :goto_8
    return-wide v0

    .line 944
    :cond_9
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 945
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

    .line 946
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

.method public canIncrease()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 245
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    const-wide v4, 0x3feffffde7210be9L    # 0.999999

    cmpl-double v1, v2, v4

    if-gez v1, :cond_18

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v2, :cond_19

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v2, :cond_19

    .line 252
    :cond_18
    :goto_18
    return v0

    .line 248
    :cond_19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v1, v2, :cond_18

    .line 251
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    .line 252
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_47

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_47

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v2

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_18

    :cond_47
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public canReduce()Z
    .registers 5

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    const-wide v2, 0x3fb999aa60913a50L    # 0.100001

    cmpl-double v0, v0, v2

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public canResume()Z
    .registers 3

    .prologue
    .line 1188
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

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-nez v0, :cond_12

    :cond_10
    move v0, v2

    .line 332
    :goto_11
    return v0

    .line 325
    :cond_12
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3d

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    div-double/2addr v0, v6

    .line 326
    :goto_20
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-direct {p0, v4, v5, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->closeRestStats(DJ)V

    .line 327
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->applyIdle(DJ)V

    .line 328
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 329
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 330
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 331
    const-string v0, "continue"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 332
    const/4 v0, 0x1

    goto :goto_11

    .line 325
    :cond_3d
    const-wide/16 v0, 0x0

    goto :goto_20
.end method

.method public endSet()V
    .registers 3

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_d

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->setDone:Z

    .line 224
    :cond_d
    return-void
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
    .line 1276
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    return-object v0
.end method

.method public getCapHits()I
    .registers 2

    .prologue
    .line 1288
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    return v0
.end method

.method public getCeilingScale()D
    .registers 3

    .prologue
    .line 1248
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    return-wide v0
.end method

.method public getCorridorShare()D
    .registers 5

    .prologue
    .line 1292
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
    .line 1256
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    return-object v0
.end method

.method public getCurrentFrac()D
    .registers 3

    .prologue
    .line 1252
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
    .line 1204
    const-wide/16 v2, 0x0

    .line 1205
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

    .line 1206
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 1205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1208
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
    .line 1312
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    return-wide v0
.end method

.method public getFatigue()D
    .registers 3

    .prologue
    .line 1224
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    return-wide v0
.end method

.method public getFatigueMax()D
    .registers 3

    .prologue
    .line 1228
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    return-wide v0
.end method

.method public getFatigueRec()D
    .registers 3

    .prologue
    .line 1172
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
    .line 1280
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    return-object v0
.end method

.method public getHrAgeMs(J)J
    .registers 6

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHrFilter()Lcom/isaigu/gymapp/ai/AiHrFilter;
    .registers 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    return-object v0
.end method

.method public getHrS()D
    .registers 3

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHrr60()D
    .registers 3

    .prologue
    .line 1300
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    return-wide v0
.end method

.method public getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 2

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    return-object v0
.end method

.method public getLCount(I)I
    .registers 3

    .prologue
    .line 1284
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
    .line 1264
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActionMs()J
    .registers 3

    .prologue
    .line 1268
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
    .line 1272
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    return-object v0
.end method

.method public getPauseReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    return-object v0
.end method

.method public getPhaseElapsedS()D
    .registers 3

    .prologue
    .line 1200
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    return-wide v0
.end method

.method public getPhaseIndex()I
    .registers 2

    .prologue
    .line 1196
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    return v0
.end method

.method public getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 2

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    return-object v0
.end method

.method public getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;
    .registers 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    return-object v0
.end method

.method public getQBudget()D
    .registers 3

    .prologue
    .line 1236
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    return-wide v0
.end method

.method public getQUsed()D
    .registers 3

    .prologue
    .line 1232
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    return-wide v0
.end method

.method public getRecoveryRemainingMs(J)J
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    .line 1304
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
    .line 1176
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    return-wide v0
.end method

.method public getRestMinS()D
    .registers 3

    .prologue
    .line 1168
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    return-wide v0
.end method

.method public getRestOverS(J)D
    .registers 8

    .prologue
    .line 1142
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

    .line 1150
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v0, :cond_e

    :cond_c
    move-wide v0, v2

    .line 1157
    :goto_d
    return-wide v0

    .line 1153
    :cond_e
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestS(J)D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1154
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3f

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpl-double v4, v4, v2

    if-lez v4, :cond_3f

    .line 1155
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

    .line 1157
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
    .line 1137
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
    .line 1296
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    return-wide v0
.end method

.method public getStartMs()J
    .registers 3

    .prologue
    .line 1308
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    return-wide v0
.end method

.method public getState()Lcom/isaigu/gymapp/ai/AiEngine$State;
    .registers 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    return-object v0
.end method

.method public getTotalIdleS()D
    .registers 3

    .prologue
    .line 1180
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    return-wide v0
.end method

.method public getU()D
    .registers 3

    .prologue
    .line 1240
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    return-wide v0
.end method

.method public getUUser()D
    .registers 3

    .prologue
    .line 1244
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    return-wide v0
.end method

.method public getX()D
    .registers 5

    .prologue
    .line 1220
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

.method public increase(J)V
    .registers 10

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v0

    if-nez v0, :cond_7

    .line 241
    :goto_6
    return-void

    .line 239
    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 240
    const-string v0, "increase"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_6
.end method

.method public isActivePause(J)Z
    .registers 6

    .prologue
    .line 409
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAt(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isActivePauseAvailable()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseAvailable:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_15

    :cond_13
    move v0, v2

    .line 271
    :goto_14
    return v0

    .line 265
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    move v1, v0

    :goto_18
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 267
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v3, :cond_42

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 268
    :cond_40
    const/4 v0, 0x1

    goto :goto_14

    .line 265
    :cond_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    :cond_46
    move v0, v2

    .line 271
    goto :goto_14
.end method

.method public isActivePauseOn()Z
    .registers 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    return v0
.end method

.method public isFrozen()Z
    .registers 2

    .prologue
    .line 1320
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    return v0
.end method

.method public isInBlock()Z
    .registers 2

    .prologue
    .line 1316
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    return v0
.end method

.method public isManualContinue()Z
    .registers 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    return v0
.end method

.method public isRestHrOk()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 1161
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

    .line 1164
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
    .line 1129
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
    .line 1260
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
    .registers 22

    .prologue
    .line 424
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v4, v5, :cond_13

    .line 426
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    .line 495
    :goto_12
    return-object v4

    .line 428
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    .line 430
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    iget v5, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v8, v5

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_20e

    .line 431
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->advancePhase(J)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 432
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    goto :goto_12

    .line 434
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    move-object v11, v4

    .line 436
    :goto_32
    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v4, v5, :cond_41

    .line 437
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-nez v4, :cond_50

    .line 438
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->beginBlock(J)V

    .line 445
    :cond_41
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v11, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->checkCheckpoint(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 446
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    goto :goto_12

    .line 439
    :cond_50
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_92

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/isaigu/gymapp/ai/AiEngine;->nextPeak(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v4

    :goto_60
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_8a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-nez v4, :cond_8a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->setDone:Z

    if-nez v4, :cond_8a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_41

    .line 441
    :cond_8a
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlock(J)V

    .line 442
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    goto :goto_12

    .line 439
    :cond_92
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    goto :goto_60

    .line 448
    :cond_97
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v11, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->controlPerCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)V

    .line 449
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-eqz v4, :cond_b3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v4, :cond_b3

    .line 450
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlock(J)V

    .line 451
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    goto/16 :goto_12

    .line 454
    :cond_b3
    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_1c4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    if-eqz v4, :cond_1c4

    iget-object v8, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 455
    :goto_bf
    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_ce

    .line 456
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    if-nez v4, :cond_1c8

    const/4 v4, 0x1

    :goto_ca
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 458
    :cond_ce
    new-instance v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v12}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 459
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 460
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 461
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 462
    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_1cb

    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-ne v8, v4, :cond_1cb

    const/4 v4, 0x1

    :goto_e8
    iput-boolean v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    .line 463
    iget-boolean v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    if-eqz v4, :cond_1ce

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v4

    .line 464
    :goto_f4
    iget v6, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    .line 465
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v7

    if-eqz v7, :cond_12a

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v14, v16

    if-lez v7, :cond_12a

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v7

    if-eqz v7, :cond_12a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v7

    if-nez v7, :cond_12a

    .line 466
    iget v6, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    mul-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 468
    :cond_12a
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v6

    iput v6, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 469
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->arbiter(Lcom/isaigu/gymapp/ai/AiModel$Phase;D)D

    move-result-wide v4

    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 470
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    if-eqz v4, :cond_14c

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 471
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    iput v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 472
    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    .line 474
    :cond_14c
    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v4, v5, :cond_177

    iget-wide v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_177

    .line 476
    iget-wide v14, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    iget v9, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    iget v10, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-lez v10, :cond_1d2

    const/4 v10, 0x1

    :goto_16d
    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/ai/AiPlanner;->continuousCap(DDLcom/isaigu/gymapp/ai/AiModel$CycleSpec;IZ)D

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 478
    :cond_177
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lcom/isaigu/gymapp/ai/AiEngine;->applyRamps(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 481
    iget-wide v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    invoke-static {v8, v4, v5}, Lcom/isaigu/gymapp/ai/AiPlanner;->cycleDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;D)D

    move-result-wide v6

    .line 482
    iget v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-lez v4, :cond_1d4

    iget-wide v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    iget v9, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    invoke-static {v8, v4, v5, v9}, Lcom/isaigu/gymapp/ai/AiPlanner;->pauseDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;DI)D

    move-result-wide v4

    :goto_18e
    add-double/2addr v4, v6

    .line 483
    iget-object v6, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v6, v7, :cond_1d7

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qCool:D

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1d7

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v5, "BUDGET"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    const-string v4, "budget_cooldown"

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 486
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 487
    invoke-virtual/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    goto/16 :goto_12

    .line 454
    :cond_1c4
    iget-object v8, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    goto/16 :goto_bf

    .line 456
    :cond_1c8
    const/4 v4, 0x0

    goto/16 :goto_ca

    .line 462
    :cond_1cb
    const/4 v4, 0x0

    goto/16 :goto_e8

    .line 463
    :cond_1ce
    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    goto/16 :goto_f4

    .line 476
    :cond_1d2
    const/4 v10, 0x0

    goto :goto_16d

    .line 482
    :cond_1d4
    const-wide/16 v4, 0x0

    goto :goto_18e

    .line 489
    :cond_1d7
    iget-wide v4, v12, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1fd

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1fd

    .line 490
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    const-wide v10, 0x3fb999999999999aL    # 0.1

    add-double/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 492
    :cond_1fd
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 493
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 494
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    move-object v4, v12

    .line 495
    goto/16 :goto_12

    :cond_20e
    move-object v11, v4

    goto/16 :goto_32
.end method

.method public onHr(JI)V
    .registers 13

    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result v0

    .line 393
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->onSample(JIZ)Z

    .line 394
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3a

    .line 395
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

    .line 397
    :cond_3a
    return-void
.end method

.method public phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;
    .registers 4

    .prologue
    .line 1192
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

    .line 227
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    sub-double/2addr v0, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 228
    const-string v0, "reduce"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 229
    return-void
.end method

.method public reduceTo(DJ)V
    .registers 16

    .prologue
    .line 304
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

    .line 305
    const-string v0, "reduce"

    invoke-direct {p0, v0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 306
    return-void
.end method

.method public resume(J)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_41

    .line 349
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 350
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3e

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 351
    :goto_20
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 352
    const-string v2, "resume"

    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 353
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3a

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_3a

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v2, :cond_3a

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->beginBlock(J)V

    .line 357
    :cond_3a
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->applyIdle(DJ)V

    .line 368
    :cond_3d
    :goto_3d
    return-void

    .line 350
    :cond_3e
    const-wide/16 v0, 0x0

    goto :goto_20

    .line 358
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_3d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-eqz v0, :cond_3d

    .line 359
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 360
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    .line 361
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 362
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 363
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 364
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 365
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 366
    const-string v0, "resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_3d
.end method

.method public setActivePause(ZJ)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    .line 280
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    if-eq p1, v0, :cond_e

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 300
    :cond_e
    :goto_e
    return-void

    .line 283
    :cond_f
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOn:D

    move-wide v2, v0

    .line 284
    :goto_18
    if-eqz p1, :cond_66

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOn:D

    .line 285
    :goto_1e
    cmpl-double v4, v2, v6

    if-lez v4, :cond_2c

    cmpl-double v4, v0, v6

    if-lez v4, :cond_2c

    .line 286
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 288
    :cond_2c
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_58

    .line 291
    if-eqz p1, :cond_6b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_6b

    .line 292
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 293
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    .line 299
    :cond_58
    :goto_58
    if-eqz p1, :cond_77

    const-string v0, "pause_on"

    :goto_5c
    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_e

    .line 283
    :cond_60
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOff:D

    move-wide v2, v0

    goto :goto_18

    .line 284
    :cond_66
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOff:D

    goto :goto_1e

    .line 294
    :cond_6b
    if-nez p1, :cond_58

    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 296
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    goto :goto_58

    .line 299
    :cond_77
    const-string v0, "pause_off"

    goto :goto_5c
.end method

.method public start(J)V
    .registers 6

    .prologue
    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_7

    .line 206
    :goto_6
    return-void

    .line 197
    :cond_7
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    .line 198
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 199
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_25

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->seed(IJ)V

    .line 205
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
    .line 210
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_d

    .line 216
    :cond_c
    :goto_c
    return-void

    .line 213
    :cond_d
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    .line 214
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 215
    const-string v0, "stop"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_c
.end method

.method public tick(J)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 501
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_b

    .line 502
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 504
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

    .line 505
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 506
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v4, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v4, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v4, :cond_35

    .line 551
    :cond_34
    :goto_34
    return-void

    .line 509
    :cond_35
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v4, :cond_3f

    .line 510
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->tickRecovery(J)V

    goto :goto_34

    .line 513
    :cond_3f
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->integrate(JD)V

    .line 514
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->guards(JD)V

    .line 516
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v4, :cond_ec

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v0, :cond_ec

    const/4 v0, 0x1

    .line 517
    :goto_50
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v4, v5, :cond_5e

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v4, v5, :cond_66

    if-nez v0, :cond_66

    .line 519
    :cond_5e
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 520
    invoke-direct {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->trackCorridor(D)V

    .line 522
    :cond_66
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v2, :cond_9a

    .line 523
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->tickRest(J)V

    .line 524
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_9a

    .line 525
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 527
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 528
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-nez v0, :cond_9a

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->restMinReached(J)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->markRestReady(J)V

    .line 538
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

    .line 540
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 541
    const-string v0, "checkpoint"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 542
    const-string v0, "checkpoint_timeout"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 545
    :cond_bf
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_34

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_34

    .line 546
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

    .line 547
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_34

    .line 548
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    goto/16 :goto_34

    :cond_ec
    move v0, v1

    .line 516
    goto/16 :goto_50

    .line 533
    :cond_ef
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 534
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    goto :goto_9a
.end method

.method public userPause(J)V
    .registers 6

    .prologue
    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_1b

    .line 310
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 311
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 312
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 313
    const-string v0, "user_pause"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 315
    :cond_1b
    return-void
.end method
