.class public final Lcom/isaigu/gymapp/ai/AutoEngine;
.super Ljava/lang/Object;
.source "AutoEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;,
        Lcom/isaigu/gymapp/ai/AutoEngine$State;,
        Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    }
.end annotation


# static fields
.field static final ACTIVE_SHARE:D = 0.35

.field public static final COUNTDOWN_MS:J = 0xbb8L

.field public static final CRITICAL_PAUSE_S:I = 0x2d

.field public static final DELTOID:I = 0xa

.field static final DOSE_GAIN:D = 0.15

.field public static final EV_BACK:I = 0x3

.field public static final EV_STEP_HEART:I = 0x2

.field public static final EV_STEP_TIME:I = 0x1

.field public static final EX_LOAD:D = 0.25

.field static final EX_SHOULDERS:I = 0x5

.field static final EX_ZONE:D = 0.25

.field private static final FALLBACK_SLACK_MS:J = 0x5dcL

.field static final FAT_REF:D = 25.0

.field static final FAT_SCALE:D = 35.0

.field static final HR_GAIN_LEARN:D = 0.08

.field static final HR_GAP_TAU_S:D = 60.0

.field private static final HR_RESUME_HOLD_MS:J = 0x4e20L

.field static final HR_SHARE:D = 0.6

.field private static final HR_STALE_MS:J = 0x2710L

.field public static final NEXT_RECOVERY:Ljava/lang/String; = ""

.field static final PW_REF:D = 350.0

.field public static final REST_FLOOR_S:I = 0x8

.field public static final REST_FLOOR_TETANIC_S:I = 0xf

.field public static final REST_HR_BELOW_CAP:I = 0xf

.field public static final REST_MAX_S:I = 0x78

.field public static final REST_SOFT_FROM_S:I = 0xb4

.field public static final SET_END_HR_BELOW_CAP:I = 0x5

.field public static final STATION_MAX_S:I = 0x28

.field public static final STATION_MIN_S:I = 0x1e

.field public static final STATION_REST_FROM_S:I = 0xa

.field static final TARGET_SHARE:D = 0.5

.field public static final TRACE_CYCLE:F = 0.0f

.field public static final TRACE_HR_PAUSE:F = 2.0f

.field public static final TRACE_REST:F = 1.0f

.field static final TRACE_WAIT_S:D = 4.0

.field static final VO2_TAU_S:D = 40.0

.field public static final ZONES:I = 0xb

.field static final ZONE_ON:I = 0x2


# instance fields
.field private adaptHzPct:I

.field private adaptOff:I

.field private apIdx:I

.field private apKey:I

.field private apPhase:I

.field private apPrev:I

.field private apPrev2:I

.field private apSetN:I

.field private apUsed:[I

.field private capHits:I

.field private chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

.field private final chF:[D

.field private chFMs:J

.field private continuous:Z

.field private corridorExt:I

.field private countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

.field private counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

.field private current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

.field private doseBudget:D

.field private doseDone:D

.field private doseExt:I

.field private doseStopped:Z

.field private doublePulse:Z

.field private elapsedS:D

.field private final end:Lcom/isaigu/gymapp/ai/Endurance;

.field private endAtS:D

.field private endMs:J

.field private final events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private final fMax:D

.field private final fRec:D

.field private fatPct:D

.field private fixedNext:I

.field private forecasting:Z

.field private goMs:J

.field private hr:I

.field private hrCount:I

.field private hrEndedSets:I

.field private hrGain:D

.field private hrGap:D

.field private hrGapMs:J

.field private hrKnownS:D

.field private hrMaxSeen:I

.field private hrMs:J

.field private hrOkSinceMs:J

.field private hrStep:Z

.field private hrSum:D

.field private imposedS:D

.field private impulseName:Ljava/lang/String;

.field private inCorridorS:D

.field private jumpedS:D

.field private lastRestMinS:I

.field private lastSetS:D

.field private lastTickMs:J

.field private liveRho:D

.field private liveZones:[I

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

.field private manualStops:I

.field private metaMs:J

.field private metaV:D

.field private pauseStartMs:J

.field private phaseIndex:I

.field private final plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

.field private qPlanned:D

.field private qUsed:D

.field private raiseLocked:Z

.field private reentry:D

.field private restBeforeCooldown:Z

.field private restCount:I

.field private restMinS:I

.field private restStartMs:J

.field private restSumS:D

.field private resumeNeedsConfirm:Z

.field private runS:D

.field private safeHzCut:I

.field private script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

.field private sectorIdx:I

.field private skippedS:D

.field private startMs:J

.field private state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

.field private stationIndex:I

.field private stationPhase:I

.field private stationPhases:[Z

.field private stationS:D

.field private stationsDone:I

.field private stepIndex:I

.field private stretchUsedS:D

.field private final tauR:D

.field private totalPauseS:D

.field private final trace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field private tuneHzPct:I

.field private tuneOff:I

.field private tuneOn:I

.field private tunePwPct:I

.field private tuneRest:D

.field private userHz:I

.field private userOff:I

.field private userOn:I

.field private userPw:I

.field private userScale:D

.field private userScaleMax:D

.field private vetoHz:I

.field private vetoOff:I

.field private vetoOn:I

.field private vo2Ref:[D

.field private zoneBudget:[D

.field private zoneDone:[D

.field private zoneExBudget:[D

.field private zoneExDone:[D


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V
    .registers 11

    .prologue
    const/16 v8, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v3, -0x1

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 86
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    .line 92
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneRest:D

    .line 100
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    .line 101
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    .line 102
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    .line 106
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apKey:I

    .line 107
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    .line 108
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    .line 109
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev2:I

    .line 110
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPhase:I

    .line 112
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    .line 113
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->sectorIdx:I

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    .line 117
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->events:Ljava/util/ArrayList;

    .line 256
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 265
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 266
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    .line 270
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 288
    const/16 v0, 0xa

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    .line 294
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    .line 307
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    .line 309
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastRestMinS:I

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    .line 316
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 320
    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    .line 1437
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    .line 1440
    new-array v0, v8, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    .line 1441
    new-array v0, v8, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExDone:[D

    .line 1444
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 2171
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    .line 2177
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGapMs:J

    .line 327
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 328
    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_a9

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v0, :cond_a9

    move v0, v1

    :goto_86
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    .line 329
    new-instance v0, Lcom/isaigu/gymapp/ai/Endurance;

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/ai/Endurance;-><init>(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    .line 330
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v0

    .line 331
    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    .line 332
    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    .line 333
    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    .line 334
    return-void

    :cond_a9
    move v0, v2

    .line 328
    goto :goto_86
.end method

.method private adaptFor(IJ)V
    .registers 10

    .prologue
    const/16 v4, 0x23

    const/16 v3, 0x3c

    const/4 v1, 0x0

    .line 242
    if-lt p1, v3, :cond_57

    const/4 v0, 0x3

    .line 243
    :goto_8
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    if-lt v2, v3, :cond_16

    if-lt p1, v3, :cond_63

    const/16 v1, 0xf

    .line 245
    :cond_16
    :goto_16
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptOff:I

    if-lt v0, v2, :cond_68

    :goto_1a
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptOff:I

    .line 246
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptHzPct:I

    if-lt v1, v0, :cond_71

    :goto_20
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptHzPct:I

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "continuous: rest need "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s \u2192 pause +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptOff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s, Hz \u2212"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptHzPct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 248
    return-void

    .line 242
    :cond_57
    if-lt p1, v4, :cond_5b

    const/4 v0, 0x2

    goto :goto_8

    :cond_5b
    const/16 v0, 0x12

    if-lt p1, v0, :cond_61

    const/4 v0, 0x1

    goto :goto_8

    :cond_61
    move v0, v1

    goto :goto_8

    .line 243
    :cond_63
    if-lt p1, v4, :cond_16

    const/16 v1, 0xa

    goto :goto_16

    .line 245
    :cond_68
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptOff:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1a

    .line 246
    :cond_71
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptHzPct:I

    add-int/lit8 v0, v0, -0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_20
.end method

.method private advance(J)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 1828
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1829
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 1830
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->clockRuns()Z

    move-result v2

    if-eqz v2, :cond_1d

    cmpg-double v2, v0, v4

    if-gtz v2, :cond_1e

    .line 1844
    :cond_1d
    :goto_1d
    return-void

    .line 1833
    :cond_1e
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stretchUsedS:D

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoPlanner;->stretchS(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)I

    move-result v4

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4a

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->hrImposed(J)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1835
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoPlanner;->stretchS(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stretchUsedS:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1836
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stretchUsedS:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stretchUsedS:D

    .line 1837
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    .line 1838
    sub-double/2addr v0, v2

    .line 1840
    :cond_4a
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 1841
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_1d

    .line 1842
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->runS:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->runS:D

    goto :goto_1d
.end method

.method private build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 26

    .prologue
    .line 2420
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int v5, p2, v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 2421
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_47b

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    add-int/lit8 v6, p2, 0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 2422
    :goto_34
    const/4 v7, 0x0

    .line 2424
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v12

    .line 2425
    if-eqz v12, :cond_47e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->approaches(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v6

    .line 2427
    :goto_4b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v8, :cond_481

    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 2428
    :goto_54
    if-eqz v6, :cond_4bf

    .line 2429
    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    const v9, 0x186a0

    mul-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    add-int v12, v8, v9

    .line 2430
    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apKey:I

    if-eq v12, v8, :cond_21d

    .line 2431
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPhase:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v7, v8, :cond_92

    .line 2432
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPhase:I

    .line 2433
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    .line 2434
    const/4 v7, -0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev2:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    .line 2435
    const/16 v7, 0x8

    new-array v7, v7, [I

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    .line 2437
    :cond_92
    new-instance v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;

    invoke-direct {v13}, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;-><init>()V

    .line 2438
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    const-wide/16 v16, 0x0

    cmpl-double v7, v8, v16

    if-lez v7, :cond_49e

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    :goto_b7
    sub-double v8, v14, v8

    iput-wide v8, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->fresh:D

    .line 2439
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-lez v7, :cond_4a2

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    sub-long v8, p3, v8

    const-wide/16 v14, 0x2710

    cmp-long v7, v8, v14

    if-gtz v7, :cond_4a2

    const/4 v7, 0x1

    move v8, v7

    .line 2440
    :goto_cf
    if-eqz v8, :cond_4a6

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->hrNearCap(J)Z

    move-result v7

    if-nez v7, :cond_f3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v9, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v7, v9, :cond_4a6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v9

    if-le v7, v9, :cond_4a6

    :cond_f3
    const/4 v7, 0x1

    :goto_f4
    iput-boolean v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrHigh:Z

    .line 2441
    if-eqz v8, :cond_4a9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v8, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v7, v8, :cond_4a9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorLoHr()I

    move-result v8

    if-ge v7, v8, :cond_4a9

    const/4 v7, 0x1

    :goto_111
    iput-boolean v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrLow:Z

    .line 2442
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    const-wide/16 v14, 0x0

    cmpl-double v7, v8, v14

    if-lez v7, :cond_4ac

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    div-double/2addr v8, v14

    :goto_126
    iput-wide v8, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->dose:D

    .line 2443
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v7, :cond_4b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    :goto_138
    iput v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->sessions:I

    .line 2444
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    iput v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->set:I

    .line 2445
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    iput v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev:I

    .line 2446
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev2:I

    iput v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev2:I

    .line 2447
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    if-lez v7, :cond_4b3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    :goto_169
    iput-wide v8, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->progress:D

    .line 2448
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    iput-object v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    .line 2449
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v13}, Lcom/isaigu/gymapp/ai/AutoDynamics;->pick([Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    .line 2450
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev2:I

    .line 2451
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    .line 2452
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    array-length v8, v8

    if-ge v7, v8, :cond_1a9

    .line 2453
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    .line 2455
    :cond_1a9
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    .line 2456
    move-object/from16 v0, p0

    iput v12, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apKey:I

    .line 2457
    const/4 v8, 0x1

    .line 2458
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    aget-object v7, v6, v7

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->name()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    .line 2459
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set approach "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    aget-object v9, v6, v9

    iget-object v9, v9, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->id:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " fresh="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v14, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->fresh:D

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " dose="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v14, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->dose:D

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2460
    iget-boolean v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrHigh:Z

    if-eqz v7, :cond_4b7

    const-string v7, " hr-high"

    :goto_203
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrLow:Z

    if-eqz v7, :cond_4bb

    const-string v7, " hr-low"

    :goto_20d
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2459
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    move v7, v8

    .line 2462
    :cond_21d
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    invoke-static {v4, v6, v10, v11, v8}, Lcom/isaigu/gymapp/ai/AutoDynamics;->apply(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;DZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 2480
    :goto_232
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v8

    .line 2481
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    if-lez v6, :cond_242

    .line 2482
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 2484
    :cond_242
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    if-lez v6, :cond_24e

    .line 2485
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 2487
    :cond_24e
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    if-lez v6, :cond_25a

    .line 2488
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 2490
    :cond_25a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    if-lez v6, :cond_266

    .line 2491
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    .line 2493
    :cond_266
    iget v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 2494
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v6, :cond_29b

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v6

    if-eqz v6, :cond_29b

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v6

    if-nez v6, :cond_29b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    if-lez v6, :cond_29b

    .line 2495
    const/16 v6, 0x14

    iget v9, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    sub-int/2addr v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 2497
    :cond_29b
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v6

    if-eqz v6, :cond_307

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v6

    if-nez v6, :cond_307

    const-string v6, "WARMUP"

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_307

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoHz:I

    if-gtz v6, :cond_2c5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOn:I

    if-gtz v6, :cond_2c5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOff:I

    if-lez v6, :cond_307

    .line 2498
    :cond_2c5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoHz:I

    if-lez v6, :cond_2ef

    .line 2499
    const/16 v9, 0x14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v6, :cond_53e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    :goto_2dd
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoHz:I

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 2501
    :cond_2ef
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOn:I

    if-lez v6, :cond_2fb

    .line 2502
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOn:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 2504
    :cond_2fb
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOff:I

    if-lez v6, :cond_307

    .line 2505
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOff:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 2508
    :cond_307
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v6

    if-eqz v6, :cond_358

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOn:I

    if-nez v6, :cond_31f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOff:I

    if-nez v6, :cond_31f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneHzPct:I

    if-eqz v6, :cond_358

    .line 2509
    :cond_31f
    const/4 v6, 0x1

    iget v9, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOn:I

    add-int/2addr v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 2510
    const/4 v6, 0x1

    iget v9, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOff:I

    add-int/2addr v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 2511
    const/16 v6, 0x14

    iget v9, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    int-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneHzPct:I

    int-to-double v14, v9

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 2513
    :cond_358
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->tunePwPct:I

    if-eqz v6, :cond_37b

    .line 2514
    const/16 v6, 0x32

    iget v9, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    int-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->tunePwPct:I

    int-to-double v14, v9

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    .line 2516
    :cond_37b
    iget v9, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v6, :cond_542

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    :goto_389
    iget v10, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-static {v9, v6, v10, v7}, Lcom/isaigu/gymapp/ai/AutoDynamics;->ramp(IIIZ)I

    move-result v6

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 2517
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object/from16 v0, p1

    invoke-static {v8, v5, v6, v0}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v8

    .line 2518
    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v5, :cond_545

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v6

    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v10, v5

    div-double/2addr v6, v10

    .line 2519
    :goto_3ab
    new-instance v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {v9}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;-><init>()V

    .line 2520
    iput-object v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 2521
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    .line 2522
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    .line 2523
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    .line 2524
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    .line 2525
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    .line 2526
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    .line 2527
    iget-object v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    iput-object v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    .line 2528
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    .line 2529
    move/from16 v0, p2

    iput v0, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->stepIndex:I

    .line 2530
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiAt(D)D

    move-result-wide v4

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    .line 2531
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envAt(D)D

    move-result-wide v4

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->env:D

    .line 2532
    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    mul-double/2addr v4, v10

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    .line 2533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v10, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 2534
    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    mul-double/2addr v4, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    mul-double/2addr v4, v10

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    .line 2535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envAt(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    mul-double/2addr v4, v6

    iget-wide v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    mul-double/2addr v4, v6

    .line 2536
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    if-eqz v6, :cond_549

    iget-wide v6, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iget-wide v6, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    mul-double/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 2537
    :goto_443
    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->ceiling:D

    .line 2538
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v4, :cond_47a

    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v4, :cond_47a

    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_47a

    .line 2539
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    .line 2540
    iget-wide v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v4

    if-eqz v4, :cond_551

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd999999999999aL    # 0.4

    iget-wide v12, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    div-double/2addr v10, v12

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    :goto_477
    mul-double/2addr v4, v6

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    .line 2542
    :cond_47a
    return-object v9

    .line 2421
    :cond_47b
    const/4 v5, 0x0

    goto/16 :goto_34

    .line 2425
    :cond_47e
    const/4 v6, 0x0

    goto/16 :goto_4b

    .line 2427
    :cond_481
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_49b

    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v8, v10

    :goto_494
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AutoDynamics;->glide(D)D

    move-result-wide v8

    move-wide v10, v8

    goto/16 :goto_54

    :cond_49b
    const-wide/16 v8, 0x0

    goto :goto_494

    .line 2438
    :cond_49e
    const-wide/16 v8, 0x0

    goto/16 :goto_b7

    .line 2439
    :cond_4a2
    const/4 v7, 0x0

    move v8, v7

    goto/16 :goto_cf

    .line 2440
    :cond_4a6
    const/4 v7, 0x0

    goto/16 :goto_f4

    .line 2441
    :cond_4a9
    const/4 v7, 0x0

    goto/16 :goto_111

    .line 2442
    :cond_4ac
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_126

    .line 2443
    :cond_4b0
    const/4 v7, 0x0

    goto/16 :goto_138

    .line 2447
    :cond_4b3
    const-wide/16 v8, 0x0

    goto/16 :goto_169

    .line 2460
    :cond_4b7
    const-string v7, ""

    goto/16 :goto_203

    :cond_4bb
    const-string v7, ""

    goto/16 :goto_20d

    .line 2463
    :cond_4bf
    if-eqz v12, :cond_4e5

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v6

    if-eqz v6, :cond_4e5

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v8, v12

    if-lez v6, :cond_4e5

    .line 2464
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoDynamics;->baseOf(Lcom/isaigu/gymapp/ai/AutoModel$Step;)Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    invoke-static {v4, v6, v10, v11, v8}, Lcom/isaigu/gymapp/ai/AutoDynamics;->apply(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;DZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 2465
    const-string v6, ""

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    goto/16 :goto_232

    .line 2467
    :cond_4e5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v8

    move-object/from16 v0, p1

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    move-object/from16 v0, p1

    invoke-static {v6, v0, v8, v9, v10}, Lcom/isaigu/gymapp/ai/AutoDynamics;->sector(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;DI)I

    move-result v6

    .line 2468
    if-ltz v6, :cond_536

    .line 2469
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->sectorIdx:I

    if-eq v6, v7, :cond_534

    const/4 v7, 0x1

    .line 2470
    :goto_500
    if-eqz v7, :cond_51c

    .line 2471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recovery sector "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 2473
    :cond_51c
    move-object/from16 v0, p0

    iput v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->sectorIdx:I

    .line 2474
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    invoke-static {v4, v6, v8}, Lcom/isaigu/gymapp/ai/AutoDynamics;->sectorStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;IZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 2475
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AutoDynamics;->sectorName(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    goto/16 :goto_232

    .line 2469
    :cond_534
    const/4 v7, 0x0

    goto :goto_500

    .line 2477
    :cond_536
    const-string v6, ""

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    goto/16 :goto_232

    .line 2499
    :cond_53e
    const/16 v6, 0x28

    goto/16 :goto_2dd

    .line 2516
    :cond_542
    const/4 v6, -0x1

    goto/16 :goto_389

    .line 2518
    :cond_545
    const-wide/16 v6, 0x0

    goto/16 :goto_3ab

    .line 2537
    :cond_549
    iget-wide v6, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto/16 :goto_443

    .line 2540
    :cond_551
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_477
.end method

.method private static clamp(DDD)D
    .registers 8

    .prologue
    .line 2701
    cmpg-double v0, p0, p2

    if-gez v0, :cond_5

    :goto_4
    return-wide p2

    :cond_5
    cmpl-double v0, p0, p4

    if-lez v0, :cond_b

    move-wide p2, p4

    goto :goto_4

    :cond_b
    move-wide p2, p0

    goto :goto_4
.end method

.method private clockRuns()Z
    .registers 3

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->clockRunsIn(Lcom/isaigu/gymapp/ai/AutoEngine$State;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->clockRunsIn(Lcom/isaigu/gymapp/ai/AutoEngine$State;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private clockRunsIn(Lcom/isaigu/gymapp/ai/AutoEngine$State;)Z
    .registers 3

    .prologue
    .line 1819
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq p1, v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq p1, v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private cooldownIndex()I
    .registers 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_21

    .line 503
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    .line 507
    :goto_1d
    return v0

    .line 502
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 507
    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method private countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V
    .registers 13

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->advance(J)V

    .line 395
    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 396
    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    .line 397
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countdown from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2192 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    sub-long/2addr v2, p1

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 399
    return-void
.end method

.method private doseAdded(J[[D)D
    .registers 23

    .prologue
    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_10

    if-eqz p3, :cond_10

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_13

    .line 1604
    :cond_10
    const-wide/16 v2, 0x0

    .line 1624
    :goto_12
    return-wide v2

    .line 1606
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneMass()[D

    move-result-object v3

    .line 1607
    const-wide/16 v8, 0x0

    .line 1608
    const-wide/16 v6, 0x0

    .line 1609
    const-wide/16 v4, 0x0

    .line 1610
    const/4 v2, 0x0

    :goto_1e
    array-length v10, v3

    if-ge v2, v10, :cond_39

    .line 1611
    aget-wide v10, v3, v2

    add-double/2addr v8, v10

    .line 1612
    aget-wide v10, v3, v2

    const/4 v12, 0x0

    aget-object v12, p3, v12

    aget-wide v12, v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 1613
    aget-wide v10, v3, v2

    const/4 v12, 0x1

    aget-object v12, p3, v12

    aget-wide v12, v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 1610
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1615
    :cond_39
    const-wide/16 v2, 0x0

    cmpg-double v2, v8, v2

    if-gtz v2, :cond_42

    .line 1616
    const-wide/16 v2, 0x0

    goto :goto_12

    .line 1618
    :cond_42
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    .line 1619
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    .line 1620
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v14, v14, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long/2addr v12, v14

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    .line 1621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v14, v14, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v14, p1, v14

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 1622
    const-wide/16 v14, 0x0

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    sub-double v16, v16, v12

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 1623
    const-wide/16 v16, 0x0

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    sub-double v2, v10, v2

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1624
    mul-double/2addr v6, v14

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    div-double/2addr v2, v8

    goto/16 :goto_12
.end method

.method private enterPhase(IJ)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 876
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 877
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 878
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    .line 879
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 881
    return-void
.end method

.method private enterRecoveryRest(JI)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v3, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v3, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v3, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v3, :cond_41

    :cond_1a
    move v0, v2

    .line 484
    :goto_1b
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v3, p3, :cond_22

    .line 485
    invoke-direct {p0, p3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 487
    :cond_22
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 488
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 489
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 491
    if-nez v0, :cond_33

    .line 492
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 494
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 495
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 496
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 497
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 498
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceRest(J)V

    .line 499
    return-void

    :cond_41
    move v0, v1

    .line 482
    goto :goto_1b
.end method

.method private enterRest(JZ)V
    .registers 13

    .prologue
    .line 1037
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    .line 1038
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    .line 1039
    const/4 v0, 0x0

    .line 1040
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1041
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->restAfterSet()I

    move-result v1

    .line 1042
    if-nez p3, :cond_4f

    .line 1044
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    int-to-double v4, v1

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    add-double/2addr v2, v4

    .line 1047
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v4

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    add-double/2addr v6, v2

    invoke-direct {p0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1048
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v5

    .line 1049
    if-ltz v5, :cond_82

    if-ge v4, v5, :cond_3c

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v6, v6

    sub-double v2, v6, v2

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_82

    .line 1050
    :cond_3c
    const/4 p3, 0x1

    .line 1051
    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseStartS(I)D

    move-result-wide v2

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v2, v6

    .line 1052
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v6

    if-ltz v4, :cond_75

    .line 1055
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1069
    :cond_4f
    :goto_4f
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1070
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v2, :cond_c6

    .line 1071
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    .line 1072
    if-eqz p3, :cond_8f

    .line 1073
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 1074
    if-ltz v0, :cond_70

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v1, v0, :cond_70

    .line 1075
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 1076
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 1077
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 1083
    :cond_70
    :goto_70
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    .line 1100
    :goto_74
    return-void

    .line 1057
    :cond_75
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v2, v5, :cond_7c

    .line 1058
    invoke-direct {p0, v5, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 1060
    :cond_7c
    iput v5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 1061
    const/4 v2, 0x0

    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    goto :goto_4f

    .line 1063
    :cond_82
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v4, v2, :cond_4f

    .line 1064
    invoke-direct {p0, v4, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 1065
    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 1066
    const/4 v2, 0x0

    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    goto :goto_4f

    .line 1081
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continuous: set done, the rest it would need "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s, F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_c3

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v0, v4

    :goto_b3
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto :goto_70

    :cond_c3
    const-wide/16 v0, 0x0

    goto :goto_b3

    .line 1086
    :cond_c6
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 1087
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 1088
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 1089
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 1090
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    .line 1091
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceRest(J)V

    .line 1092
    if-eqz p3, :cond_119

    .line 1093
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 1099
    :goto_dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set done \u2192 rest \u2265 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto/16 :goto_74

    .line 1095
    :cond_119
    int-to-double v0, v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneRest:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 1096
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastRestMinS:I

    .line 1097
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    goto :goto_dd
.end method

.method private declared-synchronized event(IIID)V
    .registers 14

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2f

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->events:Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    const-wide v4, 0x40f869f000000000L    # 99999.0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v3, v4

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 203
    :cond_2f
    monitor-exit p0

    return-void

    .line 200
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private exerciseMuscles(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1264
    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v1, v2, :cond_1f

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1265
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v1

    .line 1266
    if-eqz v1, :cond_20

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v1

    .line 1267
    :goto_19
    if-ltz v1, :cond_1f

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v0

    .line 1269
    :cond_1f
    return-object v0

    .line 1266
    :cond_20
    const/4 v1, -0x1

    goto :goto_19
.end method

.method private fAt(IJ[[D)D
    .registers 19

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    aget-wide v0, v0, p1

    .line 1298
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    cmp-long v2, p2, v2

    if-gtz v2, :cond_b

    .line 1321
    :cond_a
    :goto_a
    return-wide v0

    .line 1301
    :cond_b
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_11

    if-nez p4, :cond_26

    .line 1302
    :cond_11
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    sub-long v2, p2, v2

    neg-long v2, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_a

    .line 1304
    :cond_26
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v4, v2

    .line 1305
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v6

    .line 1306
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long/2addr v2, v8

    long-to-double v2, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v8

    .line 1307
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v8, p2, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    .line 1308
    cmpg-double v10, v2, v4

    if-gez v10, :cond_82

    cmpl-double v10, v8, v2

    if-lez v10, :cond_82

    .line 1309
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    sub-double v2, v10, v2

    neg-double v2, v2

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 1310
    mul-double/2addr v0, v2

    const/4 v10, 0x0

    aget-object v10, p4, v10

    aget-wide v10, v10, p1

    iget-wide v12, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v2, v12, v2

    mul-double/2addr v2, v10

    add-double/2addr v0, v2

    .line 1311
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1313
    :cond_82
    cmpg-double v4, v2, v6

    if-gez v4, :cond_ab

    cmpl-double v4, v8, v2

    if-lez v4, :cond_ab

    .line 1314
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double v2, v4, v2

    neg-double v2, v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 1315
    mul-double/2addr v0, v2

    const/4 v4, 0x1

    aget-object v4, p4, v4

    aget-wide v4, v4, p1

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    mul-double/2addr v4, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v2, v10, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 1316
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1318
    :cond_ab
    cmpl-double v4, v8, v2

    if-lez v4, :cond_a

    .line 1319
    sub-double v2, v8, v2

    neg-double v2, v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto/16 :goto_a
.end method

.method private static fmt(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 2697
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private followClock(J)Z
    .registers 12

    .prologue
    .line 1868
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1b

    .line 1869
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1870
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 1871
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    .line 1872
    const-string v0, "done"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 1873
    const/4 v0, 0x1

    .line 1910
    :goto_1a
    return v0

    .line 1875
    :cond_1b
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v1

    .line 1876
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v3

    .line 1877
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_51

    const/4 v0, 0x1

    .line 1878
    :goto_2c
    if-ltz v3, :cond_53

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-ge v2, v3, :cond_53

    if-lt v1, v3, :cond_53

    .line 1880
    invoke-direct {p0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 1881
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 1882
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 1883
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 1884
    if-eqz v0, :cond_4f

    .line 1885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 1886
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 1887
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 1888
    const-string v0, "active part over in the rest \u2192 recovery"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 1890
    :cond_4f
    const/4 v0, 0x0

    goto :goto_1a

    .line 1877
    :cond_51
    const/4 v0, 0x0

    goto :goto_2c

    .line 1892
    :cond_53
    if-ltz v3, :cond_91

    if-eqz v0, :cond_91

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-nez v2, :cond_91

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v4, v2

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_91

    .line 1895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 1896
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 1897
    const-wide/16 v0, 0x0

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseStartS(I)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 1898
    const-string v0, "no room for another set \u2192 rest until the recovery"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 1899
    const/4 v0, 0x0

    goto :goto_1a

    .line 1901
    :cond_91
    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_d9

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_d9

    :cond_9f
    const/4 v0, 0x1

    move v2, v0

    .line 1902
    :goto_a1
    if-eqz v2, :cond_c0

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1903
    if-ltz v3, :cond_dc

    add-int/lit8 v0, v3, -0x1

    :goto_af
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    add-double/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1905
    :cond_c0
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-le v1, v0, :cond_d6

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    if-eqz v2, :cond_d6

    .line 1906
    :cond_ce
    invoke-direct {p0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 1907
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 1908
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 1910
    :cond_d6
    const/4 v0, 0x0

    goto/16 :goto_1a

    .line 1901
    :cond_d9
    const/4 v0, 0x0

    move v2, v0

    goto :goto_a1

    :cond_dc
    move v0, v1

    .line 1903
    goto :goto_af
.end method

.method public static forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;Z)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 5

    .prologue
    .line 2106
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;ZD)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v0

    return-object v0
.end method

.method public static forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;ZD)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 16

    .prologue
    .line 2111
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;-><init>()V

    .line 2112
    new-instance v5, Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AutoEngine;-><init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V

    .line 2113
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 2114
    invoke-virtual {v5, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setScript(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V

    .line 2115
    const-wide/16 v0, 0x0

    invoke-virtual {v5, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoublePulse(ZJ)V

    .line 2116
    const-wide/16 v0, 0x0

    .line 2117
    invoke-virtual {v5, v0, v1, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->startAt(JJ)V

    .line 2118
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getGoMs()J

    move-result-wide v2

    .line 2119
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 2120
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    .line 2121
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    .line 2122
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v0, v1

    .line 2123
    const/4 v0, 0x0

    .line 2124
    :goto_42
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v6, :cond_a6

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v6, :cond_a6

    add-int/lit8 v1, v0, 0x1

    const/16 v6, 0x1f40

    if-ge v0, v6, :cond_a6

    .line 2125
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v6, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-wide v6, v0, v6

    const-wide/16 v8, 0x0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_6e

    .line 2126
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v6, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v8

    aput-wide v8, v0, v6

    .line 2128
    :cond_6e
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v6, :cond_9a

    .line 2129
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v6, v2

    .line 2130
    :goto_7f
    cmp-long v0, v2, v6

    if-gez v0, :cond_8e

    .line 2131
    const-wide/16 v8, 0xfa0

    add-long/2addr v2, v8

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2132
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceTick(J)V

    goto :goto_7f

    .line 2134
    :cond_8e
    invoke-virtual {v5, v2, v3, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->requestGo(JJ)Z

    .line 2135
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getGoMs()J

    move-result-wide v2

    .line 2136
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    move v0, v1

    .line 2137
    goto :goto_42

    .line 2139
    :cond_9a
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v6, :cond_a6

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v0, :cond_de

    .line 2146
    :cond_a6
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2147
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    .line 2148
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getDoseDone(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->dose:D

    .line 2149
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneDose:[D

    .line 2150
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneExDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneExDose:[D

    .line 2151
    const/4 v0, 0x1

    :goto_c6
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    array-length v1, v1

    if-ge v0, v1, :cond_f3

    .line 2152
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    aget-wide v2, v1, v0

    const-wide/16 v6, 0x0

    cmpg-double v1, v2, v6

    if-gez v1, :cond_db

    .line 2153
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    aput-wide v2, v1, v0

    .line 2151
    :cond_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 2142
    :cond_de
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    .line 2143
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 2144
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move v0, v1

    goto/16 :goto_42

    .line 2156
    :cond_f3
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 2157
    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    const/4 v5, 0x2

    aget v0, v0, v5

    float-to-double v6, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    goto :goto_f9

    .line 2159
    :cond_112
    return-object v4
.end method

.method private go(J)V
    .registers 16

    .prologue
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->advance(J)V

    .line 404
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 406
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v6, v0, :cond_e2

    .line 407
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 408
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    .line 409
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    invoke-direct {p0, v6, v8, v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedOf(Lcom/isaigu/gymapp/ai/AutoEngine$State;D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    .line 410
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v6, v0, :cond_ae

    .line 411
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restSumS:D

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restSumS:D

    .line 412
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    .line 413
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, v8, v0

    if-ltz v0, :cond_52

    .line 414
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 423
    :cond_52
    :goto_52
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v0, :cond_5b

    .line 424
    iput-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 425
    invoke-direct {p0, p1, p2, v8, v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->safeAfterPause(JD)V

    .line 427
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "go after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 431
    :goto_a1
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 433
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 435
    return-void

    .line 418
    :cond_ae
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpl-double v0, v8, v0

    if-ltz v0, :cond_db

    const-wide v0, 0x4082c00000000000L    # 600.0

    div-double v0, v8, v0

    sub-double v0, v10, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    :goto_c6
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 419
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v6, v0, :cond_52

    .line 420
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    goto/16 :goto_52

    .line 418
    :cond_db
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_c6

    .line 429
    :cond_e2
    const-string v0, "go"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto :goto_a1
.end method

.method private hrImposed(J)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1855
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_8

    .line 1858
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1e

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-nez v1, :cond_1e

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private hrModel(J)D
    .registers 10

    .prologue
    .line 2182
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 2183
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    mul-double/2addr v0, v4

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private hrNearCap(J)Z
    .registers 6

    .prologue
    .line 2362
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    .line 2363
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v1, v2, :cond_18

    if-lez v0, :cond_18

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v1, v1, -0x5

    if-lt v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private imposedOf(Lcom/isaigu/gymapp/ai/AutoEngine$State;D)D
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 1808
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->clockRunsIn(Lcom/isaigu/gymapp/ai/AutoEngine$State;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_8
.end method

.method private inCorridor()Z
    .registers 4

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorLoHr()I

    move-result v0

    .line 2572
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    .line 2573
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-lt v2, v0, :cond_16

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-gt v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private jumpTo(IJ)V
    .registers 10

    .prologue
    .line 603
    const-wide/16 v2, 0x0

    .line 604
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, p1, :cond_18

    .line 605
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 604
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 607
    :cond_18
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    cmpl-double v0, v2, v0

    if-lez v0, :cond_29

    .line 608
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpedS:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double v4, v2, v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpedS:D

    .line 609
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 611
    :cond_29
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 612
    return-void
.end method

.method private learnHr(JI)V
    .registers 13

    .prologue
    const-wide v6, 0x3fb47ae147ae147bL    # 0.08

    .line 2188
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 2189
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->forecasting:Z

    if-nez v2, :cond_4b

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_4b

    cmpl-double v2, v0, v6

    if-lez v2, :cond_4b

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    add-int/lit8 v3, v3, 0x14

    if-le v2, v3, :cond_4b

    .line 2190
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    sub-int v2, p3, v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v2, v4

    div-double v0, v2, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    .line 2191
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    sub-double/2addr v0, v4

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    .line 2193
    :cond_4b
    return-void
.end method

.method private log(JLjava/lang/String;)V
    .registers 17

    .prologue
    const-wide/16 v10, 0x3c

    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    .line 2689
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2690
    :cond_12
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02d:%02d %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    rem-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object p3, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2691
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_44

    .line 2692
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2694
    :cond_44
    return-void
.end method

.method private nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 16

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    .line 885
    if-nez v1, :cond_8

    .line 886
    const/4 v0, 0x0

    .line 995
    :cond_7
    :goto_7
    return-object v0

    .line 889
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v0, v2, :cond_141

    const/4 v0, 0x1

    .line 890
    :goto_13
    if-eqz v0, :cond_bb

    .line 891
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 892
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v0, v2, :cond_33

    .line 893
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 895
    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 896
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_bb

    .line 897
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v0, :cond_144

    const/4 v0, 0x1

    .line 898
    :goto_51
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v6, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    mul-double/2addr v6, v8

    invoke-static {v4, v6, v7, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->cycleDose(Lcom/isaigu/gymapp/ai/AutoModel$Step;DZ)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    .line 899
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v6, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v4, v6, v7, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->cycleDose(Lcom/isaigu/gymapp/ai/AutoModel$Step;DZ)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    .line 900
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_147

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    div-double/2addr v2, v4

    .line 901
    :goto_8f
    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_14b

    .line 902
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    div-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    .line 906
    :cond_af
    :goto_af
    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v2, v4

    if-lez v0, :cond_160

    const/4 v0, 0x1

    :goto_b9
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    .line 909
    :cond_bb
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qBudget:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_34d

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-nez v0, :cond_34d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qBudget:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_34d

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-le v0, v2, :cond_34d

    .line 910
    const-string v0, "dose budget reached \u2192 cool-down"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseStopped:Z

    .line 912
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 913
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 916
    :goto_f0
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v1, v2, :cond_202

    .line 917
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_163

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_163

    const/4 v1, 0x1

    .line 918
    :goto_107
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_165

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v2

    if-eqz v2, :cond_165

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_165

    const/4 v2, 0x1

    .line 919
    :goto_11e
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 920
    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 921
    const/4 v4, 0x0

    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 922
    if-ltz v3, :cond_16b

    if-nez v1, :cond_12d

    if-eqz v2, :cond_16b

    .line 923
    :cond_12d
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 924
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 925
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_167

    .line 926
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 889
    :cond_141
    const/4 v0, 0x0

    goto/16 :goto_13

    .line 897
    :cond_144
    const/4 v0, 0x0

    goto/16 :goto_51

    .line 900
    :cond_147
    const-wide/16 v2, 0x0

    goto/16 :goto_8f

    .line 903
    :cond_14b
    const-wide v4, 0x3ff0cccccccccccdL    # 1.05

    cmpg-double v0, v2, v4

    if-gez v0, :cond_af

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    if-lez v0, :cond_af

    .line 904
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    goto/16 :goto_af

    .line 906
    :cond_160
    const/4 v0, 0x0

    goto/16 :goto_b9

    .line 917
    :cond_163
    const/4 v1, 0x0

    goto :goto_107

    .line 918
    :cond_165
    const/4 v2, 0x0

    goto :goto_11e

    .line 928
    :cond_167
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 930
    :cond_16b
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 955
    :cond_16f
    :goto_16f
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v1, v2, :cond_1aa

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-lez v1, :cond_1aa

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1aa

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v1

    if-nez v1, :cond_1aa

    const-string v1, "WARMUP"

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    .line 956
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1aa

    .line 957
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    .line 958
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-le v2, v1, :cond_29b

    .line 959
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    .line 964
    :cond_1aa
    :goto_1aa
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->safeDecide(J)V

    .line 965
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 966
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_2b7

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2b7

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2b7

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    .line 967
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v1

    int-to-double v6, v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2b7

    .line 968
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 969
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 970
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 971
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_2ad

    .line 972
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 931
    :cond_202
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_22f

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_22f

    .line 932
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 933
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 934
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 935
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_229

    .line 936
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 938
    :cond_229
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    goto/16 :goto_16f

    .line 939
    :cond_22f
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_16f

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_16f

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->hrNearCap(J)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near cap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2192 set ends early"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 942
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 943
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 944
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    .line 945
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 946
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v0, :cond_28c

    .line 947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    .line 949
    :cond_28c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_295

    .line 950
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 952
    :cond_295
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    goto/16 :goto_16f

    .line 960
    :cond_29b
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    add-int/lit8 v1, v1, -0x5

    if-ge v2, v1, :cond_1aa

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    if-lez v1, :cond_1aa

    .line 961
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    goto/16 :goto_1aa

    .line 974
    :cond_2ad
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 975
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 977
    :cond_2b7
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_2cd

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_2cd

    .line 978
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->predictNext(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    .line 980
    :cond_2cd
    iput-wide p1, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    .line 981
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 982
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 983
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 984
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 985
    const/4 v1, 0x1

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v2

    .line 986
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    const/4 v4, 0x7

    new-array v4, v4, [F

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    double-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x2

    double-to-float v6, v2

    aput v6, v4, v5

    const/4 v5, 0x3

    double-to-float v2, v2

    aput v2, v4, v5

    const/4 v2, 0x4

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    int-to-float v3, v3

    aput v3, v4, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 987
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    aput v3, v4, v2

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 986
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xfa0

    if-le v1, v2, :cond_32d

    .line 989
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 991
    :cond_32d
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 992
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7

    .line 993
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    goto/16 :goto_7

    :cond_34d
    move-object v0, v1

    goto/16 :goto_f0
.end method

.method private peakF()D
    .registers 9

    .prologue
    .line 1376
    const-wide/16 v2, 0x0

    .line 1377
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v4, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v4, :cond_11

    aget-wide v6, v1, v0

    .line 1378
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1377
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1380
    :cond_11
    return-wide v2
.end method

.method private phaseAt(D)I
    .registers 10

    .prologue
    .line 2560
    const-wide/16 v2, 0x0

    .line 2561
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 2562
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 2563
    cmpg-double v0, p1, v2

    if-gez v0, :cond_21

    .line 2567
    :goto_20
    return v1

    .line 2561
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 2567
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    goto :goto_20
.end method

.method private phaseStartS(I)D
    .registers 8

    .prologue
    .line 594
    const-wide/16 v2, 0x0

    .line 595
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, p1, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 596
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 595
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 598
    :cond_22
    return-wide v2
.end method

.method private predictNext(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)I
    .registers 12

    .prologue
    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    .line 1014
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1015
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1016
    int-to-double v4, v0

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_28

    const/4 v1, 0x1

    if-le v0, v1, :cond_28

    .line 1017
    add-int/lit8 v0, v0, -0x1

    .line 1019
    :cond_28
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    int-to-double v0, v0

    mul-double/2addr v0, v2

    add-double v2, v4, v0

    .line 1020
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastRestMinS:I

    if-ltz v0, :cond_53

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastRestMinS:I

    .line 1021
    :goto_34
    int-to-double v0, v0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    add-double/2addr v2, v0

    .line 1022
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 1023
    add-double v4, v2, v8

    invoke-direct {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v1

    .line 1024
    if-ltz v0, :cond_5f

    if-ge v1, v0, :cond_52

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v4, v4

    sub-double v2, v4, v2

    cmpg-double v2, v2, v8

    if-gez v2, :cond_5f

    .line 1027
    :cond_52
    :goto_52
    return v0

    .line 1020
    :cond_53
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_5c

    const/16 v0, 0xf

    goto :goto_34

    :cond_5c
    const/16 v0, 0x8

    goto :goto_34

    :cond_5f
    move v0, v1

    .line 1027
    goto :goto_52
.end method

.method static pwFactor(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D
    .registers 7

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    .line 1450
    :goto_e
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    if-lez v1, :cond_29

    if-lez v0, :cond_29

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v4, 0x3ff999999999999aL    # 1.6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    :goto_25
    return-wide v0

    .line 1449
    :cond_26
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    goto :goto_e

    .line 1450
    :cond_29
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_25
.end method

.method private rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D
    .registers 24

    .prologue
    .line 1201
    const/4 v2, 0x4

    const/16 v3, 0xb

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 1202
    if-eqz p1, :cond_1b

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1c

    .line 1226
    :cond_1b
    :goto_1b
    return-object v2

    .line 1205
    :cond_1c
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_e8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_e8

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    :goto_32
    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->pwFactor(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D

    move-result-wide v6

    mul-double v12, v4, v6

    .line 1206
    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v14

    .line 1207
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v3, :cond_fc

    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v3, :cond_fc

    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    mul-double/2addr v4, v6

    .line 1208
    :goto_59
    invoke-virtual/range {p0 .. p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v11

    .line 1209
    const/4 v3, 0x0

    .line 1210
    move-object/from16 v0, p1

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v6, v7, :cond_84

    move-object/from16 v0, p1

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v3

    .line 1212
    if-eqz v3, :cond_100

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v3

    .line 1213
    :goto_7e
    if-ltz v3, :cond_103

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v3

    .line 1215
    :cond_84
    :goto_84
    const/4 v6, 0x0

    move v10, v6

    :goto_86
    const/16 v6, 0xa

    if-ge v10, v6, :cond_10c

    .line 1216
    if-eqz v11, :cond_105

    array-length v6, v11

    if-ge v10, v6, :cond_105

    const/4 v6, 0x0

    aget v7, v11, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    move-wide v8, v6

    .line 1217
    :goto_9b
    if-eqz v3, :cond_109

    array-length v6, v3

    if-ge v10, v6, :cond_109

    const/4 v6, 0x0

    aget v7, v3, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v6, v6, v16

    .line 1218
    :goto_ac
    const/16 v16, 0x0

    aget-object v16, v2, v16

    mul-double v18, v14, v12

    mul-double v18, v18, v8

    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    mul-double v20, v20, v6

    add-double v18, v18, v20

    aput-wide v18, v16, v10

    .line 1219
    const/16 v16, 0x1

    aget-object v16, v2, v16

    mul-double v18, v4, v12

    mul-double v8, v8, v18

    const-wide v18, 0x3fb3333333333333L    # 0.075

    mul-double v18, v18, v6

    add-double v8, v8, v18

    aput-wide v8, v16, v10

    .line 1220
    const/4 v8, 0x2

    aget-object v8, v2, v8

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    mul-double v16, v16, v6

    aput-wide v16, v8, v10

    .line 1221
    const/4 v8, 0x3

    aget-object v8, v2, v8

    const-wide v16, 0x3fb3333333333333L    # 0.075

    mul-double v6, v6, v16

    aput-wide v6, v8, v10

    .line 1215
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    goto :goto_86

    .line 1205
    :cond_e8
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    goto/16 :goto_32

    .line 1207
    :cond_fc
    const-wide/16 v4, 0x0

    goto/16 :goto_59

    .line 1212
    :cond_100
    const/4 v3, -0x1

    goto/16 :goto_7e

    .line 1213
    :cond_103
    const/4 v3, 0x0

    goto :goto_84

    .line 1216
    :cond_105
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v8, v6

    goto :goto_9b

    .line 1217
    :cond_109
    const-wide/16 v6, 0x0

    goto :goto_ac

    .line 1223
    :cond_10c
    if-eqz v3, :cond_145

    const/4 v4, 0x5

    array-length v5, v3

    if-ge v4, v5, :cond_145

    const/4 v4, 0x0

    const/4 v5, 0x5

    aget v3, v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 1224
    :goto_11e
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v6, 0xa

    const/4 v7, 0x2

    aget-object v7, v2, v7

    const/16 v8, 0xa

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v10, v4

    aput-wide v10, v7, v8

    aput-wide v10, v3, v6

    .line 1225
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/16 v6, 0xa

    const/4 v7, 0x3

    aget-object v7, v2, v7

    const/16 v8, 0xa

    const-wide v10, 0x3fb3333333333333L    # 0.075

    mul-double/2addr v4, v10

    aput-wide v4, v7, v8

    aput-wide v4, v3, v6

    goto/16 :goto_1b

    .line 1223
    :cond_145
    const-wide/16 v4, 0x0

    goto :goto_11e
.end method

.method private rebase(J)V
    .registers 6

    .prologue
    .line 1326
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1327
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_13

    .line 1328
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1329
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 1331
    :cond_13
    return-void
.end method

.method private restAfterSet()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1000
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_3d

    const/4 v0, 0x1

    .line 1001
    :goto_e
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v2

    .line 1002
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3f

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    .line 1004
    :goto_22
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_42

    move v4, v1

    .line 1005
    :goto_2b
    int-to-double v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    int-to-double v2, v4

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_3d
    move v0, v1

    .line 1000
    goto :goto_e

    .line 1002
    :cond_3f
    const-wide/16 v2, 0x0

    goto :goto_22

    .line 1004
    :cond_42
    if-eqz v0, :cond_48

    const/16 v1, 0xf

    move v4, v1

    goto :goto_2b

    :cond_48
    const/16 v1, 0x8

    move v4, v1

    goto :goto_2b
.end method

.method public static rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D
    .registers 8

    .prologue
    .line 2547
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    :cond_5
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    mul-double/2addr v0, v2

    goto :goto_4
.end method

.method private safeAfterPause(JD)V
    .registers 14

    .prologue
    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    invoke-virtual {v0, p3, p4}, Lcom/isaigu/gymapp/ai/Endurance;->rest(D)V

    .line 229
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    .line 230
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v1, :cond_48

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    if-lez v1, :cond_48

    .line 231
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    invoke-virtual/range {v1 .. v8}, Lcom/isaigu/gymapp/ai/Endurance;->restart(IIIIDI)V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "safety: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Endurance;->last()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 234
    :cond_48
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Endurance;->cut()I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    .line 235
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v1, :cond_6b

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    if-ge v1, v0, :cond_6b

    .line 236
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    sub-int/2addr v0, v4

    add-int/2addr v3, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->event(IIID)V

    .line 238
    :cond_6b
    return-void
.end method

.method private safeDecide(J)V
    .registers 16

    .prologue
    const/4 v12, 0x0

    .line 207
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v0, :cond_c

    .line 208
    :cond_9
    iput-boolean v12, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    .line 219
    :cond_b
    :goto_b
    return-void

    .line 211
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v5, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v7, v7, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 212
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    iget-boolean v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    .line 211
    invoke-virtual/range {v0 .. v10}, Lcom/isaigu/gymapp/ai/Endurance;->work(IIIIDIDZ)Z

    move-result v0

    .line 213
    iput-boolean v12, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    .line 214
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Endurance;->cut()I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    .line 215
    if-eqz v0, :cond_b

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safety: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Endurance;->last()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Endurance;->lastByHeart:Z

    if-eqz v0, :cond_7b

    const/4 v1, 0x2

    :goto_68
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    add-int/lit8 v3, v0, -0x5

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/Endurance;->lastHoldS:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->event(IIID)V

    goto :goto_b

    :cond_7b
    const/4 v1, 0x1

    goto :goto_68
.end method

.method private settle(J)V
    .registers 14

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v0

    .line 1361
    :goto_a
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneRates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v4

    .line 1362
    :goto_14
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseDone:D

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->doseAdded(J[[D)D

    move-result-wide v6

    add-double/2addr v2, v6

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseDone:D

    .line 1363
    const/4 v5, 0x0

    :goto_1e
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    array-length v1, v1

    if-ge v5, v1, :cond_46

    .line 1364
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    aget-wide v8, v7, v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneAdded(J[[DII)D

    move-result-wide v2

    add-double/2addr v2, v8

    aput-wide v2, v7, v5

    .line 1365
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExDone:[D

    aget-wide v8, v7, v5

    const/4 v6, 0x2

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneAdded(J[[DII)D

    move-result-wide v2

    add-double/2addr v2, v8

    aput-wide v2, v7, v5

    .line 1363
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 1360
    :cond_42
    const/4 v0, 0x0

    goto :goto_a

    .line 1361
    :cond_44
    const/4 v4, 0x0

    goto :goto_14

    .line 1367
    :cond_46
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->stepMeta(JLcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    .line 1368
    const/4 v1, 0x0

    :goto_4c
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v2, v2

    if-ge v1, v2, :cond_5c

    .line 1369
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fAt(IJ[[D)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 1368
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 1371
    :cond_5c
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 1372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1373
    return-void
.end method

.method private skip(D)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 2055
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 2056
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 2057
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 2058
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    .line 2059
    return-void
.end method

.method public static stationPhases(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)[Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Z

    .line 353
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    move-object v0, v3

    .line 360
    :goto_14
    return-object v0

    :cond_15
    move v1, v2

    .line 356
    :goto_16
    array-length v0, v3

    if-ge v1, v0, :cond_4e

    .line 357
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v0, :cond_4c

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_4c

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4c

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, v1

    array-length v0, v0

    if-lez v0, :cond_4c

    const/4 v0, 0x1

    :goto_46
    aput-boolean v0, v3, v1

    .line 356
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_4c
    move v0, v2

    .line 357
    goto :goto_46

    :cond_4e
    move-object v0, v3

    .line 360
    goto :goto_14
.end method

.method private stepMeta(JLcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V
    .registers 13

    .prologue
    .line 1578
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2c

    .line 1579
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->metaDemand(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D

    move-result-wide v0

    .line 1580
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaV:D

    sub-double/2addr v2, v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    sub-long v4, p1, v4

    neg-long v4, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaV:D

    .line 1582
    :cond_2c
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    .line 1583
    return-void
.end method

.method static totalLoad(DDD)D
    .registers 16

    .prologue
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1740
    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v6

    move-wide v0, p2

    .line 1741
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    .line 1742
    sub-double v6, v4, v6

    sub-double v0, v4, v0

    mul-double/2addr v0, v6

    sub-double v0, v4, v0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    sub-double/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 1743
    const-wide v6, 0x3fc3333333333333L    # 0.15

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private traceRest(J)V
    .registers 12

    .prologue
    const/4 v8, 0x0

    .line 1776
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v0

    .line 1777
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    const/4 v3, 0x7

    new-array v3, v3, [F

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v8

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    double-to-float v5, v6

    aput v5, v3, v4

    const/4 v4, 0x2

    double-to-float v5, v0

    aput v5, v3, v4

    const/4 v4, 0x3

    double-to-float v0, v0

    aput v0, v3, v4

    const/4 v0, 0x4

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    int-to-float v1, v1

    aput v1, v3, v0

    const/4 v0, 0x5

    .line 1778
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    aput v1, v3, v0

    const/4 v0, 0x6

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v0

    .line 1777
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1779
    return-void
.end method

.method private vo2Ref()[D
    .registers 21

    .prologue
    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vo2Ref:[D

    if-nez v2, :cond_c1

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v12, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 1528
    if-eqz v12, :cond_c6

    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1529
    :goto_10
    if-eqz v12, :cond_ca

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    if-lez v3, :cond_ca

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 1530
    :goto_18
    if-eqz v12, :cond_ce

    iget-wide v4, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_ce

    iget-wide v4, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    const-wide v6, 0x406f400000000000L    # 250.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_ce

    iget-wide v4, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 1531
    :goto_2f
    if-eqz v12, :cond_d5

    iget-wide v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    :goto_33
    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->restingVo2(Lcom/isaigu/gymapp/ai/AiModel$Sex;IDD)D

    move-result-wide v14

    .line 1532
    if-eqz v12, :cond_d9

    iget-object v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    :goto_3b
    invoke-static {v6, v2, v3}, Lcom/isaigu/gymapp/ai/AiEnergy;->fitnessVo2max(Lcom/isaigu/gymapp/ai/AiModel$Fitness;Lcom/isaigu/gymapp/ai/AiModel$Sex;I)D

    move-result-wide v6

    .line 1533
    if-eqz v12, :cond_dd

    iget-object v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v3, :cond_dd

    iget-object v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v3, :cond_dd

    const/4 v3, 0x1

    .line 1534
    :goto_4c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRestMeasured:Z

    if-eqz v8, :cond_9a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    const/16 v9, 0x23

    if-lt v8, v9, :cond_9a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v9, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    add-int/lit8 v9, v9, 0x14

    if-le v8, v9, :cond_9a

    if-nez v3, :cond_9a

    .line 1535
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v16, v8, v6

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x402e99999999999aL    # 15.3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    int-to-double v8, v3

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    int-to-double v8, v3

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4032000000000000L    # 18.0

    const-wide v10, 0x4052c00000000000L    # 75.0

    invoke-static/range {v6 .. v11}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v6

    mul-double v6, v6, v18

    add-double v6, v6, v16

    .line 1537
    :cond_9a
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    add-double/2addr v8, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 1538
    const/4 v3, 0x3

    new-array v3, v3, [D

    const/4 v8, 0x0

    sub-double/2addr v6, v14

    mul-double/2addr v6, v4

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v10

    aput-wide v6, v3, v8

    const/4 v8, 0x1

    .line 1539
    if-eqz v12, :cond_e0

    iget-wide v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->skeletalKg:D

    :goto_b4
    invoke-static {v2, v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->muscleScale(Lcom/isaigu/gymapp/ai/AiModel$Sex;DD)D

    move-result-wide v6

    aput-wide v6, v3, v8

    const/4 v2, 0x2

    aput-wide v4, v3, v2

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vo2Ref:[D

    .line 1541
    :cond_c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vo2Ref:[D

    return-object v2

    .line 1528
    :cond_c6
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_10

    .line 1529
    :cond_ca
    const/16 v3, 0x23

    goto/16 :goto_18

    .line 1530
    :cond_ce
    const-wide v4, 0x4052c00000000000L    # 75.0

    goto/16 :goto_2f

    .line 1531
    :cond_d5
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_33

    .line 1532
    :cond_d9
    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto/16 :goto_3b

    .line 1533
    :cond_dd
    const/4 v3, 0x0

    goto/16 :goto_4c

    .line 1539
    :cond_e0
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_b4
.end method

.method private zoneAdded(J[[DII)D
    .registers 17

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_c

    if-eqz p3, :cond_c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_f

    .line 1631
    :cond_c
    const-wide/16 v0, 0x0

    .line 1639
    :goto_e
    return-wide v0

    .line 1633
    :cond_f
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    .line 1634
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 1635
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 1636
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v6, p1, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1637
    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    sub-double/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 1638
    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sub-double v0, v2, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1639
    aget-object v2, p3, p5

    aget-wide v2, v2, p4

    mul-double/2addr v2, v6

    add-int/lit8 v4, p5, 0x1

    aget-object v4, p3, v4

    aget-wide v4, v4, p4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    goto :goto_e
.end method

.method private zoneMass()[D
    .registers 9

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1497
    :goto_6
    if-eqz v0, :cond_28

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    .line 1498
    :goto_a
    const/16 v1, 0xa

    new-array v2, v1, [D

    .line 1499
    const/4 v1, 0x0

    :goto_f
    array-length v3, v2

    if-ge v1, v3, :cond_2b

    .line 1500
    sget-object v3, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    aget-wide v4, v3, v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->chMuscle(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->reach(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 1499
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1496
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto :goto_6

    .line 1497
    :cond_28
    const/16 v0, 0x15e

    goto :goto_a

    .line 1502
    :cond_2b
    return-object v2
.end method

.method private zoneRates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D
    .registers 14

    .prologue
    .line 1241
    const/4 v0, 0x4

    const/16 v1, 0xb

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1242
    if-eqz p1, :cond_19

    iget-wide v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1a

    .line 1259
    :cond_19
    :goto_19
    return-object v0

    .line 1245
    :cond_1a
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v1, :cond_8a

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v1, :cond_8a

    iget-wide v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_8a

    const/4 v1, 0x1

    .line 1246
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v7

    .line 1247
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->exerciseMuscles(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v8

    .line 1248
    const/4 v2, 0x0

    move v6, v2

    :goto_35
    const/16 v2, 0xa

    if-ge v6, v2, :cond_96

    .line 1249
    if-eqz v7, :cond_43

    array-length v2, v7

    if-ge v6, v2, :cond_43

    aget v2, v7, v6

    const/4 v3, 0x2

    if-lt v2, v3, :cond_8c

    :cond_43
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v4, v2

    .line 1250
    :goto_46
    if-eqz v8, :cond_90

    array-length v2, v8

    if-ge v6, v2, :cond_90

    const/4 v2, 0x0

    aget v3, v8, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v10

    .line 1251
    :goto_56
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v10, v2

    add-double/2addr v10, v4

    aput-wide v10, v9, v6

    .line 1252
    const/4 v9, 0x1

    aget-object v9, v0, v9

    if-eqz v1, :cond_93

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v10

    :goto_6a
    const-wide v10, 0x3fb3333333333333L    # 0.075

    mul-double/2addr v10, v2

    add-double/2addr v4, v10

    aput-wide v4, v9, v6

    .line 1253
    const/4 v4, 0x2

    aget-object v4, v0, v4

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v10, v2

    aput-wide v10, v4, v6

    .line 1254
    const/4 v4, 0x3

    aget-object v4, v0, v4

    const-wide v10, 0x3fb3333333333333L    # 0.075

    mul-double/2addr v2, v10

    aput-wide v2, v4, v6

    .line 1248
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_35

    .line 1245
    :cond_8a
    const/4 v1, 0x0

    goto :goto_2b

    .line 1249
    :cond_8c
    const-wide/16 v2, 0x0

    move-wide v4, v2

    goto :goto_46

    .line 1250
    :cond_90
    const-wide/16 v2, 0x0

    goto :goto_56

    .line 1252
    :cond_93
    const-wide/16 v4, 0x0

    goto :goto_6a

    .line 1256
    :cond_96
    if-eqz v8, :cond_cf

    const/4 v1, 0x5

    array-length v2, v8

    if-ge v1, v2, :cond_cf

    const/4 v1, 0x0

    const/4 v2, 0x5

    aget v2, v8, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 1257
    :goto_a8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/16 v4, 0xa

    const/4 v5, 0x2

    aget-object v5, v0, v5

    const/16 v6, 0xa

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v8, v2

    aput-wide v8, v5, v6

    aput-wide v8, v1, v4

    .line 1258
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/16 v4, 0xa

    const/4 v5, 0x3

    aget-object v5, v0, v5

    const/16 v6, 0xa

    const-wide v8, 0x3fb3333333333333L    # 0.075

    mul-double/2addr v2, v8

    aput-wide v2, v5, v6

    aput-wide v2, v1, v4

    goto/16 :goto_19

    .line 1256
    :cond_cf
    const-wide/16 v2, 0x0

    goto :goto_a8
.end method

.method private zoneSum(J[DI)[D
    .registers 16

    .prologue
    .line 1653
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 1654
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v1, :cond_23

    .line 1655
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneRates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v4

    .line 1656
    const/4 v5, 0x0

    :goto_11
    array-length v1, v0

    if-ge v5, v1, :cond_23

    .line 1657
    aget-wide v8, v0, v5

    move-object v1, p0

    move-wide v2, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneAdded(J[[DII)D

    move-result-wide v2

    add-double/2addr v2, v8

    aput-wide v2, v0, v5

    .line 1656
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1660
    :cond_23
    return-object v0
.end method


# virtual methods
.method public canResume()Z
    .registers 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public cancelCountdown(J)V
    .registers 6

    .prologue
    .line 520
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_7

    .line 534
    :goto_6
    return-void

    .line 523
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 524
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_2c

    .line 525
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 526
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 533
    :cond_13
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countdown cancelled \u2192 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto :goto_6

    .line 528
    :cond_2c
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 529
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_13

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    goto :goto_13
.end method

.method chMuscle(I)D
    .registers 8

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->chMuscle:[D

    .line 1491
    :goto_c
    if-eqz v0, :cond_1e

    array-length v1, v0

    if-ge p1, v1, :cond_1e

    aget-wide v2, v0, p1

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1e

    aget-wide v0, v0, p1

    :goto_1b
    return-wide v0

    .line 1490
    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    .line 1491
    :cond_1e
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_1b
.end method

.method public cycleLoad(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D
    .registers 12

    .prologue
    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    .line 1765
    if-eqz p1, :cond_b

    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_c

    .line 1772
    :cond_b
    :goto_b
    return-wide v2

    .line 1768
    :cond_c
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-ne p1, v0, :cond_4b

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    :goto_18
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->pwFactor(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D

    move-result-wide v4

    mul-double/2addr v4, v0

    .line 1769
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v6, v0

    .line 1770
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v8, v0

    .line 1771
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v0, :cond_5a

    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v0, :cond_5a

    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    iget-wide v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    mul-double/2addr v0, v2

    mul-double/2addr v0, v8

    .line 1772
    :goto_3d
    iget v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double v2, v6, v8

    div-double v2, v0, v2

    goto :goto_b

    .line 1768
    :cond_4b
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double/2addr v0, v4

    goto :goto_18

    :cond_5a
    move-wide v0, v2

    .line 1771
    goto :goto_3d
.end method

.method public endActiveIn(DJ)V
    .registers 16

    .prologue
    const-wide/16 v8, 0x0

    .line 775
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 776
    if-ltz v0, :cond_18

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 788
    :cond_18
    :goto_18
    return-void

    .line 779
    :cond_19
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-static {v8, v9, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 780
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseStartS(I)D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-gez v0, :cond_18

    .line 783
    cmpg-double v0, p1, v8

    if-gtz v0, :cond_33

    .line 784
    invoke-virtual {p0, p3, p4}, Lcom/isaigu/gymapp/ai/AutoEngine;->stopPress(J)Z

    goto :goto_18

    .line 786
    :cond_33
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endAtS:D

    goto :goto_18
.end method

.method fatPct()D
    .registers 11

    .prologue
    const-wide/16 v0, 0x0

    .line 1458
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1459
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 1460
    if-eqz v4, :cond_27

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v2, v2, v6

    if-lez v2, :cond_27

    .line 1461
    iget-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 1462
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 1468
    :goto_26
    return-wide v0

    .line 1464
    :cond_27
    if-eqz v4, :cond_66

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v2

    .line 1465
    :goto_2d
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v5, v2, v6

    if-lez v5, :cond_68

    const-wide v6, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v6

    const-wide v6, 0x3fcd70a3d70a3d71L    # 0.23

    iget v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    int-to-double v8, v5

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v4, v5, :cond_4e

    const-wide v0, 0x402599999999999aL    # 10.8

    :cond_4e
    sub-double v0, v2, v0

    const-wide v2, 0x401599999999999aL    # 5.4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide v4, 0x404b800000000000L    # 55.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    .line 1466
    :goto_61
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 1468
    :cond_63
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    goto :goto_26

    :cond_66
    move-wide v2, v0

    .line 1464
    goto :goto_2d

    .line 1466
    :cond_68
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_61
.end method

.method public forecastFrom(J)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 14

    .prologue
    .line 2235
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fork()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v7

    .line 2236
    if-nez v7, :cond_8

    .line 2237
    const/4 v0, 0x0

    .line 2323
    :goto_7
    return-object v0

    .line 2239
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v0, v1, :cond_da

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    if-lez v0, :cond_da

    const/4 v0, 0x1

    move v6, v0

    .line 2240
    :goto_18
    if-eqz v6, :cond_6e

    .line 2243
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 2244
    const-wide v2, 0x3fb47ae147ae147bL    # 0.08

    cmpl-double v2, v0, v2

    if-lez v2, :cond_60

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    add-int/lit8 v3, v3, 0x14

    if-le v2, v3, :cond_60

    .line 2245
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v2, v4

    div-double v0, v2, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    .line 2246
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    .line 2248
    :cond_60
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    int-to-double v0, v0

    invoke-direct {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->hrModel(J)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGap:D

    .line 2249
    iput-wide p1, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGapMs:J

    .line 2251
    :cond_6e
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;-><init>()V

    .line 2252
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->fromS:D

    .line 2253
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    .line 2254
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 2256
    const/4 v0, 0x0

    .line 2257
    :goto_8d
    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v2, :cond_15d

    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v2, :cond_15d

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2ee0

    if-ge v0, v2, :cond_15d

    .line 2258
    iget v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    array-length v2, v2

    if-ge v0, v2, :cond_bc

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v2, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-wide v2, v0, v2

    const-wide/16 v8, 0x0

    cmpg-double v0, v2, v8

    if-gez v0, :cond_bc

    .line 2259
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v2, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v8

    aput-wide v8, v0, v2

    .line 2261
    :cond_bc
    if-eqz v6, :cond_c5

    .line 2262
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->predictHr(J)I

    move-result v0

    invoke-virtual {v7, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->onHr(JI)V

    .line 2264
    :cond_c5
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$State;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1be

    .line 2293
    :pswitch_ce
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v0, :cond_127

    .line 2294
    const-wide/16 v2, 0x3e8

    add-long/2addr p1, v2

    .line 2295
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    :cond_d8
    :goto_d8
    move v0, v1

    .line 2307
    goto :goto_8d

    .line 2239
    :cond_da
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_18

    .line 2266
    :pswitch_de
    invoke-virtual {v7, p1, p2, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->startAt(JJ)V

    goto :goto_d8

    .line 2269
    :pswitch_e2
    iget-wide v2, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 2270
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    goto :goto_d8

    .line 2273
    :pswitch_ec
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->resume(J)V

    goto :goto_d8

    .line 2276
    :pswitch_f0
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceTick(J)V

    .line 2277
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v0

    if-lez v0, :cond_109

    .line 2278
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    const-wide/16 v8, 0xfa0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr p1, v2

    goto :goto_d8

    .line 2279
    :cond_109
    invoke-virtual {v7, p1, p2, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->requestGo(JJ)Z

    move-result v0

    if-nez v0, :cond_d8

    .line 2280
    const-wide/16 v2, 0xfa0

    add-long/2addr p1, v2

    goto :goto_d8

    .line 2284
    :pswitch_113
    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 2285
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->resume(J)V

    goto :goto_d8

    .line 2287
    :cond_11d
    const-wide/16 v2, 0xfa0

    add-long/2addr p1, v2

    .line 2288
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 2289
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceTick(J)V

    goto :goto_d8

    .line 2298
    :cond_127
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v2, v8

    .line 2299
    const-wide/16 v8, 0x1

    add-long/2addr v8, p1

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 2300
    if-eqz v6, :cond_14b

    .line 2301
    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    invoke-virtual {v7, v8, v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->predictHr(J)I

    move-result v0

    invoke-virtual {v7, v2, v3, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->onHr(JI)V

    .line 2303
    :cond_14b
    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-virtual {v7, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 2304
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_d8

    .line 2305
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto/16 :goto_d8

    .line 2310
    :cond_15d
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2311
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    .line 2312
    const/4 v0, 0x0

    :goto_16b
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    array-length v1, v1

    if-ge v0, v1, :cond_18a

    .line 2313
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    aget-wide v2, v1, v0

    const-wide/16 v8, 0x0

    cmpg-double v1, v2, v8

    if-gez v1, :cond_184

    .line 2314
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-ge v0, v2, :cond_187

    const-wide/16 v2, 0x0

    :goto_182
    aput-wide v2, v1, v0

    .line 2312
    :cond_184
    add-int/lit8 v0, v0, 0x1

    goto :goto_16b

    .line 2314
    :cond_187
    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    goto :goto_182

    .line 2317
    :cond_18a
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_190
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 2318
    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    const/4 v5, 0x2

    aget v0, v0, v5

    float-to-double v8, v0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    goto :goto_190

    .line 2320
    :cond_1a9
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getDoseDone(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->dose:D

    .line 2321
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneDose:[D

    .line 2322
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneExDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneExDose:[D

    move-object v0, v4

    .line 2323
    goto/16 :goto_7

    .line 2264
    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_de
        :pswitch_ce
        :pswitch_ec
        :pswitch_113
        :pswitch_f0
        :pswitch_e2
    .end packed-switch
.end method

.method fork()Lcom/isaigu/gymapp/ai/AutoEngine;
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 2207
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoEngine;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;-><init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V

    .line 2209
    :try_start_9
    const-class v0, Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_11
    if-ge v2, v5, :cond_58

    aget-object v6, v4, v2

    .line 2210
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 2211
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_25

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2209
    :cond_25
    :goto_25
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 2214
    :cond_29
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2215
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2216
    instance-of v7, v0, [D

    if-eqz v7, :cond_42

    .line 2217
    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    .line 2223
    :cond_3b
    :goto_3b
    invoke-virtual {v6, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_25

    .line 2225
    :catch_3f
    move-exception v0

    .line 2226
    const/4 v0, 0x0

    .line 2230
    :goto_41
    return-object v0

    .line 2218
    :cond_42
    instance-of v7, v0, [I

    if-eqz v7, :cond_4d

    .line 2219
    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3b

    .line 2220
    :cond_4d
    instance-of v7, v0, [Z

    if-eqz v7, :cond_3b

    .line 2221
    check-cast v0, [Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_56} :catch_3f

    move-result-object v0

    goto :goto_3b

    .line 2228
    :cond_58
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v4, v4

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2229
    iput-boolean v8, v1, Lcom/isaigu/gymapp/ai/AutoEngine;->forecasting:Z

    move-object v0, v1

    .line 2230
    goto :goto_41
.end method

.method public getAdaptHzPct()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptHzPct:I

    return v0
.end method

.method public getAdaptOff()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptOff:I

    return v0
.end method

.method public getCapHits()I
    .registers 2

    .prologue
    .line 2632
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    return v0
.end method

.method public getCardioLoad(J)D
    .registers 10

    .prologue
    .line 1398
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    .line 1399
    if-lez v0, :cond_18

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v1, v2, :cond_18

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    if-gt v1, v2, :cond_1b

    .line 1400
    :cond_18
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 1402
    :goto_1a
    return-wide v0

    :cond_1b
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    goto :goto_1a
.end method

.method public getCentralLoad(J)D
    .registers 10

    .prologue
    .line 1596
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 1597
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCardioLoad(J)D

    move-result-wide v2

    .line 1598
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_f

    :goto_e
    return-wide v0

    :cond_f
    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    goto :goto_e
.end method

.method public getChannelLoad(J)[D
    .registers 14

    .prologue
    const-wide/16 v4, 0x0

    .line 1385
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v0

    .line 1386
    :goto_c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v1, v1

    new-array v6, v1, [D

    .line 1387
    const/4 v1, 0x0

    :goto_12
    array-length v2, v6

    if-ge v1, v2, :cond_2b

    .line 1388
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_29

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fAt(IJ[[D)D

    move-result-wide v2

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v2, v8

    :goto_22
    aput-wide v2, v6, v1

    .line 1387
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1385
    :cond_27
    const/4 v0, 0x0

    goto :goto_c

    :cond_29
    move-wide v2, v4

    .line 1388
    goto :goto_22

    .line 1390
    :cond_2b
    return-object v6
.end method

.method public getCorridorExt()I
    .registers 2

    .prologue
    .line 2636
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    return v0
.end method

.method public getCorridorShare()D
    .registers 5

    .prologue
    .line 2644
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrKnownS:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_e

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridorS:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrKnownS:D

    div-double/2addr v0, v2

    :goto_d
    return-wide v0

    :cond_e
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_d
.end method

.method public getCountdownLeftS(J)I
    .registers 10

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_1c

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    sub-long/2addr v2, p1

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 2

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    return-object v0
.end method

.method public getDoseDone(J)D
    .registers 8

    .prologue
    .line 1725
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseDone:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->doseAdded(J[[D)D

    move-result-wide v0

    :goto_10
    add-double/2addr v0, v2

    return-wide v0

    :cond_12
    const-wide/16 v0, 0x0

    goto :goto_10
.end method

.method public getDoseExt()I
    .registers 2

    .prologue
    .line 2640
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    return v0
.end method

.method public getDoseLoad(J)D
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 1730
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseBudget:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_16

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getDoseDone(J)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseBudget:D

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    :goto_15
    return-wide v0

    :cond_16
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_15
.end method

.method public getDoseRatio()D
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 2648
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qBudget:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_11

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qBudget:D

    div-double/2addr v0, v2

    :cond_11
    return-wide v0
.end method

.method public getElapsedS()D
    .registers 3

    .prologue
    .line 2595
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    return-wide v0
.end method

.method public getEndMs()J
    .registers 3

    .prologue
    .line 2677
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    return-wide v0
.end method

.method public getEndurance()Lcom/isaigu/gymapp/ai/Endurance;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    return-object v0
.end method

.method public getExercise()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1128
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->templateOnly()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    if-eqz v1, :cond_1c

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1d

    .line 1132
    :cond_1c
    :goto_1c
    return-object v0

    .line 1131
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-object v1, v1, v2

    .line 1132
    if-eqz v1, :cond_1c

    array-length v2, v1

    if-eqz v2, :cond_1c

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v0, v1, v0

    goto :goto_1c
.end method

.method public getFatigueShare()D
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 2399
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_f

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v0, v2

    :cond_f
    return-wide v0
.end method

.method public getGoMs()J
    .registers 3

    .prologue
    .line 2412
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    return-wide v0
.end method

.method public getHr(J)I
    .registers 8

    .prologue
    .line 2620
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-lez v0, :cond_11

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    :goto_10
    return v0

    :cond_11
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public getHrAvg()I
    .registers 5

    .prologue
    .line 2628
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrCount:I

    if-lez v0, :cond_10

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrSum:D

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public getHrEndedSets()I
    .registers 2

    .prologue
    .line 2367
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    return v0
.end method

.method public getHrGain()D
    .registers 3

    .prologue
    .line 2196
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    return-wide v0
.end method

.method public getHrMaxSeen()I
    .registers 2

    .prologue
    .line 2624
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    return v0
.end method

.method public getImpulseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    return-object v0
.end method

.method public getImpulseS()D
    .registers 3

    .prologue
    .line 1981
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->runS:D

    return-wide v0
.end method

.method public getLiveRho()D
    .registers 3

    .prologue
    .line 1355
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    return-wide v0
.end method

.method public getLiveZones()[I
    .registers 2

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    return-object v0
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
    .line 2685
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    return-object v0
.end method

.method public getManualStops()I
    .registers 2

    .prologue
    .line 477
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    return v0
.end method

.method public getMetabolicLoad(J)D
    .registers 16

    .prologue
    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    const-wide/16 v2, 0x0

    .line 1587
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_19

    .line 1588
    :cond_12
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaV:D

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    .line 1591
    :goto_18
    return-wide v0

    .line 1590
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->metaDemand(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D

    move-result-wide v0

    .line 1591
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaV:D

    sub-double/2addr v6, v0

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    sub-long v8, p1, v8

    neg-long v8, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    goto :goto_18
.end method

.method public getMuscleMeanLoad(J)D
    .registers 16

    .prologue
    .line 1508
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getChannelLoad(J)[D

    move-result-object v1

    .line 1509
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneMass()[D

    move-result-object v6

    .line 1510
    const-wide/16 v4, 0x0

    .line 1511
    const-wide/16 v2, 0x0

    .line 1512
    const/4 v0, 0x0

    :goto_d
    array-length v7, v1

    if-ge v0, v7, :cond_1c

    .line 1513
    aget-wide v8, v6, v0

    aget-wide v10, v1, v0

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 1514
    aget-wide v8, v6, v0

    add-double/2addr v2, v8

    .line 1512
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1516
    :cond_1c
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_25

    div-double v0, v4, v2

    :goto_24
    return-wide v0

    :cond_25
    const-wide/16 v0, 0x0

    goto :goto_24
.end method

.method public getMuscularLoad(J)D
    .registers 10

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 1521
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPeakLoad(J)D

    move-result-wide v0

    mul-double/2addr v0, v4

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMuscleMeanLoad(J)D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getNextExercise()Ljava/lang/String;
    .registers 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 1144
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_1a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-eqz v0, :cond_1a

    .line 1171
    :cond_19
    :goto_19
    return-object v4

    .line 1147
    :cond_1a
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v5

    .line 1149
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    if-ltz v0, :cond_31

    .line 1150
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    .line 1160
    :cond_2a
    :goto_2a
    if-ltz v5, :cond_71

    if-lt v0, v5, :cond_71

    .line 1161
    const-string v4, ""

    goto :goto_19

    .line 1153
    :cond_31
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_6c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    add-double/2addr v0, v8

    :goto_43
    add-double/2addr v6, v0

    .line 1154
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v8

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_6e

    move-wide v0, v2

    :goto_4f
    sub-double v0, v8, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    add-double v2, v6, v0

    .line 1155
    invoke-direct {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v0

    .line 1156
    if-ltz v5, :cond_2a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v6, v1

    sub-double v2, v6, v2

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpg-double v1, v2, v6

    if-gez v1, :cond_2a

    move v0, v5

    .line 1157
    goto :goto_2a

    :cond_6c
    move-wide v0, v2

    .line 1153
    goto :goto_43

    .line 1154
    :cond_6e
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    goto :goto_4f

    .line 1163
    :cond_71
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->templateOnly()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1166
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v0, v1, :cond_a7

    .line 1167
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_a5

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v1, v1, v0

    array-length v1, v1

    if-lez v1, :cond_a5

    .line 1168
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v1, v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_a2
    move-object v4, v0

    .line 1167
    goto/16 :goto_19

    :cond_a5
    move-object v0, v4

    .line 1168
    goto :goto_a2

    .line 1170
    :cond_a7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-object v0, v0, v1

    .line 1171
    if-eqz v0, :cond_19

    array-length v1, v0

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v4, v0, v1

    goto/16 :goto_19
.end method

.method public getOffExtension()I
    .registers 3

    .prologue
    .line 694
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPeakLoad(J)D
    .registers 12

    .prologue
    .line 1753
    const-wide/16 v2, 0x0

    .line 1754
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getChannelLoad(J)[D

    move-result-object v1

    array-length v4, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v4, :cond_13

    aget-wide v6, v1, v0

    .line 1755
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1754
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1757
    :cond_13
    return-wide v2
.end method

.method public getPhaseIndex()I
    .registers 2

    .prologue
    .line 2591
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    return v0
.end method

.method public getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 2

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    return-object v0
.end method

.method public getReentry()D
    .registers 3

    .prologue
    .line 2661
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    return-wide v0
.end method

.method public getRemainingS()D
    .registers 7

    .prologue
    .line 2599
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRestAvgS()D
    .registers 5

    .prologue
    .line 2407
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    if-lez v0, :cond_b

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restSumS:D

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getRestCount()I
    .registers 2

    .prologue
    .line 2403
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    return v0
.end method

.method public getRestHrLimit()I
    .registers 4

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v0, v0, -0xf

    .line 2373
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    if-lez v1, :cond_20

    .line 2374
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2376
    :cond_20
    return v0
.end method

.method public getRestLeftS(J)I
    .registers 12

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_8

    .line 2329
    const/4 v0, 0x0

    .line 2331
    :goto_7
    return v0

    :cond_8
    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_7
.end method

.method public getRestMinS()I
    .registers 2

    .prologue
    .line 2335
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    return v0
.end method

.method public getRestS(J)D
    .registers 8

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

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

.method public getSafeHzCut()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    return v0
.end method

.method public getSessionS(J)D
    .registers 14

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    const-wide/16 v6, 0x0

    .line 1942
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpedS:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    add-double/2addr v0, v2

    .line 1943
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->clockRuns()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_2f

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_2f

    .line 1944
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 1946
    :cond_2f
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_4d

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_4d

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_4d

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_64

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_64

    .line 1948
    :cond_4d
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_65

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 1949
    :goto_55
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    div-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedOf(Lcom/isaigu/gymapp/ai/AutoEngine$State;D)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 1951
    :cond_64
    return-wide v0

    .line 1948
    :cond_65
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    goto :goto_55
.end method

.method public getSetImpulses()[I
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1966
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 1967
    :goto_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v4

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1968
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    div-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v5, :cond_41

    move v0, v2

    :goto_2d
    add-int/2addr v0, v1

    .line 1969
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v1, v3

    aput v4, v1, v2

    return-object v1

    .line 1966
    :cond_3e
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    goto :goto_13

    :cond_41
    move v0, v3

    .line 1968
    goto :goto_2d
.end method

.method public getSetLeftS()D
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 1176
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_1d

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getStationS()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    :cond_1d
    return-wide v0
.end method

.method public getSetTargetS()D
    .registers 9

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 1957
    :goto_11
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1958
    int-to-double v4, v2

    mul-double/2addr v4, v0

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_26

    const/4 v3, 0x1

    if-le v2, v3, :cond_26

    .line 1959
    add-int/lit8 v2, v2, -0x1

    .line 1961
    :cond_26
    int-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0

    .line 1956
    :cond_29
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    goto :goto_11
.end method

.method public getSkippedS()D
    .registers 3

    .prologue
    .line 1976
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    return-wide v0
.end method

.method public getStartMs()J
    .registers 3

    .prologue
    .line 2673
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    return-wide v0
.end method

.method public getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;
    .registers 2

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    return-object v0
.end method

.method public getStationIndex()I
    .registers 2

    .prologue
    .line 2385
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    return v0
.end method

.method public getStationS()D
    .registers 11

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 2390
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v0, v1, :cond_36

    .line 2391
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v8

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    div-double/2addr v4, v8

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_34
    add-double/2addr v0, v2

    .line 2390
    return-wide v0

    .line 2391
    :cond_36
    const-wide/16 v0, 0x0

    goto :goto_34
.end method

.method public getStationsDone()I
    .registers 2

    .prologue
    .line 2395
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    return v0
.end method

.method public getStretchS()D
    .registers 3

    .prologue
    .line 1850
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stretchUsedS:D

    return-wide v0
.end method

.method public getSystemLoad(J)D
    .registers 10

    .prologue
    .line 1735
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMuscularLoad(J)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCentralLoad(J)D

    move-result-wide v2

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getDoseLoad(J)D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->totalLoad(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalPauseS()D
    .registers 3

    .prologue
    .line 2669
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    return-wide v0
.end method

.method public getTrace()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    return-object v0
.end method

.method public getTuneHzPct()I
    .registers 2

    .prologue
    .line 766
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneHzPct:I

    return v0
.end method

.method public getTuneOff()I
    .registers 2

    .prologue
    .line 762
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOff:I

    return v0
.end method

.method public getTuneOn()I
    .registers 2

    .prologue
    .line 751
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOn:I

    return v0
.end method

.method public getTunePwPct()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tunePwPct:I

    return v0
.end method

.method public getTuneRest()D
    .registers 3

    .prologue
    .line 770
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneRest:D

    return-wide v0
.end method

.method public getUserScaleMax()D
    .registers 3

    .prologue
    .line 2665
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    return-wide v0
.end method

.method public getZoneActive(J)[Z
    .registers 14

    .prologue
    const/16 v5, 0xb

    const/4 v1, 0x0

    .line 1680
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneLive(J)[D

    move-result-object v3

    .line 1681
    new-array v4, v5, [Z

    move v2, v1

    .line 1682
    :goto_a
    if-ge v2, v5, :cond_1d

    .line 1683
    aget-wide v6, v3, v2

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    :goto_15
    aput-boolean v0, v4, v2

    .line 1682
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_1b
    move v0, v1

    .line 1683
    goto :goto_15

    .line 1685
    :cond_1d
    return-object v4
.end method

.method public getZoneDone(J)[D
    .registers 6

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneSum(J[DI)[D

    move-result-object v0

    return-object v0
.end method

.method public getZoneExDone(J)[D
    .registers 6

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExDone:[D

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneSum(J[DI)[D

    move-result-object v0

    return-object v0
.end method

.method public getZoneLive(J)[D
    .registers 16

    .prologue
    .line 1277
    const/16 v0, 0xb

    new-array v2, v0, [D

    .line 1278
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_22

    :cond_20
    move-object v0, v2

    .line 1289
    :goto_21
    return-object v0

    .line 1281
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v7

    .line 1282
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->exerciseMuscles(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v8

    .line 1283
    const/4 v0, 0x0

    move v6, v0

    :goto_30
    const/16 v0, 0xa

    if-ge v6, v0, :cond_70

    .line 1284
    if-eqz v7, :cond_3e

    array-length v0, v7

    if-ge v6, v0, :cond_3e

    aget v0, v7, v6

    const/4 v1, 0x2

    if-lt v0, v1, :cond_63

    :cond_3e
    const/4 v0, 0x1

    move v1, v0

    .line 1285
    :goto_40
    if-eqz v8, :cond_66

    array-length v0, v8

    if-ge v6, v0, :cond_66

    aget v0, v8, v6

    int-to-double v4, v0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v10

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    cmpl-double v0, v4, v10

    if-ltz v0, :cond_66

    const/4 v0, 0x1

    move v3, v0

    .line 1286
    :goto_53
    if-eqz v1, :cond_69

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    move-wide v4, v0

    :goto_58
    if-eqz v3, :cond_6d

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    :goto_5c
    add-double/2addr v0, v4

    aput-wide v0, v2, v6

    .line 1283
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_30

    .line 1284
    :cond_63
    const/4 v0, 0x0

    move v1, v0

    goto :goto_40

    .line 1285
    :cond_66
    const/4 v0, 0x0

    move v3, v0

    goto :goto_53

    .line 1286
    :cond_69
    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto :goto_58

    :cond_6d
    const-wide/16 v0, 0x0

    goto :goto_5c

    .line 1288
    :cond_70
    const/16 v3, 0xa

    if-eqz v8, :cond_8b

    const/4 v0, 0x5

    array-length v1, v8

    if-ge v0, v1, :cond_8b

    const/4 v0, 0x5

    aget v0, v8, v0

    int-to-double v0, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_8b

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    :goto_87
    aput-wide v0, v2, v3

    move-object v0, v2

    .line 1289
    goto :goto_21

    .line 1288
    :cond_8b
    const-wide/16 v0, 0x0

    goto :goto_87
.end method

.method public getZoneProgress(J)[D
    .registers 18

    .prologue
    .line 1698
    invoke-virtual/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneDone(J)[D

    move-result-object v5

    .line 1699
    const-wide/16 v0, 0x0

    .line 1700
    const-wide/16 v2, 0x0

    .line 1701
    const/4 v4, 0x0

    :goto_9
    const/16 v6, 0xa

    if-ge v4, v6, :cond_32

    .line 1702
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    array-length v6, v6

    if-ge v4, v6, :cond_1e

    .line 1703
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    aget-wide v6, v6, v4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1705
    :cond_1e
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    if-eqz v6, :cond_2f

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    array-length v6, v6

    if-ge v4, v6, :cond_2f

    .line 1706
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    aget-wide v6, v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1701
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1709
    :cond_32
    array-length v4, v5

    new-array v10, v4, [D

    .line 1710
    const/4 v4, 0x0

    :goto_36
    array-length v6, v5

    if-ge v4, v6, :cond_82

    .line 1711
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    if-eqz v6, :cond_77

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    array-length v6, v6

    if-ge v4, v6, :cond_77

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    aget-wide v6, v6, v4

    move-wide v8, v6

    .line 1712
    :goto_47
    const/16 v6, 0xa

    if-ne v4, v6, :cond_7b

    move-wide v6, v2

    .line 1713
    :goto_4c
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v12

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 1714
    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v11, v6, v12

    if-lez v11, :cond_70

    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v8, v8, v12

    if-gtz v8, :cond_7d

    aget-wide v8, v5, v4

    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v8, v8, v12

    if-gtz v8, :cond_7d

    :cond_70
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    :goto_72
    aput-wide v6, v10, v4

    .line 1710
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 1711
    :cond_77
    const-wide/16 v6, 0x0

    move-wide v8, v6

    goto :goto_47

    :cond_7b
    move-wide v6, v0

    .line 1712
    goto :goto_4c

    .line 1714
    :cond_7d
    aget-wide v8, v5, v4

    div-double v6, v8, v6

    goto :goto_72

    .line 1716
    :cond_82
    return-object v10
.end method

.method public isCardioLimiting(J)Z
    .registers 8

    .prologue
    .line 1748
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCardioLoad(J)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPeakLoad(J)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isContinuous()Z
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    return v0
.end method

.method public isDoseStopped()Z
    .registers 2

    .prologue
    .line 2653
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseStopped:Z

    return v0
.end method

.method public isDoublePulseAvailable()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 615
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-nez v0, :cond_a

    move v0, v2

    .line 631
    :goto_9
    return v0

    .line 618
    :cond_a
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_66

    .line 619
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->approaches(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v0

    :goto_2d
    move v4, v2

    .line 620
    :goto_2e
    if-eqz v0, :cond_40

    array-length v5, v0

    if-ge v4, v5, :cond_40

    .line 621
    aget-object v5, v0, v4

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseHz:I

    if-lez v5, :cond_3d

    move v0, v3

    .line 622
    goto :goto_9

    .line 619
    :cond_3b
    const/4 v0, 0x0

    goto :goto_2d

    .line 620
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 625
    :cond_40
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 626
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v0, :cond_50

    move v0, v3

    .line 627
    goto :goto_9

    .line 618
    :cond_62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_66
    move v0, v2

    .line 631
    goto :goto_9
.end method

.method public isDoublePulseOn()Z
    .registers 2

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    return v0
.end method

.method public isRaiseLocked()Z
    .registers 2

    .prologue
    .line 2657
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    return v0
.end method

.method public isRestBeforeCooldown()Z
    .registers 3

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isRestHrHigh(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 2344
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_13

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v1, v2, :cond_14

    .line 2355
    :cond_13
    :goto_13
    return v0

    .line 2347
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v2

    .line 2348
    if-lez v2, :cond_13

    .line 2351
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v1, v1, -0xf

    .line 2352
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v3

    if-lez v3, :cond_3a

    .line 2353
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2355
    :cond_3a
    if-le v2, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method

.method public isResumeWaiting()Z
    .registers 3

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isStationPhase(I)Z
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases:[Z

    if-eqz v0, :cond_13

    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method metaDemand(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D
    .registers 22

    .prologue
    .line 1550
    if-eqz p1, :cond_c

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_f

    .line 1551
    :cond_c
    const-wide/16 v2, 0x0

    .line 1573
    :goto_e
    return-wide v2

    .line 1553
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->vo2Ref()[D

    move-result-object v12

    .line 1554
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_ed

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_ed

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    :goto_29
    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->pwFactor(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D

    move-result-wide v4

    mul-double v14, v2, v4

    .line 1555
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    int-to-double v4, v4

    div-double v6, v2, v4

    .line 1556
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v2, :cond_101

    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v2, :cond_101

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_101

    const/4 v2, 0x1

    .line 1557
    :goto_66
    invoke-virtual/range {p0 .. p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v13

    .line 1558
    const-wide/16 v4, 0x0

    .line 1559
    const/4 v3, 0x0

    move-wide v10, v4

    :goto_6e
    const/16 v4, 0xa

    if-ge v3, v4, :cond_108

    .line 1560
    if-eqz v13, :cond_104

    array-length v4, v13

    if-ge v3, v4, :cond_104

    const/4 v4, 0x0

    aget v5, v13, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v8

    .line 1561
    :goto_82
    mul-double v8, v14, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Lcom/isaigu/gymapp/ai/AiEnergy;->recruited(DD)D

    move-result-wide v8

    mul-double/2addr v8, v6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/AiEnergy;->freqFactor(I)D

    move-result-wide v16

    mul-double v8, v8, v16

    .line 1562
    if-eqz v2, :cond_157

    .line 1563
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v6

    mul-double/2addr v4, v14

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    move-wide/from16 v18, v0

    mul-double v4, v4, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Lcom/isaigu/gymapp/ai/AiEnergy;->recruited(DD)D

    move-result-wide v4

    mul-double v4, v4, v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/AiEnergy;->freqFactor(I)D

    move-result-wide v16

    mul-double v4, v4, v16

    add-double/2addr v4, v8

    .line 1565
    :goto_bf
    sget-object v8, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    aget-wide v8, v8, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->chMuscle(I)D

    move-result-wide v16

    mul-double v8, v8, v16

    const/16 v16, 0x1

    aget-wide v16, v12, v16

    mul-double v8, v8, v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->reach(II)D

    move-result-wide v16

    mul-double v8, v8, v16

    mul-double/2addr v4, v8

    const-wide v8, 0x406f400000000000L    # 250.0

    mul-double/2addr v4, v8

    add-double/2addr v4, v10

    .line 1559
    add-int/lit8 v3, v3, 0x1

    move-wide v10, v4

    goto :goto_6e

    .line 1554
    :cond_ed
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    goto/16 :goto_29

    .line 1556
    :cond_101
    const/4 v2, 0x0

    goto/16 :goto_66

    .line 1560
    :cond_104
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_82

    .line 1567
    :cond_108
    const-wide/16 v2, 0x0

    .line 1568
    move-object/from16 v0, p1

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v4, v5, :cond_137

    move-object/from16 v0, p1

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v4

    if-eqz v4, :cond_137

    .line 1569
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v2

    .line 1570
    if-eqz v2, :cond_14e

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v2

    .line 1571
    :goto_12a
    if-ltz v2, :cond_150

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v2

    const/4 v4, 0x2

    aget-wide v4, v12, v4

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseVo2(DDD)D

    move-result-wide v2

    .line 1573
    :cond_137
    :goto_137
    const/4 v4, 0x0

    aget-wide v4, v12, v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_153

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v10, v4

    add-double/2addr v2, v4

    const/4 v4, 0x0

    aget-wide v4, v12, v4

    div-double/2addr v2, v4

    goto/16 :goto_e

    .line 1570
    :cond_14e
    const/4 v2, -0x1

    goto :goto_12a

    .line 1571
    :cond_150
    const-wide/16 v2, 0x0

    goto :goto_137

    .line 1573
    :cond_153
    const-wide/16 v2, 0x0

    goto/16 :goto_e

    :cond_157
    move-wide v4, v8

    goto/16 :goto_bf
.end method

.method public needsPause()Z
    .registers 5

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Endurance;->reserve()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public next(J)Z
    .registers 16

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 1992
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 1993
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_1d

    .line 2050
    :cond_1c
    :goto_1c
    return v2

    .line 1996
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_a9

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 1997
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1998
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v0, v1, :cond_67

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v0, v1, :cond_67

    .line 1999
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v10, v10, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v10, p1, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v8

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 2000
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 2002
    :cond_67
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    sub-double/2addr v0, v4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->skip(D)V

    .line 2003
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    .line 2004
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 2005
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip \u2192 set ended early, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s skipped in all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 2007
    invoke-direct {p0, p1, p2, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    move v2, v3

    .line 2008
    goto/16 :goto_1c

    .line 2010
    :cond_a9
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_d8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-eqz v0, :cond_d8

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-le v0, v1, :cond_d8

    .line 2011
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 2012
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseStartS(I)D

    move-result-wide v4

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->skip(D)V

    .line 2013
    const-string v1, "skip \u2192 recovery"

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 2014
    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    move v2, v3

    .line 2015
    goto/16 :goto_1c

    .line 2017
    :cond_d8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_147

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-nez v0, :cond_147

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 2018
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->skip(D)V

    .line 2019
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip \u2192 the coming set, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s skipped in all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 2021
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v0

    .line 2022
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v1

    .line 2023
    if-ltz v1, :cond_13b

    if-ge v0, v1, :cond_135

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_13b

    .line 2024
    :cond_135
    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    :cond_138
    :goto_138
    move v2, v3

    .line 2030
    goto/16 :goto_1c

    .line 2025
    :cond_13b
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v0, v1, :cond_138

    .line 2026
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 2027
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 2028
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    goto :goto_138

    .line 2032
    :cond_147
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_1c

    .line 2033
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    add-int/lit8 v8, v0, 0x1

    move v1, v2

    move-wide v4, v6

    .line 2035
    :goto_153
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-gt v1, v0, :cond_169

    .line 2036
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v10, v0

    add-double/2addr v4, v10

    .line 2035
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_153

    .line 2038
    :cond_169
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double v0, v4, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->skip(D)V

    .line 2039
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_199

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_199

    .line 2040
    const-string v0, "skip \u2192 recovery"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 2041
    invoke-direct {p0, p1, p2, v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    move v2, v3

    .line 2042
    goto/16 :goto_1c

    .line 2044
    :cond_199
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1c

    .line 2045
    invoke-direct {p0, v8, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip \u2192 phase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    move v2, v3

    .line 2047
    goto/16 :goto_1c
.end method

.method public onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1c

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    const-wide/16 v4, 0x320

    sub-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1c

    .line 723
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->go(J)V

    .line 724
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 736
    :cond_1b
    :goto_1b
    return-object v0

    .line 726
    :cond_1c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    .line 729
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v2, p1, v2

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v1

    add-int/lit16 v1, v1, -0x2bc

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_3c

    .line 730
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto :goto_1b

    .line 732
    :cond_3c
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 733
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    .line 736
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    goto :goto_1b
.end method

.method public onHr(JI)V
    .registers 9

    .prologue
    .line 707
    const/16 v0, 0x1e

    if-lt p3, v0, :cond_8

    const/16 v0, 0xdc

    if-le p3, v0, :cond_9

    .line 716
    :cond_8
    :goto_8
    return-void

    .line 710
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->learnHr(JI)V

    .line 711
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    .line 712
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    .line 713
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    .line 714
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrSum:D

    int-to-double v2, p3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrSum:D

    .line 715
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrCount:I

    goto :goto_8
.end method

.method public phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;
    .registers 3

    .prologue
    .line 2587
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public phaseElapsed()D
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 2603
    .line 2604
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_5
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-ge v1, v0, :cond_1b

    .line 2605
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v6, v0

    add-double/2addr v2, v6

    .line 2604
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 2607
    :cond_1b
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public phaseRemainingS()D
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 2611
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 2612
    if-eqz v2, :cond_14

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v2, v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    :cond_14
    return-wide v0
.end method

.method public declared-synchronized pollEvents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->events:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 196
    monitor-exit p0

    return-object v0

    .line 194
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method predictHr(J)I
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 2201
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGapMs:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3b

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGap:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGapMs:J

    sub-long v2, p1, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    neg-long v2, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 2202
    :goto_22
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->hrModel(J)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x4041800000000000L    # 35.0

    const-wide v4, 0x406b800000000000L    # 220.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 2201
    :cond_3b
    const-wide/16 v0, 0x0

    goto :goto_22
.end method

.method reach(II)D
    .registers 15

    .prologue
    const-wide v2, 0x4075e00000000000L    # 350.0

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    .line 1476
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_DEPTH:[D

    aget-wide v6, v0, p1

    if-lez p2, :cond_6e

    int-to-double v0, p2

    :goto_11
    div-double/2addr v0, v2

    const-wide v2, 0x3fd3333333333333L    # 0.3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    .line 1477
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct()D

    move-result-wide v0

    .line 1478
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v2, :cond_70

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->channelFat:[D

    .line 1479
    :goto_30
    if-eqz v2, :cond_41

    if-ltz p1, :cond_41

    array-length v3, v2

    if-ge p1, v3, :cond_41

    aget-wide v8, v2, p1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpl-double v3, v8, v10

    if-lez v3, :cond_41

    .line 1480
    aget-wide v0, v2, p1

    .line 1482
    :cond_41
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_72

    .line 1483
    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    sub-double/2addr v0, v2

    neg-double v0, v0

    const-wide v2, 0x4041800000000000L    # 35.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    .line 1485
    :goto_5f
    const-wide v2, 0x3fa999999999999aL    # 0.05

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    return-wide v0

    :cond_6e
    move-wide v0, v2

    .line 1476
    goto :goto_11

    .line 1478
    :cond_70
    const/4 v2, 0x0

    goto :goto_30

    :cond_72
    move-wide v0, v6

    goto :goto_5f
.end method

.method public refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 8

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v1, :cond_d

    .line 679
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 689
    :cond_c
    :goto_c
    return-object v0

    .line 681
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 682
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->stepIndex:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 683
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    .line 684
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 685
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_c

    .line 686
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 687
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    goto :goto_c
.end method

.method public requestGo(JJ)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 443
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_14

    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v1

    if-gtz v1, :cond_13

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 451
    :cond_13
    :goto_13
    return v0

    .line 447
    :cond_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 450
    :cond_1a
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    .line 451
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public resume(J)V
    .registers 14

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 552
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v0

    if-nez v0, :cond_9

    .line 574
    :goto_8
    return-void

    .line 555
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->advance(J)V

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 557
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v6, v0, v2

    .line 558
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    .line 559
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    invoke-direct {p0, v2, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedOf(Lcom/isaigu/gymapp/ai/AutoEngine$State;D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    .line 561
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpl-double v0, v6, v0

    if-ltz v0, :cond_9e

    const-wide v0, 0x4082c00000000000L    # 600.0

    div-double v0, v6, v0

    sub-double v0, v8, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    :goto_48
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 562
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_5d

    .line 563
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 565
    :cond_5d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v0, :cond_66

    .line 566
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 567
    invoke-direct {p0, p1, p2, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->safeAfterPause(JD)V

    .line 569
    :cond_66
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 571
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 573
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto/16 :goto_8

    .line 561
    :cond_9e
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_48
.end method

.method public rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D
    .registers 14

    .prologue
    .line 2551
    if-nez p1, :cond_5

    .line 2552
    const-wide/16 v0, 0x0

    .line 2556
    :cond_4
    :goto_4
    return-wide v0

    .line 2554
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v2

    .line 2555
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->env:D

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    mul-double/2addr v0, p2

    iget-wide v4, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    mul-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 2556
    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    if-eqz v4, :cond_4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_4
.end method

.method public setContinuous(Z)V
    .registers 2

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    .line 149
    return-void
.end method

.method public setDoseBudget(D)V
    .registers 4

    .prologue
    .line 1721
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseBudget:D

    .line 1722
    return-void
.end method

.method public setDoublePulse(ZJ)V
    .registers 6

    .prologue
    .line 639
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-nez v0, :cond_7

    .line 645
    :goto_6
    return-void

    .line 642
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 643
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "double pulse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_27

    const-string v0, "on"

    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto :goto_6

    :cond_27
    const-string v0, "off"

    goto :goto_1b
.end method

.method public setLive(D[IJ)V
    .registers 11

    .prologue
    .line 1339
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    cmpg-double v0, v0, v2

    if-gez v0, :cond_27

    if-nez p3, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    if-nez v0, :cond_27

    .line 1340
    :cond_17
    const/4 v0, 0x1

    .line 1341
    :goto_18
    if-eqz v0, :cond_29

    .line 1347
    :goto_1a
    return-void

    .line 1339
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    .line 1340
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_27
    const/4 v0, 0x0

    goto :goto_18

    .line 1344
    :cond_29
    invoke-direct {p0, p4, p5}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 1345
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    .line 1346
    if-eqz p3, :cond_39

    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_36
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    goto :goto_1a

    :cond_39
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public setScript(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V
    .registers 3

    .prologue
    .line 346
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 347
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases:[Z

    .line 348
    return-void
.end method

.method public setStations([Z)V
    .registers 3

    .prologue
    .line 341
    if-eqz p1, :cond_b

    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_8
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases:[Z

    .line 342
    return-void

    .line 341
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setTune(IIID)V
    .registers 10

    .prologue
    const/4 v1, -0x1

    .line 744
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOn:I

    .line 745
    const/4 v0, 0x2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOff:I

    .line 746
    const/16 v0, -0xa

    const/16 v1, 0xa

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneHzPct:I

    .line 747
    const-wide v0, 0x3fe6666666666666L    # 0.7

    const-wide v2, 0x3ff999999999999aL    # 1.6

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneRest:D

    .line 748
    return-void
.end method

.method public setTunePw(I)V
    .registers 4

    .prologue
    .line 140
    const/16 v0, -0x1e

    const/16 v1, 0x1e

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tunePwPct:I

    .line 141
    return-void
.end method

.method public setUserScale(D)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 699
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1e

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1e

    .line 700
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 702
    :cond_1e
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 703
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    .line 704
    return-void
.end method

.method public setVeto(III)V
    .registers 7

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 756
    const/16 v0, 0x78

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoHz:I

    .line 757
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOn:I

    .line 758
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOff:I

    .line 759
    return-void
.end method

.method public setZoneBudget([D)V
    .registers 3

    .prologue
    .line 1665
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->setZoneBudget([D[D)V

    .line 1666
    return-void
.end method

.method public setZoneBudget([D[D)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1670
    if-eqz p1, :cond_16

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_9
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    .line 1671
    if-eqz p2, :cond_18

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_13
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    .line 1672
    return-void

    :cond_16
    move-object v0, v1

    .line 1670
    goto :goto_9

    :cond_18
    move-object v0, v1

    .line 1671
    goto :goto_13
.end method

.method public skipToCooldown(J)V
    .registers 6

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 579
    if-gez v0, :cond_10

    .line 580
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 582
    :cond_10
    if-ltz v0, :cond_16

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-gt v0, v1, :cond_17

    .line 590
    :cond_16
    :goto_16
    return-void

    .line 585
    :cond_17
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 586
    const-string v0, "skip \u2192 cool-down"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_16

    .line 588
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto :goto_16
.end method

.method public start(J)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 370
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    .line 371
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 372
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 373
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 374
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " T="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s \u03c6max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " E="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    .line 377
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 379
    return-void
.end method

.method public startAt(JJ)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 383
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    .line 384
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 385
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 386
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 387
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " T="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s \u03c6max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    .line 389
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " E="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 390
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    .line 391
    return-void
.end method

.method public stop(J)V
    .registers 6

    .prologue
    .line 511
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_11

    .line 512
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 513
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    .line 514
    const-string v0, "stop"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 516
    :cond_11
    return-void
.end method

.method public stopPress(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 459
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_10

    :cond_e
    move v0, v1

    .line 473
    :goto_f
    return v0

    .line 462
    :cond_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 463
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v3

    .line 464
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_36

    move v2, v1

    .line 465
    :goto_21
    if-ltz v3, :cond_2b

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v4, :cond_38

    .line 466
    :cond_2b
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->stop(J)V

    move v0, v1

    .line 468
    goto :goto_f

    :cond_36
    move v2, v0

    .line 464
    goto :goto_21

    .line 470
    :cond_38
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    .line 471
    const-string v1, "stop pressed \u2192 recovery"

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 472
    invoke-direct {p0, p1, p2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    goto :goto_f
.end method

.method public sustainable(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Z
    .registers 11

    .prologue
    .line 183
    if-eqz p1, :cond_1a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->end:Lcom/isaigu/gymapp/ai/Endurance;

    iget v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iget v3, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    iget v4, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    iget v5, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    iget-wide v6, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    iget v8, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    invoke-virtual/range {v1 .. v8}, Lcom/isaigu/gymapp/ai/Endurance;->intensity(IIIIDI)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public templateOnly()Z
    .registers 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public tick(J)V
    .registers 16

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    .line 791
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endAtS:D

    cmpl-double v1, v4, v8

    if-lez v1, :cond_2e

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endAtS:D

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_2e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 792
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endAtS:D

    .line 793
    const-string v1, "coach: end of the active part"

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 794
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->stopPress(J)Z

    .line 796
    :cond_2e
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 797
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v3, :cond_53

    .line 798
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->advance(J)V

    .line 799
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->clockRuns()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->followClock(J)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 873
    :cond_52
    :goto_52
    return-void

    .line 803
    :cond_53
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 804
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v3, :cond_65

    .line 805
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_52

    .line 806
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->go(J)V

    goto :goto_52

    .line 810
    :cond_65
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-lez v1, :cond_c1

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x2710

    cmp-long v1, v6, v8

    if-gtz v1, :cond_c1

    move v1, v2

    .line 811
    :goto_74
    if-eqz v1, :cond_94

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_94

    .line 812
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrKnownS:D

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrKnownS:D

    .line 813
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v3, v6, :cond_94

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridor()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 814
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridorS:D

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridorS:D

    .line 817
    :cond_94
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_ed

    .line 818
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v3, v0, -0xa

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v0

    if-lez v0, :cond_c3

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v0

    :goto_ae
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 819
    if-eqz v1, :cond_e9

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-gt v1, v0, :cond_e9

    .line 820
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_c6

    .line 821
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    goto :goto_52

    :cond_c1
    move v1, v0

    .line 810
    goto :goto_74

    .line 818
    :cond_c3
    const/16 v0, 0x3e7

    goto :goto_ae

    .line 822
    :cond_c6
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v4, 0x4e20

    cmp-long v0, v0, v4

    if-ltz v0, :cond_52

    .line 823
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 824
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v0

    if-nez v0, :cond_52

    .line 825
    const-wide/16 v0, 0xbb8

    add-long v4, p1, v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    goto/16 :goto_52

    .line 829
    :cond_e9
    iput-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    goto/16 :goto_52

    .line 833
    :cond_ed
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_52

    .line 837
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v3, v6, :cond_163

    if-eqz v1, :cond_163

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    if-lt v3, v6, :cond_163

    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v3, :cond_163

    .line 838
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    if-nez v0, :cond_141

    .line 839
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    .line 840
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2265 cap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2192 continuous: a safety step"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 855
    :cond_141
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 856
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->runS:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->runS:D

    .line 857
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1eb

    .line 858
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 859
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    .line 860
    const-string v0, "done"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto/16 :goto_52

    .line 843
    :cond_163
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v3, v6, :cond_141

    if-eqz v1, :cond_141

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    if-lt v1, v3, :cond_141

    .line 844
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 845
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 846
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 847
    iput-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    .line 848
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    .line 849
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v4

    .line 850
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    const/4 v3, 0x7

    new-array v3, v3, [F

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v3, v0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    double-to-float v6, v6

    aput v6, v3, v2

    const/4 v2, 0x2

    double-to-float v6, v4

    aput v6, v3, v2

    const/4 v2, 0x3

    double-to-float v4, v4

    aput v4, v3, v2

    const/4 v2, 0x4

    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    int-to-float v4, v4

    aput v4, v3, v2

    const/4 v2, 0x5

    .line 851
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    aput v0, v3, v2

    const/4 v0, 0x6

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v3, v0

    .line 850
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2265 cap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2192 pause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto/16 :goto_52

    .line 863
    :cond_1eb
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v1

    .line 866
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v1, v0, :cond_210

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_20d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_210

    .line 867
    :cond_20d
    invoke-direct {p0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 870
    :cond_210
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_52

    .line 871
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto/16 :goto_52
.end method

.method public traceTick(J)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    .line 1921
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_1a

    .line 1935
    :cond_19
    :goto_19
    return-void

    .line 1924
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v2

    .line 1925
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v7

    float-to-double v0, v0

    sub-double v0, v2, v0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpg-double v0, v0, v4

    if-ltz v0, :cond_19

    .line 1928
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_8b

    const/high16 v0, 0x40000000    # 2.0f

    .line 1929
    :goto_49
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v4

    .line 1930
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    const/4 v6, 0x7

    new-array v6, v6, [F

    double-to-float v2, v2

    aput v2, v6, v7

    const/4 v2, 0x1

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    double-to-float v3, v8

    aput v3, v6, v2

    const/4 v2, 0x2

    double-to-float v3, v4

    aput v3, v6, v2

    const/4 v2, 0x3

    double-to-float v3, v4

    aput v3, v6, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    int-to-float v3, v3

    aput v3, v6, v2

    const/4 v2, 0x5

    .line 1931
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    aput v3, v6, v2

    const/4 v2, 0x6

    aput v0, v6, v2

    .line 1930
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1932
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_19

    .line 1933
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_19

    .line 1928
    :cond_8b
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_49
.end method

.method public userParams(IIIIJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 12

    .prologue
    const/4 v1, -0x1

    .line 653
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 654
    if-eqz v2, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-nez v0, :cond_14

    .line 655
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 672
    :goto_13
    return-object v0

    .line 657
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 658
    if-lez p1, :cond_2a

    .line 659
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hz:Z

    if-eqz v0, :cond_a2

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-static {v0, v4, p1}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowHz(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_28
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    .line 661
    :cond_2a
    if-lez p2, :cond_3c

    .line 662
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->on:Z

    if-eqz v0, :cond_a4

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-static {v0, v4, p2}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowOn(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_3a
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    .line 664
    :cond_3c
    if-lez p3, :cond_4e

    .line 665
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->off:Z

    if-eqz v0, :cond_a6

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v0, v4, p3}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowOff(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_4c
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    .line 667
    :cond_4e
    if-lez p4, :cond_60

    .line 668
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pw:Z

    if-eqz v0, :cond_5e

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    invoke-static {v0, v1, p4}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowPw(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v1

    :cond_5e
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    .line 670
    :cond_60
    invoke-virtual {p0, p5, p6}, Lcom/isaigu/gymapp/ai/AutoEngine;->refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user params hz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p5, p6, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto/16 :goto_13

    :cond_a2
    move v0, v1

    .line 659
    goto :goto_28

    :cond_a4
    move v0, v1

    .line 662
    goto :goto_3a

    :cond_a6
    move v0, v1

    .line 665
    goto :goto_4c
.end method

.method public userPause(J)V
    .registers 6

    .prologue
    .line 537
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_1a

    .line 538
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->advance(J)V

    .line 539
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 540
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 541
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceRest(J)V

    .line 543
    const-string v0, "pause"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 545
    :cond_1a
    return-void
.end method

.method zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1185
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    .line 1186
    :goto_7
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq p1, v1, :cond_15

    .line 1195
    :cond_f
    return-object v0

    .line 1185
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    goto :goto_7

    .line 1189
    :cond_15
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v1, v2

    .line 1190
    :goto_1c
    array-length v3, v0

    if-ge v1, v3, :cond_f

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    array-length v3, v3

    if-ge v1, v3, :cond_f

    .line 1191
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    aget v3, v3, v1

    if-gtz v3, :cond_2c

    .line 1192
    aput v2, v0, v1

    .line 1190
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method
