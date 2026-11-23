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

.field private endAtS:D

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

.field private tuneHz:D

.field private tuneOff:I

.field private tuneOn:I

.field private tuneRest:D

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

    .line 189
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
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneHz:D

    .line 103
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneRest:D

    .line 110
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    .line 113
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    .line 122
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    .line 123
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 126
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    .line 127
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    .line 128
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 131
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 132
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 137
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 138
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    .line 141
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    .line 146
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    .line 147
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 149
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 151
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    .line 155
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 156
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 157
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    .line 169
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    .line 181
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    .line 182
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    .line 185
    const-string v0, "start"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    .line 190
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    .line 191
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    .line 192
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    .line 193
    iget-wide v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qBudget:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 194
    iget-boolean v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseOn:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    .line 195
    iget-wide v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    iget-object v1, p2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    return-void
.end method

.method private action(Ljava/lang/String;J)V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    .line 1188
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    .line 1189
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastActionMs:J

    .line 1190
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

    .line 1191
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_3f

    .line 1192
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1194
    :cond_3f
    return-void
.end method

.method private advancePhase(J)Z
    .registers 12

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 1102
    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v3, :cond_a

    .line 1103
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockSilently(J)V

    .line 1106
    :cond_a
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v6, v3

    sub-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1107
    :cond_24
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 1108
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 1109
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 1110
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 1111
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 1112
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_47

    .line 1113
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->finish(J)V

    move v0, v2

    .line 1117
    :goto_46
    return v0

    .line 1116
    :cond_47
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

    .line 1117
    const/4 v0, 0x1

    goto :goto_46
.end method

.method private applyIdle(DJ)V
    .registers 12

    .prologue
    .line 345
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_7

    .line 352
    :goto_6
    return-void

    .line 348
    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    .line 349
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x4082c00000000000L    # 600.0

    div-double v2, p1, v2

    sub-double/2addr v0, v2

    const-wide v2, 0x3fe3333333333333L    # 0.6

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    .line 350
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 351
    const-string v0, "reentry"

    invoke-direct {p0, v0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_6
.end method

.method private applyRamps(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1035
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

    .line 1036
    :cond_17
    const/16 v0, 0x3e8

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 1037
    const/16 v0, 0x1f4

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 1046
    :goto_1f
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, -0xc8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1047
    iget v2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    iget v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    add-int/2addr v2, v3

    if-le v2, v0, :cond_39

    .line 1048
    iget v2, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    .line 1050
    :cond_39
    return-void

    .line 1038
    :cond_3a
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1040
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    :goto_4c
    add-int/lit16 v0, v0, 0x190

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 1041
    const/16 v0, 0x12c

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    goto :goto_1f

    :cond_55
    move v0, v1

    .line 1040
    goto :goto_4c

    .line 1043
    :cond_57
    iput v1, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampUpMs:I

    .line 1044
    iput v1, p1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->rampDownMs:I

    goto :goto_1f
.end method

.method private arbiter(Lcom/isaigu/gymapp/ai/AiModel$Phase;D)D
    .registers 10

    .prologue
    .line 1003
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    if-lez v0, :cond_4a

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 1004
    :goto_a
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiAt(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1005
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1006
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1008
    :cond_25
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    mul-double/2addr v0, v2

    .line 1009
    mul-double/2addr v0, p2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    mul-double/2addr v0, v2

    .line 1010
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    mul-double/2addr v2, v0

    .line 1011
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->cHr()D

    move-result-wide v4

    .line 1012
    sub-double v2, v0, v2

    mul-double/2addr v2, v4

    sub-double v2, v0, v2

    .line 1013
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    mul-double/2addr v0, v2

    .line 1014
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    return-wide v0

    .line 1003
    :cond_4a
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_a
.end method

.method private beginBlock(J)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 676
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    .line 677
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    .line 678
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    .line 679
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartHr:D

    .line 680
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 681
    cmpl-double v2, v0, v2

    if-lez v2, :cond_20

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    :goto_1d
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 682
    return-void

    .line 681
    :cond_20
    const-wide/high16 v0, -0x3fdc000000000000L    # -10.0

    goto :goto_1d
.end method

.method private blockLevelControl(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;J)V
    .registers 16

    .prologue
    .line 881
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

    .line 883
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cResp:D

    .line 884
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v1, "NON_RESPONDER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    const-string v0, "non_responder"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 887
    :cond_4b
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v0

    if-nez v0, :cond_52

    .line 916
    :cond_51
    :goto_51
    return-void

    .line 891
    :cond_52
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_106

    const/4 v0, 0x1

    .line 892
    :goto_63
    iget-wide v2, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_b7

    if-eqz v0, :cond_b7

    .line 893
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

    .line 894
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9e

    .line 895
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 896
    const-string v0, "l2_shorter_blocks"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 898
    :cond_9e
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    const-wide v2, 0x3ff6666666666666L    # 1.4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_109

    .line 899
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    .line 903
    :goto_af
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b7

    .line 904
    invoke-direct {p0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->l1(J)V

    .line 908
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

    .line 909
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 910
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    .line 911
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v1, :cond_ff

    .line 912
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 914
    :cond_ff
    const-string v0, "below_corridor"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_51

    .line 891
    :cond_106
    const/4 v0, 0x0

    goto/16 :goto_63

    .line 901
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

    .line 1055
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1078
    :cond_9
    :goto_9
    return v0

    .line 1058
    :cond_a
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v4

    .line 1059
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->lastFatigueDrivenIndex()I

    move-result v5

    .line 1060
    const/4 v3, -0x1

    .line 1061
    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ne v6, v4, :cond_37

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aget-boolean v6, v6, v0

    if-nez v6, :cond_37

    move v2, v0

    .line 1070
    :cond_20
    :goto_20
    if-ltz v2, :cond_9

    .line 1073
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointDone:[Z

    aput-boolean v1, v0, v2

    .line 1074
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 1075
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 1076
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointSinceMs:J

    .line 1077
    const-string v0, "checkpoint"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    move v0, v1

    .line 1078
    goto :goto_9

    .line 1063
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

    .line 1065
    goto :goto_20

    .line 1066
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
    .line 1197
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

    .line 816
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 841
    :cond_d
    :goto_d
    return-void

    .line 819
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 820
    iput-wide p1, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tRestS:D

    .line 821
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->fitTau()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    .line 822
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_a4

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_a4

    .line 823
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->phaseOfBlock(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;)Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 824
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 825
    if-nez v1, :cond_57

    .line 826
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tauRef:Ljava/util/Map;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 829
    :cond_57
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    .line 830
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_a2

    const/4 v1, 0x1

    .line 831
    :goto_71
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-eqz v2, :cond_8d

    if-eqz v1, :cond_8d

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    cmpl-double v2, v2, v8

    if-lez v2, :cond_8d

    .line 832
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    mul-double/2addr v2, v8

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    .line 833
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 835
    :cond_8d
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    .line 836
    invoke-direct {p0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->l1(J)V

    goto/16 :goto_d

    .line 830
    :cond_a2
    const/4 v1, 0x0

    goto :goto_71

    .line 839
    :cond_a4
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    goto/16 :goto_d
.end method

.method private controlPerCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)V
    .registers 12

    .prologue
    .line 934
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

    .line 989
    :cond_1c
    :goto_1c
    return-void

    .line 937
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    .line 938
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 939
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v0, v6, v0

    if-lez v0, :cond_12e

    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    .line 941
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    .line 948
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1c

    .line 953
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

    .line 954
    :goto_67
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-lez v2, :cond_81

    .line 955
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 956
    const-string v2, "l3_longer_pause"

    invoke-direct {p0, v2, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 958
    :cond_81
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 959
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_ba

    .line 960
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 961
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

    .line 962
    :goto_9c
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    sub-double/2addr v2, v4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_b8

    .line 963
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 964
    const-string v2, "l4_softer_b"

    invoke-direct {p0, v2, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 966
    :cond_b8
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 968
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

    .line 969
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_db

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    .line 975
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

    .line 976
    :goto_ea
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v6, v2

    if-lez v1, :cond_154

    .line 977
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    .line 978
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1c

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 979
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide v4, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    .line 980
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    const/4 v1, 0x5

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 981
    const-string v0, "u_down"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_1c

    .line 942
    :cond_12e
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_43

    .line 943
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    .line 944
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->zeroCycles:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_43

    .line 945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ctrlActive:Z

    goto/16 :goto_43

    .line 953
    :cond_144
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_67

    .line 961
    :cond_148
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v0

    goto/16 :goto_9c

    .line 973
    :cond_14e
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    goto :goto_db

    .line 975
    :cond_152
    const/4 v0, 0x0

    goto :goto_ea

    .line 984
    :cond_154
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highCycles:I

    .line 985
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1c

    .line 986
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
    .line 992
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-nez v0, :cond_7

    .line 993
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 998
    :goto_6
    return-wide v0

    .line 995
    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_15

    .line 996
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    .line 998
    :cond_15
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sigmaB:D

    goto :goto_6
.end method

.method private endBlock(J)V
    .registers 12

    .prologue
    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 686
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 687
    new-instance v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;-><init>()V

    .line 688
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    .line 689
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 690
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->startMs:J

    .line 691
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tBlockS:D

    .line 692
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    .line 693
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->fEnd:D

    .line 694
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-eqz v0, :cond_101

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_101

    const/4 v0, 0x1

    :goto_40
    iput-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->hrEnded:Z

    .line 695
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

    .line 696
    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_10b

    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10b

    .line 697
    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    div-double/2addr v0, v4

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    .line 698
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 699
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 700
    if-nez v0, :cond_a1

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v4

    if-eqz v4, :cond_a1

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_a1

    .line 701
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->rRef:Ljava/util/Map;

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 704
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

    .line 709
    :goto_b7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 711
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->mainBlocks:I

    .line 712
    invoke-direct {p0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->blockLevelControl(Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;J)V

    .line 714
    :cond_cb
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 715
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    .line 716
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 718
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 719
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->setDone:Z

    if-eqz v0, :cond_114

    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->hrEnded:Z

    if-nez v0, :cond_114

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_114

    const/4 v0, 0x1

    .line 720
    :goto_ee
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    .line 721
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->setDone:Z

    .line 722
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrEndCycles:I

    .line 723
    iget-boolean v1, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->hrEnded:Z

    if-eqz v1, :cond_116

    const-string v0, "hr_block_end"

    :goto_fd
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 724
    return-void

    .line 694
    :cond_101
    const/4 v0, 0x0

    goto/16 :goto_40

    .line 695
    :cond_104
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_57

    .line 704
    :cond_108
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_b5

    .line 706
    :cond_10b
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    .line 707
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    goto :goto_b7

    .line 719
    :cond_114
    const/4 v0, 0x0

    goto :goto_ee

    .line 723
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
    .line 1121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 1122
    return-void
.end method

.method private finish(J)V
    .registers 6

    .prologue
    .line 1146
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    .line 1147
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    .line 1148
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    :goto_12
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 1149
    const-string v0, "done"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 1150
    return-void

    .line 1148
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    goto :goto_12
.end method

.method private firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I
    .registers 4

    .prologue
    .line 1082
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 1083
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, p1, :cond_1b

    .line 1087
    :goto_1a
    return v1

    .line 1082
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1087
    :cond_1f
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method private fitTau()D
    .registers 19

    .prologue
    .line 845
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

    .line 846
    :cond_13
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 866
    :goto_15
    return-wide v2

    .line 848
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

    .line 849
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v8, v2

    if-gez v2, :cond_36

    .line 850
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    .line 852
    :cond_36
    const-wide/16 v6, 0x0

    .line 853
    const-wide/16 v2, 0x0

    .line 854
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

    .line 855
    const/4 v3, 0x1

    aget-wide v12, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    int-to-double v14, v3

    sub-double/2addr v12, v14

    .line 856
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v12, v14

    if-lez v3, :cond_43

    .line 859
    div-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    .line 860
    const/4 v3, 0x0

    aget-wide v14, v2, v3

    const/4 v3, 0x0

    aget-wide v16, v2, v3

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    .line 861
    const/4 v3, 0x0

    aget-wide v2, v2, v3

    mul-double/2addr v2, v12

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 862
    goto :goto_43

    .line 863
    :cond_75
    const-wide/16 v2, 0x0

    cmpg-double v2, v6, v2

    if-lez v2, :cond_81

    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_84

    .line 864
    :cond_81
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    .line 866
    :cond_84
    neg-double v2, v6

    div-double/2addr v2, v4

    goto :goto_15
.end method

.method private guards(JD)V
    .registers 14

    .prologue
    .line 608
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v2

    .line 609
    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-lez v0, :cond_11c

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    .line 610
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    .line 611
    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v4, :cond_47

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_47

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    if-nez v4, :cond_47

    .line 612
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxHr:D

    .line 613
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v6, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockMaxX:D

    .line 614
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v6, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    .line 617
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

    .line 619
    :cond_63
    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v2, v4

    if-lez v4, :cond_11f

    .line 620
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v5, "BAND_LOST"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    const-string v4, "band_lost_cooldown"

    invoke-direct {p0, v4, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 622
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 628
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

    .line 629
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 632
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

    .line 634
    :cond_b4
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 635
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 636
    const-string v2, "hr_cap"

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 637
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 638
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 639
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    .line 640
    const-string v2, "hr_cap"

    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 642
    :cond_d2
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_11b

    .line 643
    const-string v2, "hr_cap"

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 644
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

    .line 645
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_105

    .line 646
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 648
    :cond_105
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-nez v0, :cond_11b

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 650
    const-string v0, "can_resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 657
    :cond_11b
    :goto_11b
    return-void

    .line 609
    :cond_11c
    const/4 v0, 0x0

    goto/16 :goto_d

    .line 623
    :cond_11f
    const-wide/16 v4, 0x7530

    cmp-long v4, v2, v4

    if-lez v4, :cond_79

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_79

    .line 624
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiCapBand:D

    .line 625
    const-string v4, "band_lost_soft"

    invoke-direct {p0, v4, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto/16 :goto_79

    .line 653
    :cond_13e
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    goto :goto_11b
.end method

.method private integrate(JD)V
    .registers 14

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 583
    neg-double v0, p3

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    .line 584
    const-wide/16 v0, 0x0

    .line 585
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_5b

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    .line 586
    :goto_1f
    if-eqz v2, :cond_5d

    .line 587
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 588
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 589
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

    .line 590
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr v6, v2

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    .line 591
    iget-boolean v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v6, :cond_4a

    .line 592
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    add-double/2addr v2, v6

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    .line 604
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

    .line 605
    return-void

    .line 585
    :cond_5b
    const/4 v2, 0x0

    goto :goto_1f

    .line 594
    :cond_5d
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_4a

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAt(J)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 596
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    mul-double/2addr v2, v0

    .line 597
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 598
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

    .line 599
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    add-double/2addr v6, v2

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    .line 600
    iget-boolean v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v6, :cond_4a

    .line 601
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

    .line 409
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

    .line 413
    :cond_1f
    :goto_1f
    return v0

    .line 412
    :cond_20
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    sub-long v2, p1, v2

    .line 413
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
    .line 1031
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

    .line 421
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

    .line 425
    :cond_17
    :goto_17
    return v0

    .line 424
    :cond_18
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    sub-long v2, p1, v2

    .line 425
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

    .line 1125
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    .line 1126
    if-gez v0, :cond_d

    .line 1127
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->finish(J)V

    .line 1143
    :cond_c
    :goto_c
    return-void

    .line 1130
    :cond_d
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    if-ge v1, v0, :cond_c

    .line 1133
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    .line 1134
    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 1135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 1136
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 1137
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    .line 1138
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_2f

    .line 1139
    :cond_2b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 1141
    :cond_2f
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 1142
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

    .line 919
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lCount:[I

    aget v1, v0, v8

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v8

    .line 920
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->budgetHalved:Z

    if-nez v0, :cond_25

    .line 921
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 922
    iput-boolean v8, p0, Lcom/isaigu/gymapp/ai/AiEngine;->budgetHalved:Z

    .line 923
    const-string v0, "l1_budget"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 928
    :goto_21
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->highDStreak:I

    .line 929
    return-void

    .line 925
    :cond_25
    const-string v0, "l1_cooldown"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 926
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    goto :goto_21
.end method

.method private lastFatigueDrivenIndex()I
    .registers 4

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_21

    .line 1092
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v0, v2, :cond_1e

    move v0, v1

    .line 1096
    :goto_1d
    return v0

    .line 1091
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1096
    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method private markRestReady(J)V
    .registers 4

    .prologue
    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 811
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 812
    const-string v0, "rest_ready"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 813
    return-void
.end method

.method private nextPeak(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D
    .registers 12

    .prologue
    .line 667
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    if-eqz v0, :cond_3b

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 668
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

    .line 669
    :goto_1c
    iget-wide v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    invoke-static/range {v1 .. v7}, Lcom/isaigu/gymapp/ai/AiPlanner;->afterOn(DLcom/isaigu/gymapp/ai/AiModel$CycleSpec;DD)D

    move-result-wide v1

    .line 670
    iget v0, v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v6

    iget-boolean v7, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    invoke-static/range {v1 .. v9}, Lcom/isaigu/gymapp/ai/AiPlanner;->afterOff(DLcom/isaigu/gymapp/ai/AiModel$CycleSpec;DIZD)D

    move-result-wide v4

    .line 671
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 667
    :cond_3b
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    goto :goto_a

    .line 668
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
    .line 870
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

    .line 871
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v2, v3, :cond_8

    .line 875
    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    goto :goto_1a
.end method

.method private restMinReached(J)Z
    .registers 10

    .prologue
    .line 757
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneRest:D

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private restRecovered()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 749
    .line 750
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

    .line 751
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

    .line 753
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

    .line 751
    goto :goto_2d

    :cond_3c
    move v1, v2

    .line 753
    goto :goto_39

    :cond_3e
    move v0, v1

    goto :goto_2d
.end method

.method private silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;
    .registers 8

    .prologue
    .line 1174
    new-instance v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 1175
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 1176
    :goto_17
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 1177
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 1178
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 1179
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 1180
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 1181
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 1182
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 1183
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    .line 1184
    return-object v1

    .line 1175
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

    .line 1153
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_38

    .line 1154
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

    .line 1155
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrAtEnd:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    .line 1157
    :cond_34
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 1159
    :cond_38
    return-void
.end method

.method private tickRest(J)V
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 727
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v2, :cond_7

    .line 746
    :cond_6
    :goto_6
    return-void

    .line 730
    :cond_7
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v2, v4

    .line 731
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->restRecovered()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneRest:D

    mul-double/2addr v2, v6

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_4a

    move v2, v0

    .line 732
    :goto_23
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_4c

    .line 733
    :goto_29
    if-nez v2, :cond_2d

    if-eqz v0, :cond_6

    .line 736
    :cond_2d
    if-nez v2, :cond_3e

    .line 737
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phiScale:D

    .line 738
    const-string v0, "rest_timeout"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 740
    :cond_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 741
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->markRestReady(J)V

    goto :goto_6

    :cond_4a
    move v2, v1

    .line 731
    goto :goto_23

    :cond_4c
    move v0, v1

    .line 732
    goto :goto_29

    .line 744
    :cond_4e
    invoke-direct {p0, v4, v5, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->closeRestStats(DJ)V

    .line 745
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    goto :goto_6
.end method

.method private trackCorridor(D)V
    .registers 8

    .prologue
    .line 1162
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

    .line 1171
    :cond_20
    :goto_20
    return-void

    .line 1165
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    .line 1166
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorTotalS:D

    .line 1167
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

    .line 1168
    :goto_4d
    if-eqz v0, :cond_20

    .line 1169
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->corridorInS:D

    goto :goto_20

    .line 1167
    :cond_55
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method private useHrControl()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1027
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

    .line 380
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

    .line 395
    :cond_18
    :goto_18
    return-void

    .line 383
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    if-le p1, v0, :cond_47

    .line 384
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

    .line 385
    const-string v0, "cr10_down"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 393
    :goto_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 394
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    goto :goto_18

    .line 386
    :cond_47
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    if-ge p1, v0, :cond_69

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_69

    .line 388
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    mul-double/2addr v0, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    .line 389
    const-string v0, "cr10_up"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_3e

    .line 391
    :cond_69
    const-string v0, "cr10_ok"

    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_3e
.end method

.method public cHr()D
    .registers 11

    .prologue
    const-wide/16 v0, 0x0

    .line 1018
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->useHrControl()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1023
    :goto_8
    return-wide v0

    .line 1021
    :cond_9
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 1022
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

    .line 1023
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

    .line 253
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

    .line 260
    :cond_18
    :goto_18
    return v0

    .line 256
    :cond_19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v1, v2, :cond_18

    .line 259
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    .line 260
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
    .line 265
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
    .line 1267
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

    .line 330
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-nez v0, :cond_12

    :cond_10
    move v0, v2

    .line 340
    :goto_11
    return v0

    .line 333
    :cond_12
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3d

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    div-double/2addr v0, v6

    .line 334
    :goto_20
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-direct {p0, v4, v5, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->closeRestStats(DJ)V

    .line 335
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->applyIdle(DJ)V

    .line 336
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 337
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 338
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 339
    const-string v0, "continue"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 340
    const/4 v0, 0x1

    goto :goto_11

    .line 333
    :cond_3d
    const-wide/16 v0, 0x0

    goto :goto_20
.end method

.method public endActiveIn(DJ)V
    .registers 16

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    add-double v6, v0, v2

    .line 790
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AiEngine;->firstIndexOf(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v1

    .line 791
    const-wide/16 v4, 0x0

    .line 792
    const/4 v0, 0x0

    move v2, v0

    :goto_19
    if-gez v1, :cond_37

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_23
    if-ge v2, v0, :cond_39

    .line 793
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v8, v0

    add-double/2addr v4, v8

    .line 792
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_37
    move v0, v1

    goto :goto_23

    .line 795
    :cond_39
    cmpl-double v0, v6, v4

    if-ltz v0, :cond_3e

    .line 802
    :cond_3d
    :goto_3d
    return-void

    .line 798
    :cond_3e
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endAtS:D

    .line 799
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_3d

    .line 800
    invoke-direct {p0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    goto :goto_3d
.end method

.method public endSet()V
    .registers 3

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_d

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->setDone:Z

    .line 232
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
    .line 1355
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->blocks:Ljava/util/List;

    return-object v0
.end method

.method public getCapHits()I
    .registers 2

    .prologue
    .line 1367
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->capHits:I

    return v0
.end method

.method public getCeilingScale()D
    .registers 3

    .prologue
    .line 1327
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->ceilingScale:D

    return-wide v0
.end method

.method public getCorridorShare()D
    .registers 5

    .prologue
    .line 1371
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
    .line 1335
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    return-object v0
.end method

.method public getCurrentFrac()D
    .registers 3

    .prologue
    .line 1331
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
    .line 1283
    const-wide/16 v2, 0x0

    .line 1284
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

    .line 1285
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 1284
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1287
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
    .line 1391
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    return-wide v0
.end method

.method public getFatigue()D
    .registers 3

    .prologue
    .line 1303
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    return-wide v0
.end method

.method public getFatigueMax()D
    .registers 3

    .prologue
    .line 1307
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    return-wide v0
.end method

.method public getFatigueRec()D
    .registers 3

    .prologue
    .line 1251
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
    .line 1359
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    return-object v0
.end method

.method public getHrAgeMs(J)J
    .registers 6

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHrFilter()Lcom/isaigu/gymapp/ai/AiHrFilter;
    .registers 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    return-object v0
.end method

.method public getHrS()D
    .registers 3

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHrr60()D
    .registers 3

    .prologue
    .line 1379
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hrr60:D

    return-wide v0
.end method

.method public getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    return-object v0
.end method

.method public getLCount(I)I
    .registers 3

    .prologue
    .line 1363
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
    .line 1343
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActionMs()J
    .registers 3

    .prologue
    .line 1347
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
    .line 1351
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->log:Ljava/util/List;

    return-object v0
.end method

.method public getPauseReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    return-object v0
.end method

.method public getPhaseElapsedS()D
    .registers 3

    .prologue
    .line 1279
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    return-wide v0
.end method

.method public getPhaseIndex()I
    .registers 2

    .prologue
    .line 1275
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    return v0
.end method

.method public getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 2

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    return-object v0
.end method

.method public getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;
    .registers 2

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    return-object v0
.end method

.method public getQBudget()D
    .registers 3

    .prologue
    .line 1315
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    return-wide v0
.end method

.method public getQUsed()D
    .registers 3

    .prologue
    .line 1311
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qUsed:D

    return-wide v0
.end method

.method public getRecoveryRemainingMs(J)J
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    .line 1383
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
    .line 1255
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    return-wide v0
.end method

.method public getRestMinS()D
    .registers 3

    .prologue
    .line 1247
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    return-wide v0
.end method

.method public getRestOverS(J)D
    .registers 8

    .prologue
    .line 1221
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

    .line 1229
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v0, :cond_e

    :cond_c
    move-wide v0, v2

    .line 1236
    :goto_d
    return-wide v0

    .line 1232
    :cond_e
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tRestMinS:D

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestS(J)D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1233
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3f

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpl-double v4, v4, v2

    if-lez v4, :cond_3f

    .line 1234
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

    .line 1236
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
    .line 1216
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
    .line 1375
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->sessionMaxX:D

    return-wide v0
.end method

.method public getStartMs()J
    .registers 3

    .prologue
    .line 1387
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    return-wide v0
.end method

.method public getState()Lcom/isaigu/gymapp/ai/AiEngine$State;
    .registers 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    return-object v0
.end method

.method public getTotalIdleS()D
    .registers 3

    .prologue
    .line 1259
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->totalIdleS:D

    return-wide v0
.end method

.method public getTuneHz()D
    .registers 3

    .prologue
    .line 780
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneHz:D

    return-wide v0
.end method

.method public getTuneOff()I
    .registers 2

    .prologue
    .line 776
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneOff:I

    return v0
.end method

.method public getTuneOn()I
    .registers 2

    .prologue
    .line 772
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneOn:I

    return v0
.end method

.method public getTuneRest()D
    .registers 3

    .prologue
    .line 784
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneRest:D

    return-wide v0
.end method

.method public getU()D
    .registers 3

    .prologue
    .line 1319
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->u:D

    return-wide v0
.end method

.method public getUUser()D
    .registers 3

    .prologue
    .line 1323
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    return-wide v0
.end method

.method public getX()D
    .registers 5

    .prologue
    .line 1299
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
    .line 244
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v0

    if-nez v0, :cond_7

    .line 249
    :goto_6
    return-void

    .line 247
    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 248
    const-string v0, "increase"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_6
.end method

.method public isActivePause(J)Z
    .registers 6

    .prologue
    .line 417
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

    .line 270
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

    .line 279
    :goto_14
    return v0

    .line 273
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    move v1, v0

    :goto_18
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    .line 274
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 275
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

    .line 276
    :cond_40
    const/4 v0, 0x1

    goto :goto_14

    .line 273
    :cond_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    :cond_46
    move v0, v2

    .line 279
    goto :goto_14
.end method

.method public isActivePauseOn()Z
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    return v0
.end method

.method public isFrozen()Z
    .registers 2

    .prologue
    .line 1399
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->frozen:Z

    return v0
.end method

.method public isInBlock()Z
    .registers 2

    .prologue
    .line 1395
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    return v0
.end method

.method public isManualContinue()Z
    .registers 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    return v0
.end method

.method public isRestHrOk()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 1240
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

    .line 1243
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
    .line 1208
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
    .line 1339
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
    .line 432
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v4, v5, :cond_13

    .line 434
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    .line 512
    :goto_12
    return-object v4

    .line 436
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    move-object/from16 v16, v4

    .line 438
    :goto_19
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    move-object/from16 v0, v16

    iget v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_38

    .line 439
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->advancePhase(J)Z

    move-result v4

    if-nez v4, :cond_31

    .line 440
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    goto :goto_12

    .line 442
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_19

    .line 444
    :cond_38
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v4, v5, :cond_49

    .line 445
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-nez v4, :cond_5a

    .line 446
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->beginBlock(J)V

    .line 453
    :cond_49
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->checkCheckpoint(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 454
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    goto :goto_12

    .line 447
    :cond_5a
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockQ:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_9f

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->nextPeak(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v4

    :goto_6c
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_96

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-nez v4, :cond_96

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->setDone:Z

    if-nez v4, :cond_96

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->blockStartMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_49

    .line 449
    :cond_96
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlock(J)V

    .line 450
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    goto/16 :goto_12

    .line 447
    :cond_9f
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->fatigue:D

    goto :goto_6c

    .line 456
    :cond_a4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->controlPerCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;J)V

    .line 457
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->endBlockRequested:Z

    if-eqz v4, :cond_c2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v4, :cond_c2

    .line 458
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->endBlock(J)V

    .line 459
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->silent(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    goto/16 :goto_12

    .line 462
    :cond_c2
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_2be

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    if-eqz v4, :cond_2be

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 463
    :goto_d2
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_e3

    .line 464
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    if-nez v4, :cond_2c4

    const/4 v4, 0x1

    :goto_df
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->useB:Z

    .line 466
    :cond_e3
    new-instance v17, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    invoke-direct/range {v17 .. v17}, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;-><init>()V

    .line 467
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    move-object/from16 v0, v17

    iput v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 468
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    move-object/from16 v0, v17

    iput v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pwUs:I

    .line 469
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    move-object/from16 v0, v17

    iput v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 470
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_2c7

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-ne v8, v4, :cond_2c7

    const/4 v4, 0x1

    :goto_107
    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    .line 471
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->segmentB:Z

    if-eqz v4, :cond_2ca

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->currentSigmaB(Lcom/isaigu/gymapp/ai/AiModel$Phase;)D

    move-result-wide v4

    .line 472
    :goto_119
    iget v6, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    .line 473
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v7

    if-eqz v7, :cond_151

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v10, v12

    if-lez v7, :cond_151

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->isControlPhase(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v7

    if-eqz v7, :cond_151

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v7

    if-nez v7, :cond_151

    .line 474
    iget v6, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEngine;->offFactor:D

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 476
    :cond_151
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v6

    move-object/from16 v0, v17

    iput v6, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 477
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->arbiter(Lcom/isaigu/gymapp/ai/AiModel$Phase;D)D

    move-result-wide v4

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 478
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    if-eqz v4, :cond_17d

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v4

    if-eqz v4, :cond_17d

    .line 479
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    move-object/from16 v0, v17

    iput v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 480
    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    .line 482
    :cond_17d
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v4, v5, :cond_1b4

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1b4

    .line 484
    move-object/from16 v0, v17

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->fMaxEff:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    move-object/from16 v0, v17

    iget v9, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    move-object/from16 v0, v17

    iget v10, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-lez v10, :cond_2ce

    const/4 v10, 0x1

    :goto_1a8
    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/ai/AiPlanner;->continuousCap(DDLcom/isaigu/gymapp/ai/AiModel$CycleSpec;IZ)D

    move-result-wide v4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    .line 486
    :cond_1b4
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v4

    if-eqz v4, :cond_265

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneOn:I

    if-nez v4, :cond_1d0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneOff:I

    if-nez v4, :cond_1d0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneHz:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_265

    .line 487
    :cond_1d0
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    const/16 v5, 0x32

    if-lt v4, v5, :cond_2d1

    const/4 v4, 0x6

    .line 488
    :goto_1d7
    iget v5, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneOn:I

    add-int/2addr v5, v6

    int-to-double v10, v5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    iget v5, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v14, v4

    invoke-static/range {v10 .. v15}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v4

    double-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    .line 489
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneHz:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 490
    int-to-double v10, v4

    const-wide/16 v4, 0x14

    iget v6, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    int-to-double v6, v6

    const-wide v12, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-double v12, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 491
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v4

    int-to-long v4, v4

    iget v6, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    int-to-double v6, v6

    const-wide v14, 0x3ff2666666666666L    # 1.15

    mul-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-double v14, v4

    .line 490
    invoke-static/range {v10 .. v15}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v4

    double-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->hz:I

    .line 492
    move-object/from16 v0, v17

    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    int-to-double v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v4, v5, :cond_2d5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_24a
    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 493
    move-object/from16 v0, v17

    iget v5, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneOff:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    .line 495
    :cond_265
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lcom/isaigu/gymapp/ai/AiEngine;->applyRamps(Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 498
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    invoke-static {v8, v4, v5}, Lcom/isaigu/gymapp/ai/AiPlanner;->cycleDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;D)D

    move-result-wide v6

    .line 499
    move-object/from16 v0, v17

    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    if-lez v4, :cond_2dc

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    move-object/from16 v0, v17

    iget v9, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    invoke-static {v8, v4, v5, v9}, Lcom/isaigu/gymapp/ai/AiPlanner;->pauseDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;DI)D

    move-result-wide v4

    :goto_286
    add-double/2addr v4, v6

    .line 500
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v6, v7, :cond_2df

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

    if-lez v4, :cond_2df

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->flags:Ljava/util/List;

    const-string v5, "BUDGET"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    const-string v4, "budget_cooldown"

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 503
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 504
    invoke-virtual/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    move-result-object v4

    goto/16 :goto_12

    .line 462
    :cond_2be
    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    goto/16 :goto_d2

    .line 464
    :cond_2c4
    const/4 v4, 0x0

    goto/16 :goto_df

    .line 470
    :cond_2c7
    const/4 v4, 0x0

    goto/16 :goto_107

    .line 471
    :cond_2ca
    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    goto/16 :goto_119

    .line 484
    :cond_2ce
    const/4 v10, 0x0

    goto/16 :goto_1a8

    .line 487
    :cond_2d1
    const/16 v4, 0xa

    goto/16 :goto_1d7

    .line 492
    :cond_2d5
    const-wide v4, 0x3fe51eb851eb851fL    # 0.66

    goto/16 :goto_24a

    .line 499
    :cond_2dc
    const-wide/16 v4, 0x0

    goto :goto_286

    .line 506
    :cond_2df
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_307

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_307

    .line 507
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    const-wide v10, 0x3fb999999999999aL    # 0.1

    add-double/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEngine;->reentry:D

    .line 509
    :cond_307
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    .line 510
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 511
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AiEngine;->cycleStartMs:J

    move-object/from16 v4, v17

    .line 512
    goto/16 :goto_12
.end method

.method public onHr(JI)V
    .registers 13

    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isStimOnAt(J)Z

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->onSample(JIZ)Z

    .line 402
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3a

    .line 403
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

    .line 405
    :cond_3a
    return-void
.end method

.method public phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;
    .registers 4

    .prologue
    .line 1271
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

    .line 235
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    sub-double/2addr v0, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->uUser:D

    .line 236
    const-string v0, "reduce"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 237
    return-void
.end method

.method public reduceTo(DJ)V
    .registers 16

    .prologue
    .line 312
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

    .line 313
    const-string v0, "reduce"

    invoke-direct {p0, v0, p3, p4}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 314
    return-void
.end method

.method public resume(J)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    .line 356
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_41

    .line 357
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 358
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3e

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 359
    :goto_20
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 360
    const-string v2, "resume"

    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 361
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3a

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_3a

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    if-eqz v2, :cond_3a

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->beginBlock(J)V

    .line 365
    :cond_3a
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->applyIdle(DJ)V

    .line 376
    :cond_3d
    :goto_3d
    return-void

    .line 358
    :cond_3e
    const-wide/16 v0, 0x0

    goto :goto_20

    .line 366
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_3d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    if-eqz v0, :cond_3d

    .line 367
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 368
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restStartMs:J

    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restHr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 370
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    .line 371
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReadyMs:J

    .line 372
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->canResume:Z

    .line 373
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->stimPauseRecoverSinceMs:J

    .line 374
    const-string v0, "resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_3d
.end method

.method public setActivePause(ZJ)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    .line 288
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    if-eq p1, v0, :cond_e

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 308
    :cond_e
    :goto_e
    return-void

    .line 291
    :cond_f
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOn:D

    move-wide v2, v0

    .line 292
    :goto_18
    if-eqz p1, :cond_66

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOn:D

    .line 293
    :goto_1e
    cmpl-double v4, v2, v6

    if-lez v4, :cond_2c

    cmpl-double v4, v0, v6

    if-lez v4, :cond_2c

    .line 294
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->qBudget:D

    .line 296
    :cond_2c
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseOn:Z

    .line 298
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_58

    .line 299
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

    .line 300
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->currentSpec:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    .line 307
    :cond_58
    :goto_58
    if-eqz p1, :cond_77

    const-string v0, "pause_on"

    :goto_5c
    invoke-direct {p0, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_e

    .line 291
    :cond_60
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOff:D

    move-wide v2, v0

    goto :goto_18

    .line 292
    :cond_66
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOff:D

    goto :goto_1e

    .line 302
    :cond_6b
    if-nez p1, :cond_58

    .line 303
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseHz:I

    .line 304
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->pauseSigma:D

    goto :goto_58

    .line 307
    :cond_77
    const-string v0, "pause_off"

    goto :goto_5c
.end method

.method public setTune(IIDD)V
    .registers 14

    .prologue
    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    .line 765
    int-to-double v0, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneOn:I

    .line 766
    int-to-double v0, p2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneOff:I

    .line 767
    const-wide v2, 0x3feb333333333333L    # 0.85

    const-wide v4, 0x3ff2666666666666L    # 1.15

    move-wide v0, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneHz:D

    .line 768
    const-wide v2, 0x3fe6666666666666L    # 0.7

    const-wide v4, 0x3ff999999999999aL    # 1.6

    move-wide v0, p5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEngine;->clamp(DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->tuneRest:D

    .line 769
    return-void
.end method

.method public start(J)V
    .registers 6

    .prologue
    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_7

    .line 214
    :goto_6
    return-void

    .line 205
    :cond_7
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->startMs:J

    .line 206
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 207
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseIdx:I

    .line 209
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 210
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_25

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->hr:Lcom/isaigu/gymapp/ai/AiHrFilter;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->prof:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->seed(IJ)V

    .line 213
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
    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_d

    .line 224
    :cond_c
    :goto_c
    return-void

    .line 221
    :cond_d
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endMs:J

    .line 222
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 223
    const-string v0, "stop"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    goto :goto_c
.end method

.method public tick(J)V
    .registers 12

    .prologue
    .line 518
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 519
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 521
    :cond_a
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x7d0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v2, v0, v2

    .line 523
    const-wide/16 v0, 0x0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    sub-long v4, p1, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v0, v4

    .line 524
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastTickMs:J

    .line 525
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_48

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_48

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_49

    .line 579
    :cond_48
    :goto_48
    return-void

    .line 528
    :cond_49
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_53

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->tickRecovery(J)V

    goto :goto_48

    .line 532
    :cond_53
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->integrate(JD)V

    .line 533
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->guards(JD)V

    .line 534
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endAtS:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_77

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endAtS:D

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_77

    .line 535
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->endAtS:D

    .line 536
    const-string v0, "coach_end_early"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 537
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 540
    :cond_77
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_12f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-eqz v0, :cond_12f

    const/4 v0, 0x1

    .line 541
    :goto_82
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v6, :cond_9a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v6, :cond_9a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v6, :cond_9a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v6, :cond_9f

    .line 545
    :cond_9a
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    .line 547
    :cond_9f
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v1, v4, :cond_ad

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v4, :cond_b0

    if-nez v0, :cond_b0

    .line 548
    :cond_ad
    invoke-direct {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->trackCorridor(D)V

    .line 550
    :cond_b0
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_db

    .line 551
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->tickRest(J)V

    .line 552
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->phaseElapsedS:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_db

    .line 553
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->isTraining()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 556
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->restReady:Z

    if-nez v0, :cond_db

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->restMinReached(J)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->markRestReady(J)V

    .line 566
    :cond_db
    :goto_db
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_100

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_100

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->checkpointSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_100

    .line 568
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 569
    const-string v0, "checkpoint"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->pauseReason:Ljava/lang/String;

    .line 570
    const-string v0, "checkpoint_timeout"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 573
    :cond_100
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_48

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_48

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->current:Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    if-eqz v0, :cond_48

    .line 574
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

    .line 575
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEngine;->lastCycleMs:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_48

    .line 576
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;

    goto/16 :goto_48

    .line 540
    :cond_12f
    const/4 v0, 0x0

    goto/16 :goto_82

    .line 561
    :cond_132
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->inBlock:Z

    goto :goto_db
.end method

.method public toCooldown(J)V
    .registers 4

    .prologue
    .line 806
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->jumpToCooldown(J)V

    .line 807
    return-void
.end method

.method public userPause(J)V
    .registers 6

    .prologue
    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_1b

    .line 318
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->resumeState:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 319
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiEngine;->state:Lcom/isaigu/gymapp/ai/AiEngine$State;

    .line 320
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEngine;->userPauseStartMs:J

    .line 321
    const-string v0, "user_pause"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->action(Ljava/lang/String;J)V

    .line 323
    :cond_1b
    return-void
.end method
