.class public final Lcom/isaigu/gymapp/ai/AiEngine;
.super Ljava/lang/Object;
.source "AiEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;,
        Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;,
        Lcom/isaigu/gymapp/ai/AiEngine$State;
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
            "Ljava/util/Map<",
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
            "Ljava/util/List<",
            "[D>;"
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
            "Ljava/util/Map<",
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
    .registers 12

    .line 179
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
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 102
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    .line 105
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    .line 114
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

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
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 124
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 129
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 130
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    .line 133
    const/4 v6, 0x6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    .line 138
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    .line 139
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 141
    const-wide/high16 v6, -0x3fdc000000000000L    # -10.0

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 143
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    .line 147
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 148
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 149
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    .line 155
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    .line 159
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    .line 171
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    .line 172
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    .line 175
    const-string v0, "start"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    .line 180
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 181
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 182
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 183
    iget-wide v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qBudget:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 184
    iget-boolean p1, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseOn:Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    .line 185
    iget-wide v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    .line 186
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    iget-object p2, p2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    return-void
.end method

.method private action(Ljava/lang/String;J)V
    .registers 11

    .line 1078
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    .line 1079
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastActionMs:J

    .line 1080
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_18

    sub-long/2addr p2, v2

    const-wide/16 v2, 0x3e8

    div-long v4, p2, v2

    :cond_18
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "s "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xc8

    if-le p1, p2, :cond_3a

    .line 1082
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1084
    :cond_3a
    return-void
.end method

.method private advancePhase(J)Z
    .registers 8

    .line 994
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v0, :cond_7

    .line 995
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockSilently(J)V

    .line 997
    :cond_7
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 998
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 999
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 1000
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 1001
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    iput-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 1002
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2a

    .line 1003
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->finish(J)V

    .line 1004
    return v2

    .line 1006
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phase:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 1007
    return v1
.end method

.method private applyIdle(DJ)V
    .registers 13

    .line 328
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_7

    .line 329
    return-void

    .line 331
    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    .line 332
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x4082c00000000000L    # 600.0

    div-double/2addr p1, v2

    sub-double v2, v0, p1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide p1

    .line 333
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 334
    const-string p1, "reentry"

    invoke-direct {p0, p1, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 335
    return-void
.end method

.method private applyRamps(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V
    .registers 7

    .line 928
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_1a

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_2e

    .line 931
    :cond_1a
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result p2

    if-eqz p2, :cond_29

    .line 932
    const/16 p2, 0x190

    iput p2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 933
    const/16 p2, 0x12c

    iput p2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    goto :goto_34

    .line 935
    :cond_29
    iput v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 936
    iput v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    goto :goto_34

    .line 929
    :cond_2e
    :goto_2e
    iput v2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 930
    const/16 p2, 0x1f4

    iput p2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 938
    :goto_34
    iget p2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    mul-int/lit16 p2, p2, 0x3e8

    add-int/lit16 p2, p2, -0xc8

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 939
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    iget v1, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    add-int/2addr v0, v1

    if-le v0, p2, :cond_4e

    .line 940
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    sub-int/2addr p2, v0

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 942
    :cond_4e
    return-void
.end method

.method private arbiter(Lcom/isaigu/gymapp/ai/AiModel$Phase;D)D
    .registers 12

    .line 896
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    if-lez v0, :cond_b

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_d

    :cond_b
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 897
    :goto_d
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiAt(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    mul-double v0, v0, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 898
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 899
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 901
    :cond_29
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    mul-double v0, v0, v2

    .line 902
    mul-double v0, v0, p2

    iget-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    mul-double v0, v0, p1

    .line 903
    iget-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    mul-double p1, p1, v0

    .line 904
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->cHr()D

    move-result-wide v2

    .line 905
    sub-double p1, v0, p1

    mul-double v2, v2, p1

    sub-double p1, v0, v2

    .line 906
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    mul-double v2, p1, v0

    .line 907
    const-wide/16 v4, 0x0

    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, p1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method private beginBlock(J)V
    .registers 6

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 621
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    .line 622
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    .line 623
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    .line 624
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    .line 625
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 626
    cmpl-double v2, v0, p1

    if-lez v2, :cond_1e

    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide p1

    goto :goto_20

    :cond_1e
    const-wide/high16 p1, -0x3fdc000000000000L    # -10.0

    :goto_20
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 627
    return-void
.end method

.method private blockLevelControl(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;J)V
    .registers 22

    .line 774
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    const-wide/16 v5, 0x0

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const/4 v9, 0x2

    if-ne v4, v9, :cond_40

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v4, :cond_40

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-nez v4, :cond_40

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    cmpg-double v4, v10, v7

    if-gez v4, :cond_40

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v14, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    mul-double v14, v14, v12

    cmpl-double v4, v10, v14

    if-ltz v4, :cond_40

    .line 776
    iput-wide v5, v0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    .line 777
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v10, "NON_RESPONDER"

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    const-string v4, "non_responder"

    invoke-direct {v0, v4, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 780
    :cond_40
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v4

    if-nez v4, :cond_47

    .line 781
    return-void

    .line 784
    :cond_47
    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v12, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    sub-double/2addr v12, v7

    const/4 v4, 0x0

    const/4 v7, 0x1

    cmpl-double v8, v10, v12

    if-ltz v8, :cond_56

    const/4 v8, 0x1

    goto :goto_57

    :cond_56
    const/4 v8, 0x0

    .line 785
    :goto_57
    iget-wide v10, v1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_aa

    if-eqz v8, :cond_aa

    .line 786
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    iget-wide v14, v1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    mul-double v5, v5, v12

    sub-double v16, v16, v5

    mul-double v10, v10, v16

    iput-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    .line 787
    iget-wide v5, v1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide v10, 0x3ff0cccccccccccdL    # 1.05

    cmpl-double v8, v5, v10

    if-lez v8, :cond_90

    .line 788
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    aget v6, v5, v9

    add-int/2addr v6, v7

    aput v6, v5, v9

    .line 789
    const-string v5, "l2_shorter_blocks"

    invoke-direct {v0, v5, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 791
    :cond_90
    iget-wide v5, v1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide v10, 0x3ff6666666666666L    # 1.4

    cmpl-double v1, v5, v10

    if-lez v1, :cond_a1

    .line 792
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    goto :goto_a3

    .line 794
    :cond_a1
    iput v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    .line 796
    :goto_a3
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    if-lt v1, v9, :cond_aa

    .line 797
    invoke-direct {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->l1(J)V

    .line 801
    :cond_aa
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_f6

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    const-wide/high16 v6, -0x3fec000000000000L    # -5.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_f6

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    cmpg-double v1, v4, v6

    if-gez v1, :cond_f6

    .line 802
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide v6, 0x3fe999999999999aL    # 0.8

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    mul-double v8, v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    .line 804
    iget-object v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_f1

    .line 805
    iget-object v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 807
    :cond_f1
    const-string v1, "below_corridor"

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 809
    :cond_f6
    return-void
.end method

.method private checkCheckpoint(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)Z
    .registers 19

    .line 947
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_d

    .line 948
    return v5

    .line 950
    :cond_d
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/ai/AiEngine;->firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v4

    .line 951
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->lastFatigueDrivenIndex()I

    move-result v6

    .line 952
    nop

    .line 953
    iget v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v8, v4, :cond_26

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aget-boolean v8, v8, v5

    if-nez v8, :cond_26

    .line 954
    const/4 v7, 0x0

    goto :goto_5c

    .line 955
    :cond_26
    iget v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ne v8, v4, :cond_3f

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aget-boolean v4, v4, v10

    if-nez v4, :cond_3f

    iget-wide v11, v0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    iget v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v7, v4

    mul-double v7, v7, v13

    cmpl-double v4, v11, v7

    if-ltz v4, :cond_3f

    .line 957
    const/4 v7, 0x1

    goto :goto_5c

    .line 958
    :cond_3f
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ne v4, v6, :cond_5b

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aget-boolean v4, v4, v9

    if-nez v4, :cond_5b

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    const-wide v11, 0x3feb333333333333L    # 0.85

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v13, v1

    mul-double v13, v13, v11

    cmpl-double v1, v6, v13

    if-ltz v1, :cond_5b

    .line 960
    const/4 v7, 0x2

    goto :goto_5c

    .line 962
    :cond_5b
    const/4 v7, -0x1

    :goto_5c
    if-gez v7, :cond_5f

    .line 963
    return v5

    .line 965
    :cond_5f
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aput-boolean v10, v1, v7

    .line 966
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 967
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 968
    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointSinceMs:J

    .line 969
    const-string v1, "checkpoint"

    invoke-direct {p0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 970
    return v10
.end method

.method private static clamp(DDD)D
    .registers 6

    .line 1087
    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private closeRestStats(DJ)V
    .registers 12

    .line 710
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 711
    return-void

    .line 713
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 714
    iput-wide p1, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tRestS:D

    .line 715
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->fitTau()D

    move-result-wide p1

    iput-wide p1, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    .line 716
    iget-wide p1, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_a1

    iget-wide p1, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    const-wide/16 v3, 0x0

    cmpl-double v1, p1, v3

    if-lez v1, :cond_a1

    .line 717
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->phaseOfBlock(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;)Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object p1

    iget-object p1, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 718
    iget-object p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    .line 719
    if-nez p2, :cond_50

    .line 720
    iget-object p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    iget-wide v3, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-wide p1, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 723
    :cond_50
    iget-wide v3, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    div-double/2addr v3, p1

    iput-wide v3, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    .line 724
    iget-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v3, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    const-wide v5, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v3, v5

    cmpl-double v1, p1, v3

    if-ltz v1, :cond_6b

    const/4 p1, 0x1

    goto :goto_6c

    :cond_6b
    const/4 p1, 0x0

    .line 725
    :goto_6c
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result p2

    if-eqz p2, :cond_8d

    if-eqz p1, :cond_8d

    iget-wide v3, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    const-wide v5, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double p2, v3, v5

    if-lez p2, :cond_8d

    .line 726
    iget-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    mul-double v3, v3, v5

    iput-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 727
    iget-object p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v1, 0x2

    aget v3, p2, v1

    add-int/2addr v3, v2

    aput v3, p2, v1

    .line 729
    :cond_8d
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result p2

    if-eqz p2, :cond_a0

    if-eqz p1, :cond_a0

    iget-wide p1, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, p1, v0

    if-lez v2, :cond_a0

    .line 730
    invoke-direct {p0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->l1(J)V

    .line 732
    :cond_a0
    goto :goto_a5

    .line 733
    :cond_a1
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    iput-wide p1, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    .line 735
    :goto_a5
    return-void
.end method

.method private controlPerCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)V
    .registers 29

    .line 827
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v4

    if-eqz v4, :cond_156

    invoke-direct/range {p0 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v4

    if-eqz v4, :cond_156

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v4, :cond_156

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_24

    goto/16 :goto_156

    .line 830
    :cond_24
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v4

    .line 831
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    sub-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 832
    const/4 v8, 0x2

    const-wide v9, 0x3f947ae147ae147bL    # 0.02

    const/4 v11, 0x0

    const/4 v12, 0x1

    cmpl-double v13, v4, v9

    if-lez v13, :cond_4a

    .line 833
    iput-boolean v12, v0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    .line 834
    iput v11, v0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    goto :goto_57

    .line 835
    :cond_4a
    cmpl-double v13, v4, v6

    if-nez v13, :cond_57

    .line 836
    iget v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    add-int/2addr v13, v12

    iput v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    .line 837
    if-lt v13, v8, :cond_57

    .line 838
    iput-boolean v11, v0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    .line 841
    :cond_57
    :goto_57
    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v13, v13, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v13, v9

    if-gez v15, :cond_62

    .line 842
    return-void

    .line 846
    :cond_62
    iget-boolean v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    if-eqz v13, :cond_7d

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v13}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v13

    if-nez v13, :cond_7d

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    mul-double v13, v13, v4

    add-double v15, v13, v9

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v19, 0x4004000000000000L    # 2.5

    invoke-static/range {v15 .. v20}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v13

    goto :goto_7e

    :cond_7d
    move-wide v13, v9

    .line 847
    :goto_7e
    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    const-wide v17, 0x3e112e0be826d695L    # 1.0E-9

    add-double v6, v6, v17

    cmpl-double v19, v13, v6

    if-lez v19, :cond_99

    .line 848
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v7, 0x3

    aget v19, v6, v7

    add-int/lit8 v19, v19, 0x1

    aput v19, v6, v7

    .line 849
    const-string v6, "l3_longer_pause"

    invoke-direct {v0, v6, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 851
    :cond_99
    iput-wide v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 852
    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v6, :cond_d6

    .line 853
    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 854
    iget-boolean v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    if-eqz v13, :cond_b8

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    mul-double v13, v13, v4

    sub-double v13, v9, v13

    mul-double v19, v6, v13

    const-wide/16 v21, 0x0

    move-wide/from16 v23, v6

    invoke-static/range {v19 .. v24}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v6

    goto :goto_bc

    :cond_b8
    invoke-direct/range {p0 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v6

    .line 855
    :goto_bc
    invoke-direct/range {p0 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v13

    sub-double v13, v13, v17

    cmpg-double v17, v6, v13

    if-gez v17, :cond_d4

    .line 856
    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v14, 0x4

    aget v17, v13, v14

    add-int/lit8 v17, v17, 0x1

    aput v17, v13, v14

    .line 857
    const-string v13, "l4_softer_b"

    invoke-direct {v0, v13, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 859
    :cond_d4
    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 861
    :cond_d6
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v6

    const-wide v13, 0x3fa999999999999aL    # 0.05

    if-eqz v6, :cond_f5

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v6, :cond_f5

    cmpl-double v6, v4, v13

    if-lez v6, :cond_f5

    .line 862
    iget v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    add-int/2addr v6, v12

    iput v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    if-lt v6, v12, :cond_f7

    .line 863
    iput-boolean v12, v0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    goto :goto_f7

    .line 866
    :cond_f5
    iput v11, v0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    .line 868
    :cond_f7
    :goto_f7
    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v1, v6, :cond_108

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v1

    if-eqz v1, :cond_106

    goto :goto_108

    :cond_106
    const/4 v1, 0x0

    goto :goto_109

    :cond_108
    :goto_108
    const/4 v1, 0x1

    .line 869
    :goto_109
    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v17, v4, v6

    if-lez v17, :cond_13b

    .line 870
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    add-int/2addr v4, v12

    iput v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    .line 871
    if-lt v4, v8, :cond_155

    if-eqz v1, :cond_155

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide v6, 0x3fe3333333333333L    # 0.6

    cmpl-double v1, v4, v6

    if-lez v1, :cond_155

    .line 872
    sub-double/2addr v4, v13

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    .line 873
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v4, 0x5

    aget v5, v1, v4

    add-int/2addr v5, v12

    aput v5, v1, v4

    .line 874
    const-string v1, "u_down"

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_155

    .line 877
    :cond_13b
    iput v11, v0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    .line 878
    const-wide/16 v1, 0x0

    cmpl-double v3, v4, v1

    if-nez v3, :cond_155

    iget-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    cmpg-double v3, v1, v9

    if-gez v3, :cond_155

    .line 879
    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    add-double/2addr v1, v3

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    .line 882
    :cond_155
    :goto_155
    return-void

    .line 828
    :cond_156
    :goto_156
    return-void
.end method

.method private currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D
    .registers 7

    .line 885
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-nez v0, :cond_7

    .line 886
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 888
    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_15

    .line 889
    iget-object p1, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 891
    :cond_15
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    return-wide v0
.end method

.method private endBlock(J)V
    .registers 21

    .line 630
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    .line 632
    new-instance v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;-><init>()V

    .line 633
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    .line 634
    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    iput-object v6, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 635
    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    iput-wide v8, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->startMs:J

    .line 636
    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    sub-long v8, v1, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    iput-wide v8, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tBlockS:D

    .line 637
    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    iput-wide v8, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    .line 638
    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iput-wide v8, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->fEnd:D

    .line 639
    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-eqz v6, :cond_45

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    cmpg-double v6, v8, v10

    if-gez v6, :cond_45

    const/4 v6, 0x1

    goto :goto_46

    :cond_45
    const/4 v6, 0x0

    :goto_46
    iput-boolean v6, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->hrEnded:Z

    .line 640
    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v12, 0x0

    cmpl-double v6, v8, v12

    if-lez v6, :cond_5a

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    cmpl-double v6, v14, v12

    if-lez v6, :cond_5a

    sub-double/2addr v14, v8

    goto :goto_5b

    :cond_5a
    move-wide v14, v10

    :goto_5b
    iput-wide v14, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    .line 641
    iget-wide v8, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    cmpl-double v6, v8, v12

    if-lez v6, :cond_b7

    iget-wide v8, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_b7

    .line 642
    iget-wide v8, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    iget-wide v14, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v14, v14, v16

    div-double/2addr v8, v14

    iput-wide v8, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    .line 643
    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 644
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 645
    if-nez v8, :cond_a2

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v9

    if-eqz v9, :cond_a2

    iget-wide v14, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    cmpl-double v9, v14, v12

    if-lez v9, :cond_a2

    .line 646
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    iget-wide v14, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-wide v8, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 649
    :cond_a2
    if-eqz v8, :cond_b4

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpl-double v6, v14, v12

    if-lez v6, :cond_b4

    iget-wide v9, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    div-double v10, v9, v11

    :cond_b4
    iput-wide v10, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    .line 650
    goto :goto_bb

    .line 651
    :cond_b7
    iput-wide v10, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    .line 652
    iput-wide v10, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    .line 654
    :goto_bb
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 656
    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    .line 657
    invoke-direct {v0, v5, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->blockLevelControl(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;J)V

    .line 659
    :cond_ce
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 660
    iput-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    .line 661
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 662
    iput-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 663
    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 664
    iput-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    .line 665
    iput v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    .line 666
    iget-boolean v3, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->hrEnded:Z

    if-eqz v3, :cond_ea

    const-string v3, "hr_block_end"

    goto :goto_ec

    :cond_ea
    const-string v3, "rest"

    :goto_ec
    invoke-direct {v0, v3, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 667
    return-void
.end method

.method private endBlockSilently(J)V
    .registers 3

    .line 1011
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 1012
    return-void
.end method

.method private finish(J)V
    .registers 5

    .line 1036
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    .line 1037
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    .line 1038
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    goto :goto_15

    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    :goto_15
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 1039
    const-string v0, "done"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 1040
    return-void
.end method

.method private firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I
    .registers 4

    .line 974
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 975
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v1, p1, :cond_1a

    .line 976
    return v0

    .line 974
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 979
    :cond_1d
    const/4 p1, -0x1

    return p1
.end method

.method private fitTau()D
    .registers 20

    .line 739
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/4 v4, 0x5

    if-lt v1, v4, :cond_7c

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    if-gtz v1, :cond_15

    move-wide v1, v2

    goto :goto_7d

    .line 742
    :cond_15
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    int-to-double v8, v1

    sub-double/2addr v6, v8

    .line 743
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpg-double v1, v6, v8

    if-gez v1, :cond_2e

    .line 744
    return-wide v2

    .line 746
    :cond_2e
    nop

    .line 747
    nop

    .line 748
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v8, 0x0

    move-wide v10, v8

    move-wide v12, v10

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [D

    .line 749
    aget-wide v15, v14, v5

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    int-to-double v2, v5

    sub-double/2addr v15, v2

    .line 750
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v15, v2

    if-gtz v5, :cond_58

    .line 751
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/4 v5, 0x1

    goto :goto_3a

    .line 753
    :cond_58
    div-double/2addr v15, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 754
    aget-wide v15, v14, v4

    aget-wide v17, v14, v4

    mul-double v15, v15, v17

    add-double/2addr v10, v15

    .line 755
    aget-wide v15, v14, v4

    mul-double v15, v15, v2

    add-double/2addr v12, v15

    .line 756
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/4 v5, 0x1

    goto :goto_3a

    .line 757
    :cond_6d
    cmpg-double v1, v10, v8

    if-lez v1, :cond_79

    cmpl-double v1, v12, v8

    if-ltz v1, :cond_76

    goto :goto_79

    .line 760
    :cond_76
    neg-double v1, v10

    div-double/2addr v1, v12

    return-wide v1

    .line 758
    :cond_79
    :goto_79
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1

    .line 739
    :cond_7c
    move-wide v1, v2

    .line 740
    :goto_7d
    return-wide v1
.end method

.method private guards(JD)V
    .registers 20

    .line 566
    move-object v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v3, v1, v2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v3

    .line 567
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x2710

    cmp-long v9, v3, v7

    if-lez v9, :cond_13

    const/4 v7, 0x1

    goto :goto_14

    :cond_13
    const/4 v7, 0x0

    :goto_14
    iput-boolean v7, v0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    .line 568
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v7

    .line 569
    iget-boolean v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_4e

    cmpl-double v10, v7, v11

    if-lez v10, :cond_4e

    iget-boolean v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v10, :cond_4e

    .line 570
    iget-wide v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    iput-wide v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 571
    iget-wide v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v10, v7, v8}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v11

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    iput-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 572
    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    iget-object v12, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v12, v7, v8}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    iput-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    .line 575
    :cond_4e
    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v10, v10, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    const-wide/16 v11, 0x7530

    if-eqz v10, :cond_99

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v10

    if-eqz v10, :cond_99

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v13, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v10, v13, :cond_6c

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v13, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v10, v13, :cond_99

    .line 577
    :cond_6c
    const-wide/32 v13, 0x1d4c0

    cmp-long v10, v3, v13

    if-lez v10, :cond_83

    .line 578
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v4, "BAND_LOST"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    const-string v3, "band_lost_cooldown"

    invoke-direct {p0, v3, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 580
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    goto :goto_99

    .line 581
    :cond_83
    cmp-long v10, v3, v11

    if-lez v10, :cond_99

    iget-wide v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    const-wide v13, 0x3fe999999999999aL    # 0.8

    cmpl-double v10, v3, v13

    if-lez v10, :cond_99

    .line 582
    iput-wide v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 583
    const-string v3, "band_lost_soft"

    invoke-direct {p0, v3, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 586
    :cond_99
    :goto_99
    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v3, :cond_a9

    iget-wide v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v3, v13

    if-gez v10, :cond_a9

    if-gez v9, :cond_a9

    .line 587
    iput-wide v13, v0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 590
    :cond_a9
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    const-wide/16 v9, -0x1

    const-string v4, "hr_cap"

    if-eqz v3, :cond_e8

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v3, :cond_e8

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    int-to-double v13, v3

    cmpl-double v3, v7, v13

    if-ltz v3, :cond_e8

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v13, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v3, v13, :cond_d2

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v13, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v3, v13, :cond_d2

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v13, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v13, :cond_e8

    .line 592
    :cond_d2
    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 593
    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 594
    iput-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 595
    iput-boolean v5, v0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 596
    iput-wide v9, v0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 597
    iget v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    .line 598
    invoke-direct {p0, v4, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 600
    :cond_e8
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v5, :cond_12d

    .line 601
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12d

    .line 602
    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v3, :cond_12b

    const-wide/16 v3, 0x0

    cmpl-double v5, v7, v3

    if-lez v5, :cond_12b

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    invoke-virtual {v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v7, v3

    if-gtz v5, :cond_12b

    .line 603
    iget-wide v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-gez v5, :cond_117

    .line 604
    iput-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 606
    :cond_117
    iget-wide v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    sub-long v3, v1, v3

    cmp-long v5, v3, v11

    if-ltz v5, :cond_12d

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-nez v3, :cond_12d

    .line 607
    iput-boolean v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 608
    const-string v3, "can_resume"

    invoke-direct {p0, v3, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_12d

    .line 611
    :cond_12b
    iput-wide v9, v0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 615
    :cond_12d
    :goto_12d
    return-void
.end method

.method private integrate(JD)V
    .registers 14

    .line 541
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_12

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 542
    :goto_13
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-eqz v0, :cond_4d

    .line 543
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide p1, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 544
    iget-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v5

    mul-double v5, v5, p1

    mul-double v5, v5, p3

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    .line 545
    mul-double p1, p1, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    int-to-double v0, v0

    mul-double p1, p1, v0

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    int-to-double v0, v0

    mul-double p1, p1, v0

    mul-double p1, p1, p3

    .line 546
    iget-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr p3, p1

    iput-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    .line 547
    iget-boolean p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz p3, :cond_4c

    .line 548
    iget-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    add-double/2addr p3, p1

    iput-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    .line 550
    :cond_4c
    goto :goto_a4

    .line 551
    :cond_4d
    iget-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    neg-double v5, p3

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v7, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    iput-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    .line 552
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v3, :cond_a4

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAt(J)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 554
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide p1, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v3, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    mul-double p1, p1, v3

    .line 555
    iget-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v5

    mul-double v5, v5, p1

    mul-double v5, v5, p3

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    .line 556
    mul-double p1, p1, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    int-to-double v0, v0

    mul-double p1, p1, v0

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    int-to-double v0, v0

    mul-double p1, p1, v0

    mul-double p1, p1, p3

    .line 557
    iget-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr p3, p1

    iput-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    .line 558
    iget-boolean p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz p3, :cond_a4

    .line 559
    iget-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    add-double/2addr p3, p1

    iput-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    .line 563
    :cond_a4
    :goto_a4
    return-void
.end method

.method private isActivePauseAt(J)Z
    .registers 10

    .line 392
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3e

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-lez v0, :cond_3e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-gtz v0, :cond_1c

    goto :goto_3e

    .line 395
    :cond_1c
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    sub-long/2addr p1, v2

    .line 396
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    cmp-long v0, p1, v2

    if-ltz v0, :cond_3d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    add-int/2addr v0, v2

    int-to-long v2, v0

    mul-long v2, v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_3d

    const/4 v1, 0x1

    :cond_3d
    return v1

    .line 393
    :cond_3e
    :goto_3e
    return v1
.end method

.method private isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z
    .registers 4

    .line 924
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v0, v1, :cond_f

    iget-object p1, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private isStimOnAt(J)Z
    .registers 11

    .line 404
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2c

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v6, 0x0

    cmpg-double v0, v2, v6

    if-gtz v0, :cond_16

    goto :goto_2c

    .line 407
    :cond_16
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    sub-long/2addr p1, v2

    .line 408
    cmp-long v0, p1, v4

    if-ltz v0, :cond_2b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1

    .line 405
    :cond_2c
    :goto_2c
    return v1
.end method

.method private jumpToCooldown(J)V
    .registers 7

    .line 1015
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    .line 1016
    if-gez v0, :cond_c

    .line 1017
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->finish(J)V

    .line 1018
    return-void

    .line 1020
    :cond_c
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-lt v1, v0, :cond_11

    .line 1021
    return-void

    .line 1023
    :cond_11
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 1024
    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 1025
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 1026
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 1027
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 1028
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v2, :cond_2c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v2, :cond_30

    .line 1029
    :cond_2c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 1031
    :cond_30
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 1033
    return-void
.end method

.method private l1(J)V
    .registers 11

    .line 812
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    add-int/2addr v2, v1

    aput v2, v0, v1

    .line 813
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->budgetHalved:Z

    if-nez v0, :cond_20

    .line 814
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    sub-double/2addr v6, v2

    mul-double v6, v6, v4

    add-double/2addr v2, v6

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 815
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->budgetHalved:Z

    .line 816
    const-string v0, "l1_budget"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_28

    .line 818
    :cond_20
    const-string v0, "l1_cooldown"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 819
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 821
    :goto_28
    const/4 p1, 0x0

    iput p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    .line 822
    return-void
.end method

.method private lastFatigueDrivenIndex()I
    .registers 4

    .line 983
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_20

    .line 984
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v1, v2, :cond_1d

    .line 985
    return v0

    .line 983
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 988
    :cond_20
    const/4 v0, -0x1

    return v0
.end method

.method private markRestReady(J)V
    .registers 4

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 705
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 706
    const-string v0, "rest_ready"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 707
    return-void
.end method

.method private phaseOfBlock(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;)Lcom/isaigu/gymapp/ai/AiModel$Phase;
    .registers 6

    .line 764
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 765
    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v2, v3, :cond_1b

    .line 766
    return-object v1

    .line 768
    :cond_1b
    goto :goto_8

    .line 769
    :cond_1c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object p1

    return-object p1
.end method

.method private restMinReached(J)Z
    .registers 6

    .line 700
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private restRecovered()Z
    .registers 9

    .line 692
    nop

    .line 693
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_31

    .line 694
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v3

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v5, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_32

    :cond_2f
    const/4 v0, 0x0

    goto :goto_32

    .line 696
    :cond_31
    const/4 v0, 0x1

    :goto_32
    iget-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v5, v5, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_3f

    if-eqz v0, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    return v1
.end method

.method private silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;
    .registers 7

    .line 1064
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 1065
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    goto :goto_21

    :cond_16
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    :goto_21
    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 1066
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 1067
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 1068
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 1069
    iget v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 1070
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 1071
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 1072
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 1073
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    .line 1074
    return-object v0
.end method

.method private tickRecovery(J)V
    .registers 8

    .line 1043
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-ltz v4, :cond_38

    .line 1044
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide p1

    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-gez v2, :cond_34

    .line 1045
    iget-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    sub-double/2addr p1, v0

    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    .line 1047
    :cond_34
    sget-object p1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 1049
    :cond_38
    return-void
.end method

.method private tickRest(J)V
    .registers 11

    .line 670
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v0, :cond_5

    .line 671
    return-void

    .line 673
    :cond_5
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 674
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->restRecovered()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_20

    iget-wide v5, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    cmpl-double v2, v0, v5

    if-ltz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 675
    :goto_21
    const-wide/high16 v5, 0x405e000000000000L    # 120.0

    cmpl-double v7, v0, v5

    if-ltz v7, :cond_28

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    .line 676
    :goto_29
    if-nez v2, :cond_2e

    if-nez v3, :cond_2e

    .line 677
    return-void

    .line 679
    :cond_2e
    if-nez v2, :cond_40

    .line 680
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double v2, v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    .line 681
    const-string v2, "rest_timeout"

    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 683
    :cond_40
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 684
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->markRestReady(J)V

    .line 685
    return-void

    .line 687
    :cond_4c
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->closeRestStats(DJ)V

    .line 688
    sget-object p1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 689
    return-void
.end method

.method private trackCorridor(D)V
    .registers 8

    .line 1052
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_21

    goto :goto_57

    .line 1055
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    .line 1056
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    .line 1057
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_4e

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4c

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_4e

    :cond_4c
    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    .line 1058
    :goto_4f
    if-eqz v0, :cond_56

    .line 1059
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    .line 1061
    :cond_56
    return-void

    .line 1053
    :cond_57
    :goto_57
    return-void
.end method

.method private useHrControl()Z
    .registers 6

    .line 920
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method


# virtual methods
.method public answerCheckpoint(IJ)V
    .registers 15

    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    const-string v1, "checkpoint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 364
    :cond_16
    return-void

    .line 366
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-le p1, v0, :cond_3f

    .line 367
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    iget-wide v5, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    const-wide v7, 0x3fb1eb851eb851ecL    # 0.07

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    sub-int/2addr p1, v0

    int-to-double v9, p1

    mul-double v9, v9, v7

    sub-double/2addr v1, v9

    mul-double v5, v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    .line 368
    const-string p1, "cr10_down"

    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_67

    .line 369
    :cond_3f
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    if-ge p1, v0, :cond_62

    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object p1, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne p1, v0, :cond_62

    .line 371
    iget-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    const-wide v5, 0x3ff0cccccccccccdL    # 1.05

    mul-double v3, v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    .line 372
    const-string p1, "cr10_up"

    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_67

    .line 374
    :cond_62
    const-string p1, "cr10_ok"

    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 376
    :goto_67
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 377
    const-string p1, ""

    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public cHr()D
    .registers 12

    .line 911
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    .line 912
    return-wide v1

    .line 914
    :cond_9
    iget-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 915
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    const-wide/16 v7, 0x3e8

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v9, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->dtHrMs:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    mul-long v7, v7, v5

    cmp-long v0, v3, v7

    if-gtz v0, :cond_25

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 916
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v3, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    mul-double v3, v3, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->validShare()D

    move-result-wide v0

    mul-double v3, v3, v0

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    mul-double v3, v3, v0

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cMed:D

    mul-double v3, v3, v0

    return-wide v3
.end method

.method public canIncrease()Z
    .registers 7

    .line 236
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    const/4 v2, 0x0

    const-wide v3, 0x3feffffde7210be9L    # 0.999999

    cmpl-double v5, v0, v3

    if-gez v5, :cond_4a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_19

    goto :goto_4a

    .line 239
    :cond_19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, v1, :cond_24

    .line 240
    return v2

    .line 242
    :cond_24
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    .line 243
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v3, :cond_48

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_48

    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v3, :cond_48

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    cmpl-double v5, v0, v3

    if-gtz v5, :cond_49

    :cond_48
    const/4 v2, 0x1

    :cond_49
    return v2

    .line 237
    :cond_4a
    :goto_4a
    return v2
.end method

.method public canReduce()Z
    .registers 6

    .line 248
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    const-wide v2, 0x3fb999aa60913a50L    # 0.100001

    cmpl-double v4, v0, v2

    if-lez v4, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_19

    :cond_17
    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public canResume()Z
    .registers 3

    .line 1157
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public continueBlock(J)Z
    .registers 11

    .line 313
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-nez v0, :cond_c

    goto :goto_3d

    .line 316
    :cond_c
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    const-wide/16 v3, 0x0

    const-wide v5, 0x408f400000000000L    # 1000.0

    cmp-long v7, v0, v3

    if-lez v7, :cond_1e

    sub-long v0, p1, v0

    long-to-double v0, v0

    div-double/2addr v0, v5

    goto :goto_20

    :cond_1e
    const-wide/16 v0, 0x0

    .line 317
    :goto_20
    iget-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v3, p1, v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->closeRestStats(DJ)V

    .line 318
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->applyIdle(DJ)V

    .line 319
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 320
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 321
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 322
    const-string v0, "continue"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 323
    const/4 p1, 0x1

    return p1

    .line 314
    :cond_3d
    :goto_3d
    return v2
.end method

.method public getBlocks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;",
            ">;"
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    return-object v0
.end method

.method public getCapHits()I
    .registers 2

    .line 1257
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    return v0
.end method

.method public getCeilingScale()D
    .registers 3

    .line 1217
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    return-wide v0
.end method

.method public getCorridorShare()D
    .registers 6

    .line 1261
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_c

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    div-double/2addr v2, v0

    goto :goto_e

    :cond_c
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    :goto_e
    return-wide v2
.end method

.method public getCurrentCycle()Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;
    .registers 2

    .line 1225
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    return-object v0
.end method

.method public getCurrentFrac()D
    .registers 3

    .line 1221
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    return-wide v0
.end method

.method public getElapsedPlanS()D
    .registers 7

    .line 1173
    nop

    .line 1174
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 1175
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v3, v3

    add-double/2addr v0, v3

    .line 1174
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1177
    :cond_25
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    iget v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getEndMs()J
    .registers 3

    .line 1281
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    return-wide v0
.end method

.method public getFatigue()D
    .registers 3

    .line 1193
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    return-wide v0
.end method

.method public getFatigueMax()D
    .registers 3

    .line 1197
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    return-wide v0
.end method

.method public getFatigueRec()D
    .registers 3

    .line 1141
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    return-wide v0
.end method

.method public getFlags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1249
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    return-object v0
.end method

.method public getHrAgeMs(J)J
    .registers 4

    .line 1185
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHrFilter()Lcom/isaigu/gymapp/ai/AiHrFilter;
    .registers 2

    .line 1293
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    return-object v0
.end method

.method public getHrS()D
    .registers 3

    .line 1181
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHrr60()D
    .registers 3

    .line 1269
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    return-wide v0
.end method

.method public getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 2

    .line 1305
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    return-object v0
.end method

.method public getLCount(I)I
    .registers 3

    .line 1253
    const/4 v0, 0x1

    if-lt p1, v0, :cond_b

    const/4 v0, 0x5

    if-gt p1, v0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    aget p1, v0, p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public getLastAction()Ljava/lang/String;
    .registers 2

    .line 1233
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActionMs()J
    .registers 3

    .line 1237
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastActionMs:J

    return-wide v0
.end method

.method public getLog()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1241
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    return-object v0
.end method

.method public getPauseReason()Ljava/lang/String;
    .registers 2

    .line 1153
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    return-object v0
.end method

.method public getPhaseElapsedS()D
    .registers 3

    .line 1169
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    return-wide v0
.end method

.method public getPhaseIndex()I
    .registers 2

    .line 1165
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    return v0
.end method

.method public getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 2

    .line 1297
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    return-object v0
.end method

.method public getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;
    .registers 2

    .line 1301
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    return-object v0
.end method

.method public getQBudget()D
    .registers 3

    .line 1205
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    return-wide v0
.end method

.method public getQUsed()D
    .registers 3

    .line 1201
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    return-wide v0
.end method

.method public getRecoveryRemainingMs(J)J
    .registers 9

    .line 1273
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_13

    const-wide/32 v0, 0xea60

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    sub-long/2addr p1, v4

    sub-long/2addr v0, p1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_13
    return-wide v2
.end method

.method public getReentry()D
    .registers 3

    .line 1145
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    return-wide v0
.end method

.method public getRestMinS()D
    .registers 3

    .line 1137
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    return-wide v0
.end method

.method public getRestOverS(J)D
    .registers 8

    .line 1111
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    goto :goto_19

    :cond_17
    const-wide/16 p1, 0x0

    :goto_19
    return-wide p1
.end method

.method public getRestRemainingS(J)D
    .registers 13

    .line 1119
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_4f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v0, :cond_d

    goto :goto_4f

    .line 1122
    :cond_d
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestS(J)D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1123
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpl-double v8, v4, v6

    if-lez v8, :cond_3f

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpl-double v6, v4, v2

    if-lez v6, :cond_3f

    .line 1124
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1126
    :cond_3f
    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestS(J)D

    move-result-wide p1

    sub-double/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1

    .line 1120
    :cond_4f
    :goto_4f
    return-wide v2
.end method

.method public getRestS(J)D
    .registers 5

    .line 1106
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_11

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    goto :goto_13

    :cond_11
    const-wide/16 p1, 0x0

    :goto_13
    return-wide p1
.end method

.method public getSessionMaxX()D
    .registers 3

    .line 1265
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    return-wide v0
.end method

.method public getStartMs()J
    .registers 3

    .line 1277
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    return-wide v0
.end method

.method public getState()Lcom/isaigu/gymapp/ai/AiEngine$State;
    .registers 2

    .line 1093
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    return-object v0
.end method

.method public getTotalIdleS()D
    .registers 3

    .line 1149
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    return-wide v0
.end method

.method public getU()D
    .registers 3

    .line 1209
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    return-wide v0
.end method

.method public getUUser()D
    .registers 3

    .line 1213
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    return-wide v0
.end method

.method public getX()D
    .registers 6

    .line 1189
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    goto :goto_1b

    :cond_19
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_1b
    return-wide v0
.end method

.method public increase(J)V
    .registers 9

    .line 227
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v0

    if-nez v0, :cond_7

    .line 228
    return-void

    .line 230
    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 231
    const-string v0, "increase"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 232
    return-void
.end method

.method public isActivePause(J)Z
    .registers 5

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAt(J)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public isActivePauseAvailable()Z
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v2, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v2, :cond_14

    goto :goto_45

    .line 256
    :cond_14
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    :goto_16
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_44

    .line 257
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 258
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v3, :cond_3f

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_42

    .line 256
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 259
    :cond_42
    :goto_42
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_44
    return v1

    .line 254
    :cond_45
    :goto_45
    return v1
.end method

.method public isActivePauseOn()Z
    .registers 2

    .line 266
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    return v0
.end method

.method public isFrozen()Z
    .registers 2

    .line 1289
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    return v0
.end method

.method public isInBlock()Z
    .registers 2

    .line 1285
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    return v0
.end method

.method public isManualContinue()Z
    .registers 2

    .line 1102
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    return v0
.end method

.method public isRestHrOk()Z
    .registers 7

    .line 1130
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_18

    goto :goto_2f

    .line 1133
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v2

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1

    .line 1131
    :cond_2f
    :goto_2f
    return v1
.end method

.method public isRestReady()Z
    .registers 3

    .line 1098
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isStimOn(J)Z
    .registers 5

    .line 1229
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;
    .registers 15

    .line 415
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    .line 416
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_d

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object p1

    return-object p1

    .line 419
    :cond_d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    .line 421
    iget-wide v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v3, v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_29

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->advancePhase(J)Z

    move-result v0

    if-nez v0, :cond_25

    .line 423
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object p1

    return-object p1

    .line 425
    :cond_25
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    .line 427
    :cond_29
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v1, v2, :cond_5f

    .line 428
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-nez v1, :cond_37

    .line 429
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->beginBlock(J)V

    goto :goto_5f

    .line 430
    :cond_37
    iget-wide v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    cmpl-double v5, v1, v3

    if-gez v5, :cond_57

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-nez v1, :cond_57

    iget-wide v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    sub-long v1, p1, v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_5f

    .line 432
    :cond_57
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlock(J)V

    .line 433
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object p1

    return-object p1

    .line 436
    :cond_5f
    :goto_5f
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->checkCheckpoint(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 437
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object p1

    return-object p1

    .line 439
    :cond_6a
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->controlPerCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)V

    .line 440
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-eqz v1, :cond_7d

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v1, :cond_7d

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlock(J)V

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object p1

    return-object p1

    .line 445
    :cond_7d
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v1, :cond_88

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    if-eqz v1, :cond_88

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    goto :goto_8a

    :cond_88
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 446
    :goto_8a
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v3, 0x1

    if-eqz v2, :cond_94

    .line 447
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 449
    :cond_94
    new-instance v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 450
    iget v4, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v4, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 451
    iget v4, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v4, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 452
    iget v4, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v4, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 453
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_af

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-ne v1, v4, :cond_af

    const/4 v4, 0x1

    goto :goto_b0

    :cond_af
    const/4 v4, 0x0

    :goto_b0
    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    .line 454
    iget-boolean v4, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    if-eqz v4, :cond_bb

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v4

    goto :goto_bd

    :cond_bb
    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 455
    :goto_bd
    iget v6, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    .line 456
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz v7, :cond_eb

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    cmpl-double v7, v10, v8

    if-lez v7, :cond_eb

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v7

    if-eqz v7, :cond_eb

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v7

    if-nez v7, :cond_eb

    .line 457
    iget v6, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v6, v3

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 459
    :cond_eb
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 460
    invoke-direct {p0, v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->arbiter(Lcom/isaigu/gymapp/ai/AiModel$Phase;D)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 461
    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    if-eqz v3, :cond_109

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v3

    if-eqz v3, :cond_109

    .line 462
    iget v3, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 463
    iget-wide v3, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    iput-wide v3, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    .line 465
    :cond_109
    invoke-direct {p0, v2, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->applyRamps(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 468
    iget-wide v3, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/ai/AiPlanner;->cycleDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;D)D

    move-result-wide v3

    .line 469
    iget v5, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    const-wide/16 v6, 0x0

    if-lez v5, :cond_121

    iget-wide v10, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    iget v5, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    invoke-static {v1, v10, v11, v5}, Lcom/isaigu/gymapp/ai/AiPlanner;->pauseDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;DI)D

    move-result-wide v10

    goto :goto_122

    :cond_121
    move-wide v10, v6

    :goto_122
    add-double/2addr v3, v10

    .line 470
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v0, v5, :cond_146

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr v10, v3

    iget-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    cmpl-double v0, v10, v3

    if-lez v0, :cond_146

    .line 471
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v1, "BUDGET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    const-string v0, "budget_cooldown"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 473
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 474
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object p1

    return-object p1

    .line 476
    :cond_146
    iget-wide v3, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    cmpl-double v0, v3, v6

    if-lez v0, :cond_15e

    iget-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    cmpg-double v0, v3, v8

    if-gez v0, :cond_15e

    .line 477
    const-wide v5, 0x3fb999999999999aL    # 0.1

    add-double/2addr v3, v5

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 479
    :cond_15e
    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 480
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 481
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    .line 482
    return-object v2
.end method

.method public onHr(JI)V
    .registers 8

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->onSample(JIZ)Z

    .line 385
    iget-object p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne p3, v0, :cond_39

    iget-object p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p3, v0, v2

    if-lez p3, :cond_39

    .line 386
    iget-object p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long/2addr p1, v2

    long-to-double p1, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v2

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    iget-object p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v1

    aput-wide v1, v0, p1

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_39
    return-void
.end method

.method public phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;
    .registers 4

    .line 1161
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
    .registers 7

    .line 218
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    const-wide v2, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v0, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 219
    const-string v0, "reduce"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 220
    return-void
.end method

.method public reduceTo(DJ)V
    .registers 13

    .line 295
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide p1

    mul-double v0, v0, p1

    const-wide p1, 0x3fb999999999999aL    # 0.1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 296
    const-string p1, "reduce"

    invoke-direct {p0, p1, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 297
    return-void
.end method

.method public resume(J)V
    .registers 11

    .line 339
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v2, "resume"

    const-wide/16 v3, -0x1

    if-ne v0, v1, :cond_3e

    .line 340
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 341
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-lez v7, :cond_20

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v5

    goto :goto_22

    :cond_20
    const-wide/16 v0, 0x0

    .line 342
    :goto_22
    iput-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 343
    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 344
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3a

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_3a

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v2, :cond_3a

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->beginBlock(J)V

    .line 348
    :cond_3a
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->applyIdle(DJ)V

    goto :goto_60

    .line 349
    :cond_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_60

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-eqz v0, :cond_60

    .line 350
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 351
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 354
    iput-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 355
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 356
    iput-wide v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 357
    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_61

    .line 349
    :cond_60
    :goto_60
    nop

    .line 359
    :goto_61
    return-void
.end method

.method public setActivePause(ZJ)V
    .registers 12

    .line 271
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    if-eq p1, v0, :cond_75

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_75

    .line 274
    :cond_d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOn:D

    goto :goto_1a

    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOff:D

    .line 275
    :goto_1a
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    if-eqz p1, :cond_21

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOn:D

    goto :goto_23

    :cond_21
    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOff:D

    .line 276
    :goto_23
    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_34

    cmpl-double v6, v2, v4

    if-lez v6, :cond_34

    .line 277
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    div-double/2addr v2, v0

    mul-double v6, v6, v2

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 279
    :cond_34
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_6a

    .line 282
    if-eqz p1, :cond_5f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    cmpl-double v2, v0, v4

    if-lez v2, :cond_5f

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    iput-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    goto :goto_6a

    .line 285
    :cond_5f
    if-nez p1, :cond_6a

    .line 286
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    .line 290
    :cond_6a
    :goto_6a
    if-eqz p1, :cond_6f

    const-string p1, "pause_on"

    goto :goto_71

    :cond_6f
    const-string p1, "pause_off"

    :goto_71
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 291
    return-void

    .line 272
    :cond_75
    :goto_75
    return-void
.end method

.method public start(J)V
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_7

    .line 193
    return-void

    .line 195
    :cond_7
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    .line 196
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 197
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_25

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->seed(IJ)V

    .line 203
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 204
    return-void
.end method

.method public stop(J)V
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_d

    goto :goto_19

    .line 211
    :cond_d
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    .line 212
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 213
    const-string v0, "stop"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 214
    return-void

    .line 209
    :cond_19
    :goto_19
    return-void
.end method

.method public tick(J)V
    .registers 11

    .line 488
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    .line 489
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 491
    :cond_a
    const-wide/16 v0, 0x7d0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    sub-long v4, p1, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 492
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 493
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v4, v5, :cond_f4

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v4, v5, :cond_f4

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v4, v5, :cond_35

    goto/16 :goto_f4

    .line 496
    :cond_35
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v4, v5, :cond_3f

    .line 497
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->tickRecovery(J)V

    .line 498
    return-void

    .line 500
    :cond_3f
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->integrate(JD)V

    .line 501
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->guards(JD)V

    .line 503
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_52

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v4, :cond_52

    const/4 v4, 0x1

    goto :goto_53

    :cond_52
    const/4 v4, 0x0

    .line 504
    :goto_53
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v5, v7, :cond_61

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v5, v7, :cond_69

    if-nez v4, :cond_69

    .line 506
    :cond_61
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    add-double/2addr v4, v0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 507
    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->trackCorridor(D)V

    .line 509
    :cond_69
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_a4

    .line 510
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->tickRest(J)V

    .line 511
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    iget v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v4, v4

    cmpl-double v7, v0, v4

    if-ltz v7, :cond_a4

    .line 512
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 514
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 515
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-nez v0, :cond_a4

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->restMinReached(J)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 516
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->markRestReady(J)V

    goto :goto_a4

    .line 520
    :cond_9e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 521
    iput-boolean v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 525
    :cond_a4
    :goto_a4
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_c9

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_c9

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v4, 0x3a98

    cmp-long v6, v0, v4

    if-lez v6, :cond_c9

    .line 527
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 528
    const-string v0, "checkpoint"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 529
    const-string v0, "checkpoint_timeout"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 532
    :cond_c9
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_f3

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_f3

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_f3

    .line 533
    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    .line 534
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    sub-long v2, p1, v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_f3

    .line 535
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 538
    :cond_f3
    return-void

    .line 494
    :cond_f4
    :goto_f4
    return-void
.end method

.method public userPause(J)V
    .registers 5

    .line 300
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_1b

    .line 301
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 302
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 303
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 304
    const-string v0, "user_pause"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 306
    :cond_1b
    return-void
.end method
