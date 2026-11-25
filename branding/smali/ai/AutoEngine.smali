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

.field public static final SAFE_AT:D = 0.85

.field public static final SAFE_FLOOR_HZ:I = 0x14

.field public static final SAFE_STEP_HZ:I = 0xa

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

.field private endAtS:D

.field private endMs:J

.field private fAtPause:D

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

.field private safeFloor:Z

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

    .line 320
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

    .line 250
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 259
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 260
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    .line 264
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 282
    const/16 v0, 0xa

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    .line 288
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    .line 301
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    .line 303
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastRestMinS:I

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    .line 310
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 314
    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    .line 1431
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    .line 1434
    new-array v0, v8, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    .line 1435
    new-array v0, v8, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExDone:[D

    .line 1438
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 2165
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    .line 2171
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGapMs:J

    .line 321
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 322
    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_97

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v0, :cond_97

    move v0, v1

    :goto_7f
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    .line 323
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v0

    .line 324
    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    .line 325
    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    .line 326
    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    .line 327
    return-void

    :cond_97
    move v0, v2

    .line 322
    goto :goto_7f
.end method

.method private adaptFor(IJ)V
    .registers 10

    .prologue
    const/16 v4, 0x23

    const/16 v3, 0x3c

    const/4 v1, 0x0

    .line 236
    if-lt p1, v3, :cond_57

    const/4 v0, 0x3

    .line 237
    :goto_8
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    if-lt v2, v3, :cond_16

    if-lt p1, v3, :cond_63

    const/16 v1, 0xf

    .line 239
    :cond_16
    :goto_16
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptOff:I

    if-lt v0, v2, :cond_68

    :goto_1a
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptOff:I

    .line 240
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptHzPct:I

    if-lt v1, v0, :cond_71

    :goto_20
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptHzPct:I

    .line 241
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

    .line 242
    return-void

    .line 236
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

    .line 237
    :cond_63
    if-lt p1, v4, :cond_16

    const/16 v1, 0xa

    goto :goto_16

    .line 239
    :cond_68
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->adaptOff:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1a

    .line 240
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

    .line 1822
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1823
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 1824
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->clockRuns()Z

    move-result v2

    if-eqz v2, :cond_1d

    cmpg-double v2, v0, v4

    if-gtz v2, :cond_1e

    .line 1838
    :cond_1d
    :goto_1d
    return-void

    .line 1827
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

    .line 1829
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoPlanner;->stretchS(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stretchUsedS:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1830
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stretchUsedS:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stretchUsedS:D

    .line 1831
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    .line 1832
    sub-double/2addr v0, v2

    .line 1834
    :cond_4a
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 1835
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_1d

    .line 1836
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->runS:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->runS:D

    goto :goto_1d
.end method

.method private build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 26

    .prologue
    .line 2414
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

    .line 2415
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

    .line 2416
    :goto_34
    const/4 v7, 0x0

    .line 2418
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v12

    .line 2419
    if-eqz v12, :cond_47e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->approaches(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v6

    .line 2421
    :goto_4b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v8, :cond_481

    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 2422
    :goto_54
    if-eqz v6, :cond_4bf

    .line 2423
    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    const v9, 0x186a0

    mul-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    add-int v12, v8, v9

    .line 2424
    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apKey:I

    if-eq v12, v8, :cond_21d

    .line 2425
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPhase:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v7, v8, :cond_92

    .line 2426
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPhase:I

    .line 2427
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    .line 2428
    const/4 v7, -0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev2:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    .line 2429
    const/16 v7, 0x8

    new-array v7, v7, [I

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    .line 2431
    :cond_92
    new-instance v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;

    invoke-direct {v13}, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;-><init>()V

    .line 2432
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

    .line 2433
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

    .line 2434
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

    .line 2435
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

    .line 2436
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

    .line 2437
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

    .line 2438
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    iput v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->set:I

    .line 2439
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    iput v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev:I

    .line 2440
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev2:I

    iput v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev2:I

    .line 2441
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

    .line 2442
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    iput-object v7, v13, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    .line 2443
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v13}, Lcom/isaigu/gymapp/ai/AutoDynamics;->pick([Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    .line 2444
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev2:I

    .line 2445
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    .line 2446
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    array-length v8, v8

    if-ge v7, v8, :cond_1a9

    .line 2447
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    .line 2449
    :cond_1a9
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    .line 2450
    move-object/from16 v0, p0

    iput v12, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apKey:I

    .line 2451
    const/4 v8, 0x1

    .line 2452
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    aget-object v7, v6, v7

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->name()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    .line 2453
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

    .line 2454
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

    .line 2453
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    move v7, v8

    .line 2456
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

    .line 2474
    :goto_232
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v8

    .line 2475
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    if-lez v6, :cond_242

    .line 2476
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 2478
    :cond_242
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    if-lez v6, :cond_24e

    .line 2479
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 2481
    :cond_24e
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    if-lez v6, :cond_25a

    .line 2482
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 2484
    :cond_25a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    if-lez v6, :cond_266

    .line 2485
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    .line 2487
    :cond_266
    iget v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 2488
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

    .line 2489
    const/16 v6, 0x14

    iget v9, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    sub-int/2addr v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 2491
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

    .line 2492
    :cond_2c5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoHz:I

    if-lez v6, :cond_2ef

    .line 2493
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

    .line 2495
    :cond_2ef
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOn:I

    if-lez v6, :cond_2fb

    .line 2496
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOn:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 2498
    :cond_2fb
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOff:I

    if-lez v6, :cond_307

    .line 2499
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOff:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 2502
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

    .line 2503
    :cond_31f
    const/4 v6, 0x1

    iget v9, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOn:I

    add-int/2addr v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 2504
    const/4 v6, 0x1

    iget v9, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOff:I

    add-int/2addr v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 2505
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

    .line 2507
    :cond_358
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->tunePwPct:I

    if-eqz v6, :cond_37b

    .line 2508
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

    .line 2510
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

    .line 2511
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object/from16 v0, p1

    invoke-static {v8, v5, v6, v0}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v8

    .line 2512
    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v5, :cond_545

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v6

    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v10, v5

    div-double/2addr v6, v10

    .line 2513
    :goto_3ab
    new-instance v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {v9}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;-><init>()V

    .line 2514
    iput-object v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 2515
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    .line 2516
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    .line 2517
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    .line 2518
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    .line 2519
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    .line 2520
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    .line 2521
    iget-object v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    iput-object v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    .line 2522
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    .line 2523
    move/from16 v0, p2

    iput v0, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->stepIndex:I

    .line 2524
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiAt(D)D

    move-result-wide v4

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    .line 2525
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envAt(D)D

    move-result-wide v4

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->env:D

    .line 2526
    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    mul-double/2addr v4, v10

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    .line 2527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v10, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 2528
    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    mul-double/2addr v4, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    mul-double/2addr v4, v10

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    .line 2529
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

    .line 2530
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

    .line 2531
    :goto_443
    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->ceiling:D

    .line 2532
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v4, :cond_47a

    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v4, :cond_47a

    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_47a

    .line 2533
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    .line 2534
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

    .line 2536
    :cond_47a
    return-object v9

    .line 2415
    :cond_47b
    const/4 v5, 0x0

    goto/16 :goto_34

    .line 2419
    :cond_47e
    const/4 v6, 0x0

    goto/16 :goto_4b

    .line 2421
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

    .line 2432
    :cond_49e
    const-wide/16 v8, 0x0

    goto/16 :goto_b7

    .line 2433
    :cond_4a2
    const/4 v7, 0x0

    move v8, v7

    goto/16 :goto_cf

    .line 2434
    :cond_4a6
    const/4 v7, 0x0

    goto/16 :goto_f4

    .line 2435
    :cond_4a9
    const/4 v7, 0x0

    goto/16 :goto_111

    .line 2436
    :cond_4ac
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_126

    .line 2437
    :cond_4b0
    const/4 v7, 0x0

    goto/16 :goto_138

    .line 2441
    :cond_4b3
    const-wide/16 v8, 0x0

    goto/16 :goto_169

    .line 2454
    :cond_4b7
    const-string v7, ""

    goto/16 :goto_203

    :cond_4bb
    const-string v7, ""

    goto/16 :goto_20d

    .line 2457
    :cond_4bf
    if-eqz v12, :cond_4e5

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v6

    if-eqz v6, :cond_4e5

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v8, v12

    if-lez v6, :cond_4e5

    .line 2458
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoDynamics;->baseOf(Lcom/isaigu/gymapp/ai/AutoModel$Step;)Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    invoke-static {v4, v6, v10, v11, v8}, Lcom/isaigu/gymapp/ai/AutoDynamics;->apply(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;DZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 2459
    const-string v6, ""

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    goto/16 :goto_232

    .line 2461
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

    .line 2462
    if-ltz v6, :cond_536

    .line 2463
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->sectorIdx:I

    if-eq v6, v7, :cond_534

    const/4 v7, 0x1

    .line 2464
    :goto_500
    if-eqz v7, :cond_51c

    .line 2465
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

    .line 2467
    :cond_51c
    move-object/from16 v0, p0

    iput v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->sectorIdx:I

    .line 2468
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    invoke-static {v4, v6, v8}, Lcom/isaigu/gymapp/ai/AutoDynamics;->sectorStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;IZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 2469
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AutoDynamics;->sectorName(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    goto/16 :goto_232

    .line 2463
    :cond_534
    const/4 v7, 0x0

    goto :goto_500

    .line 2471
    :cond_536
    const-string v6, ""

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    goto/16 :goto_232

    .line 2493
    :cond_53e
    const/16 v6, 0x28

    goto/16 :goto_2dd

    .line 2510
    :cond_542
    const/4 v6, -0x1

    goto/16 :goto_389

    .line 2512
    :cond_545
    const-wide/16 v6, 0x0

    goto/16 :goto_3ab

    .line 2531
    :cond_549
    iget-wide v6, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto/16 :goto_443

    .line 2534
    :cond_551
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_477
.end method

.method private static clamp(DDD)D
    .registers 8

    .prologue
    .line 2695
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
    .line 1817
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
    .line 1813
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
    .line 495
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_21

    .line 496
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    .line 500
    :goto_1d
    return v0

    .line 495
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 500
    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method private countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V
    .registers 13

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->advance(J)V

    .line 388
    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 389
    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    .line 390
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 391
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

    .line 392
    return-void
.end method

.method private doseAdded(J[[D)D
    .registers 23

    .prologue
    .line 1597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_10

    if-eqz p3, :cond_10

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_13

    .line 1598
    :cond_10
    const-wide/16 v2, 0x0

    .line 1618
    :goto_12
    return-wide v2

    .line 1600
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneMass()[D

    move-result-object v3

    .line 1601
    const-wide/16 v8, 0x0

    .line 1602
    const-wide/16 v6, 0x0

    .line 1603
    const-wide/16 v4, 0x0

    .line 1604
    const/4 v2, 0x0

    :goto_1e
    array-length v10, v3

    if-ge v2, v10, :cond_39

    .line 1605
    aget-wide v10, v3, v2

    add-double/2addr v8, v10

    .line 1606
    aget-wide v10, v3, v2

    const/4 v12, 0x0

    aget-object v12, p3, v12

    aget-wide v12, v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 1607
    aget-wide v10, v3, v2

    const/4 v12, 0x1

    aget-object v12, p3, v12

    aget-wide v12, v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 1604
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1609
    :cond_39
    const-wide/16 v2, 0x0

    cmpg-double v2, v8, v2

    if-gtz v2, :cond_42

    .line 1610
    const-wide/16 v2, 0x0

    goto :goto_12

    .line 1612
    :cond_42
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    .line 1613
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    .line 1614
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v14, v14, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long/2addr v12, v14

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    .line 1615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v14, v14, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v14, p1, v14

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 1616
    const-wide/16 v14, 0x0

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    sub-double v16, v16, v12

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 1617
    const-wide/16 v16, 0x0

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    sub-double v2, v10, v2

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1618
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

    .line 870
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 871
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 872
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    .line 873
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    .line 874
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

    .line 875
    return-void
.end method

.method private enterRecoveryRest(JI)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 475
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

    .line 477
    :goto_1b
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v3, p3, :cond_22

    .line 478
    invoke-direct {p0, p3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 480
    :cond_22
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 481
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 482
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 483
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 484
    if-nez v0, :cond_33

    .line 485
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 487
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 488
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 489
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 490
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceRest(J)V

    .line 492
    return-void

    :cond_41
    move v0, v1

    .line 475
    goto :goto_1b
.end method

.method private enterRest(JZ)V
    .registers 13

    .prologue
    .line 1031
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    .line 1032
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    .line 1033
    const/4 v0, 0x0

    .line 1034
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1035
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->restAfterSet()I

    move-result v1

    .line 1036
    if-nez p3, :cond_4f

    .line 1038
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    int-to-double v4, v1

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    add-double/2addr v2, v4

    .line 1041
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v4

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    add-double/2addr v6, v2

    invoke-direct {p0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1042
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v5

    .line 1043
    if-ltz v5, :cond_82

    if-ge v4, v5, :cond_3c

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v6, v6

    sub-double v2, v6, v2

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_82

    .line 1044
    :cond_3c
    const/4 p3, 0x1

    .line 1045
    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseStartS(I)D

    move-result-wide v2

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v2, v6

    .line 1046
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v6

    if-ltz v4, :cond_75

    .line 1049
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1063
    :cond_4f
    :goto_4f
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1064
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v2, :cond_c6

    .line 1065
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    .line 1066
    if-eqz p3, :cond_8f

    .line 1067
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 1068
    if-ltz v0, :cond_70

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v1, v0, :cond_70

    .line 1069
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 1070
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 1071
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 1077
    :cond_70
    :goto_70
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    .line 1094
    :goto_74
    return-void

    .line 1051
    :cond_75
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v2, v5, :cond_7c

    .line 1052
    invoke-direct {p0, v5, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 1054
    :cond_7c
    iput v5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 1055
    const/4 v2, 0x0

    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    goto :goto_4f

    .line 1057
    :cond_82
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v4, v2, :cond_4f

    .line 1058
    invoke-direct {p0, v4, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 1059
    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 1060
    const/4 v2, 0x0

    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    goto :goto_4f

    .line 1075
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

    .line 1080
    :cond_c6
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 1081
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 1082
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 1083
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 1084
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    .line 1085
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceRest(J)V

    .line 1086
    if-eqz p3, :cond_119

    .line 1087
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 1093
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

    .line 1089
    :cond_119
    int-to-double v0, v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneRest:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 1090
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastRestMinS:I

    .line 1091
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    goto :goto_dd
.end method

.method private exerciseMuscles(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1258
    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v1, v2, :cond_1f

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1259
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v1

    .line 1260
    if-eqz v1, :cond_20

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v1

    .line 1261
    :goto_19
    if-ltz v1, :cond_1f

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v0

    .line 1263
    :cond_1f
    return-object v0

    .line 1260
    :cond_20
    const/4 v1, -0x1

    goto :goto_19
.end method

.method private fAt(IJ[[D)D
    .registers 19

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    aget-wide v0, v0, p1

    .line 1292
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    cmp-long v2, p2, v2

    if-gtz v2, :cond_b

    .line 1315
    :cond_a
    :goto_a
    return-wide v0

    .line 1295
    :cond_b
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_11

    if-nez p4, :cond_26

    .line 1296
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

    .line 1298
    :cond_26
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v4, v2

    .line 1299
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v6

    .line 1300
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long/2addr v2, v8

    long-to-double v2, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v8

    .line 1301
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v8, p2, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    .line 1302
    cmpg-double v10, v2, v4

    if-gez v10, :cond_82

    cmpl-double v10, v8, v2

    if-lez v10, :cond_82

    .line 1303
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    sub-double v2, v10, v2

    neg-double v2, v2

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 1304
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

    .line 1305
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1307
    :cond_82
    cmpg-double v4, v2, v6

    if-gez v4, :cond_ab

    cmpl-double v4, v8, v2

    if-lez v4, :cond_ab

    .line 1308
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double v2, v4, v2

    neg-double v2, v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 1309
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

    .line 1310
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1312
    :cond_ab
    cmpl-double v4, v8, v2

    if-lez v4, :cond_a

    .line 1313
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
    .line 2691
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
    .line 1862
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1b

    .line 1863
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1864
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 1865
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    .line 1866
    const-string v0, "done"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 1867
    const/4 v0, 0x1

    .line 1904
    :goto_1a
    return v0

    .line 1869
    :cond_1b
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v1

    .line 1870
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v3

    .line 1871
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_51

    const/4 v0, 0x1

    .line 1872
    :goto_2c
    if-ltz v3, :cond_53

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-ge v2, v3, :cond_53

    if-lt v1, v3, :cond_53

    .line 1874
    invoke-direct {p0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 1875
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 1876
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 1877
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 1878
    if-eqz v0, :cond_4f

    .line 1879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 1880
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 1881
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 1882
    const-string v0, "active part over in the rest \u2192 recovery"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 1884
    :cond_4f
    const/4 v0, 0x0

    goto :goto_1a

    .line 1871
    :cond_51
    const/4 v0, 0x0

    goto :goto_2c

    .line 1886
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

    .line 1889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 1890
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 1891
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

    .line 1892
    const-string v0, "no room for another set \u2192 rest until the recovery"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 1893
    const/4 v0, 0x0

    goto :goto_1a

    .line 1895
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

    .line 1896
    :goto_a1
    if-eqz v2, :cond_c0

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1897
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

    .line 1899
    :cond_c0
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-le v1, v0, :cond_d6

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    if-eqz v2, :cond_d6

    .line 1900
    :cond_ce
    invoke-direct {p0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 1901
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 1902
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 1904
    :cond_d6
    const/4 v0, 0x0

    goto/16 :goto_1a

    .line 1895
    :cond_d9
    const/4 v0, 0x0

    move v2, v0

    goto :goto_a1

    :cond_dc
    move v0, v1

    .line 1897
    goto :goto_af
.end method

.method public static forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;Z)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 5

    .prologue
    .line 2100
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;ZD)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v0

    return-object v0
.end method

.method public static forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;ZD)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 16

    .prologue
    .line 2105
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;-><init>()V

    .line 2106
    new-instance v5, Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AutoEngine;-><init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V

    .line 2107
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 2108
    invoke-virtual {v5, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setScript(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V

    .line 2109
    const-wide/16 v0, 0x0

    invoke-virtual {v5, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoublePulse(ZJ)V

    .line 2110
    const-wide/16 v0, 0x0

    .line 2111
    invoke-virtual {v5, v0, v1, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->startAt(JJ)V

    .line 2112
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getGoMs()J

    move-result-wide v2

    .line 2113
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 2114
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    .line 2115
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    .line 2116
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v0, v1

    .line 2117
    const/4 v0, 0x0

    .line 2118
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

    .line 2119
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v6, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-wide v6, v0, v6

    const-wide/16 v8, 0x0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_6e

    .line 2120
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v6, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v8

    aput-wide v8, v0, v6

    .line 2122
    :cond_6e
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v6, :cond_9a

    .line 2123
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v6, v2

    .line 2124
    :goto_7f
    cmp-long v0, v2, v6

    if-gez v0, :cond_8e

    .line 2125
    const-wide/16 v8, 0xfa0

    add-long/2addr v2, v8

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2126
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceTick(J)V

    goto :goto_7f

    .line 2128
    :cond_8e
    invoke-virtual {v5, v2, v3, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->requestGo(JJ)Z

    .line 2129
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getGoMs()J

    move-result-wide v2

    .line 2130
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    move v0, v1

    .line 2131
    goto :goto_42

    .line 2133
    :cond_9a
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v6, :cond_a6

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v0, :cond_de

    .line 2140
    :cond_a6
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2141
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    .line 2142
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getDoseDone(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->dose:D

    .line 2143
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneDose:[D

    .line 2144
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneExDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneExDose:[D

    .line 2145
    const/4 v0, 0x1

    :goto_c6
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    array-length v1, v1

    if-ge v0, v1, :cond_f3

    .line 2146
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    aget-wide v2, v1, v0

    const-wide/16 v6, 0x0

    cmpg-double v1, v2, v6

    if-gez v1, :cond_db

    .line 2147
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    aput-wide v2, v1, v0

    .line 2145
    :cond_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 2136
    :cond_de
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    .line 2137
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 2138
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move v0, v1

    goto/16 :goto_42

    .line 2150
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

    .line 2151
    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    const/4 v5, 0x2

    aget v0, v0, v5

    float-to-double v6, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    goto :goto_f9

    .line 2153
    :cond_112
    return-object v4
.end method

.method private go(J)V
    .registers 16

    .prologue
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->advance(J)V

    .line 397
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 398
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 399
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v6, v0, :cond_e2

    .line 400
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 401
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    .line 402
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    invoke-direct {p0, v6, v8, v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedOf(Lcom/isaigu/gymapp/ai/AutoEngine$State;D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    .line 403
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v6, v0, :cond_ae

    .line 404
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restSumS:D

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restSumS:D

    .line 405
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    .line 406
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, v8, v0

    if-ltz v0, :cond_52

    .line 407
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 416
    :cond_52
    :goto_52
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v0, :cond_5b

    .line 417
    iput-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 418
    invoke-direct {p0, p1, p2, v8, v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->safeAfterPause(JD)V

    .line 420
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

    .line 424
    :goto_a1
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 426
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 428
    return-void

    .line 411
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

    .line 412
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v6, v0, :cond_52

    .line 413
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    goto/16 :goto_52

    .line 411
    :cond_db
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_c6

    .line 422
    :cond_e2
    const-string v0, "go"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto :goto_a1
.end method

.method private hrImposed(J)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1849
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_8

    .line 1852
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
    .line 2176
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 2177
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
    .line 2356
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    .line 2357
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

    .line 1802
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
    .line 2565
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorLoHr()I

    move-result v0

    .line 2566
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    .line 2567
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
    .line 597
    const-wide/16 v2, 0x0

    .line 598
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, p1, :cond_18

    .line 599
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 598
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 601
    :cond_18
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    cmpl-double v0, v2, v0

    if-lez v0, :cond_29

    .line 602
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpedS:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double v4, v2, v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpedS:D

    .line 603
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 605
    :cond_29
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 606
    return-void
.end method

.method private learnHr(JI)V
    .registers 13

    .prologue
    const-wide v6, 0x3fb47ae147ae147bL    # 0.08

    .line 2182
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 2183
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

    .line 2184
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

    .line 2185
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    sub-double/2addr v0, v4

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    .line 2187
    :cond_4b
    return-void
.end method

.method private log(JLjava/lang/String;)V
    .registers 17

    .prologue
    const-wide/16 v10, 0x3c

    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    .line 2683
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2684
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

    .line 2685
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_44

    .line 2686
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2688
    :cond_44
    return-void
.end method

.method private nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 16

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    .line 879
    if-nez v1, :cond_8

    .line 880
    const/4 v0, 0x0

    .line 989
    :cond_7
    :goto_7
    return-object v0

    .line 883
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v0, v2, :cond_141

    const/4 v0, 0x1

    .line 884
    :goto_13
    if-eqz v0, :cond_bb

    .line 885
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 886
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v0, v2, :cond_33

    .line 887
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 889
    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 890
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_bb

    .line 891
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v0, :cond_144

    const/4 v0, 0x1

    .line 892
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

    .line 893
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

    .line 894
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_147

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    div-double/2addr v2, v4

    .line 895
    :goto_8f
    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_14b

    .line 896
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

    .line 900
    :cond_af
    :goto_af
    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v2, v4

    if-lez v0, :cond_160

    const/4 v0, 0x1

    :goto_b9
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    .line 903
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

    .line 904
    const-string v0, "dose budget reached \u2192 cool-down"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseStopped:Z

    .line 906
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 907
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 910
    :goto_f0
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v1, v2, :cond_202

    .line 911
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_163

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_163

    const/4 v1, 0x1

    .line 912
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

    .line 913
    :goto_11e
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 914
    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 915
    const/4 v4, 0x0

    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 916
    if-ltz v3, :cond_16b

    if-nez v1, :cond_12d

    if-eqz v2, :cond_16b

    .line 917
    :cond_12d
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 918
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 919
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_167

    .line 920
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 883
    :cond_141
    const/4 v0, 0x0

    goto/16 :goto_13

    .line 891
    :cond_144
    const/4 v0, 0x0

    goto/16 :goto_51

    .line 894
    :cond_147
    const-wide/16 v2, 0x0

    goto/16 :goto_8f

    .line 897
    :cond_14b
    const-wide v4, 0x3ff0cccccccccccdL    # 1.05

    cmpg-double v0, v2, v4

    if-gez v0, :cond_af

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    if-lez v0, :cond_af

    .line 898
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    goto/16 :goto_af

    .line 900
    :cond_160
    const/4 v0, 0x0

    goto/16 :goto_b9

    .line 911
    :cond_163
    const/4 v1, 0x0

    goto :goto_107

    .line 912
    :cond_165
    const/4 v2, 0x0

    goto :goto_11e

    .line 922
    :cond_167
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 924
    :cond_16b
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 949
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

    .line 950
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1aa

    .line 951
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    .line 952
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-le v2, v1, :cond_29b

    .line 953
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    .line 958
    :cond_1aa
    :goto_1aa
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->safeDecide(J)V

    .line 959
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 960
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

    .line 961
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v1

    int-to-double v6, v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2b7

    .line 962
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 963
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 964
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 965
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_2ad

    .line 966
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 925
    :cond_202
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_22f

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_22f

    .line 926
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 927
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 928
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 929
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_229

    .line 930
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 932
    :cond_229
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    goto/16 :goto_16f

    .line 933
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

    .line 935
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

    .line 936
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 937
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 938
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    .line 939
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 940
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v0, :cond_28c

    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    .line 943
    :cond_28c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_295

    .line 944
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 946
    :cond_295
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    goto/16 :goto_16f

    .line 954
    :cond_29b
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    add-int/lit8 v1, v1, -0x5

    if-ge v2, v1, :cond_1aa

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    if-lez v1, :cond_1aa

    .line 955
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    goto/16 :goto_1aa

    .line 968
    :cond_2ad
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 969
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 971
    :cond_2b7
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_2cd

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_2cd

    .line 972
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->predictNext(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    .line 974
    :cond_2cd
    iput-wide p1, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    .line 975
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 976
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 977
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 978
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 979
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

    .line 980
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

    .line 981
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    aput v3, v4, v2

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 980
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xfa0

    if-le v1, v2, :cond_32d

    .line 983
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 985
    :cond_32d
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 986
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7

    .line 987
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
    .line 1370
    const-wide/16 v2, 0x0

    .line 1371
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v4, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v4, :cond_11

    aget-wide v6, v1, v0

    .line 1372
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1371
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1374
    :cond_11
    return-wide v2
.end method

.method private phaseAt(D)I
    .registers 10

    .prologue
    .line 2554
    const-wide/16 v2, 0x0

    .line 2555
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 2556
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 2557
    cmpg-double v0, p1, v2

    if-gez v0, :cond_21

    .line 2561
    :goto_20
    return v1

    .line 2555
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 2561
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
    .line 588
    const-wide/16 v2, 0x0

    .line 589
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, p1, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 590
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 589
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 592
    :cond_22
    return-wide v2
.end method

.method private predictNext(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)I
    .registers 12

    .prologue
    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    .line 1008
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1009
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1010
    int-to-double v4, v0

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_28

    const/4 v1, 0x1

    if-le v0, v1, :cond_28

    .line 1011
    add-int/lit8 v0, v0, -0x1

    .line 1013
    :cond_28
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    int-to-double v0, v0

    mul-double/2addr v0, v2

    add-double v2, v4, v0

    .line 1014
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastRestMinS:I

    if-ltz v0, :cond_53

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastRestMinS:I

    .line 1015
    :goto_34
    int-to-double v0, v0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    add-double/2addr v2, v0

    .line 1016
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 1017
    add-double v4, v2, v8

    invoke-direct {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v1

    .line 1018
    if-ltz v0, :cond_5f

    if-ge v1, v0, :cond_52

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v4, v4

    sub-double v2, v4, v2

    cmpg-double v2, v2, v8

    if-gez v2, :cond_5f

    .line 1021
    :cond_52
    :goto_52
    return v0

    .line 1014
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

    .line 1021
    goto :goto_52
.end method

.method static pwFactor(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D
    .registers 7

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    .line 1444
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

    .line 1443
    :cond_26
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    goto :goto_e

    .line 1444
    :cond_29
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_25
.end method

.method private rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D
    .registers 24

    .prologue
    .line 1195
    const/4 v2, 0x4

    const/16 v3, 0xb

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 1196
    if-eqz p1, :cond_1b

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1c

    .line 1220
    :cond_1b
    :goto_1b
    return-object v2

    .line 1199
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

    .line 1200
    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v14

    .line 1201
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

    .line 1202
    :goto_59
    invoke-virtual/range {p0 .. p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v11

    .line 1203
    const/4 v3, 0x0

    .line 1204
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

    .line 1205
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v3

    .line 1206
    if-eqz v3, :cond_100

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v3

    .line 1207
    :goto_7e
    if-ltz v3, :cond_103

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v3

    .line 1209
    :cond_84
    :goto_84
    const/4 v6, 0x0

    move v10, v6

    :goto_86
    const/16 v6, 0xa

    if-ge v10, v6, :cond_10c

    .line 1210
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

    .line 1211
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

    .line 1212
    :goto_ac
    const/16 v16, 0x0

    aget-object v16, v2, v16

    mul-double v18, v14, v12

    mul-double v18, v18, v8

    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    mul-double v20, v20, v6

    add-double v18, v18, v20

    aput-wide v18, v16, v10

    .line 1213
    const/16 v16, 0x1

    aget-object v16, v2, v16

    mul-double v18, v4, v12

    mul-double v8, v8, v18

    const-wide v18, 0x3fb3333333333333L    # 0.075

    mul-double v18, v18, v6

    add-double v8, v8, v18

    aput-wide v8, v16, v10

    .line 1214
    const/4 v8, 0x2

    aget-object v8, v2, v8

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    mul-double v16, v16, v6

    aput-wide v16, v8, v10

    .line 1215
    const/4 v8, 0x3

    aget-object v8, v2, v8

    const-wide v16, 0x3fb3333333333333L    # 0.075

    mul-double v6, v6, v16

    aput-wide v6, v8, v10

    .line 1209
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    goto :goto_86

    .line 1199
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

    .line 1201
    :cond_fc
    const-wide/16 v4, 0x0

    goto/16 :goto_59

    .line 1206
    :cond_100
    const/4 v3, -0x1

    goto/16 :goto_7e

    .line 1207
    :cond_103
    const/4 v3, 0x0

    goto :goto_84

    .line 1210
    :cond_105
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v8, v6

    goto :goto_9b

    .line 1211
    :cond_109
    const-wide/16 v6, 0x0

    goto :goto_ac

    .line 1217
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

    .line 1218
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

    .line 1219
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

    .line 1217
    :cond_145
    const-wide/16 v4, 0x0

    goto :goto_11e
.end method

.method private rebase(J)V
    .registers 6

    .prologue
    .line 1320
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1321
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_13

    .line 1322
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1323
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 1325
    :cond_13
    return-void
.end method

.method private restAfterSet()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 994
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_3d

    const/4 v0, 0x1

    .line 995
    :goto_e
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v2

    .line 996
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3f

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    .line 998
    :goto_22
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_42

    move v4, v1

    .line 999
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

    .line 994
    goto :goto_e

    .line 996
    :cond_3f
    const-wide/16 v2, 0x0

    goto :goto_22

    .line 998
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
    .line 2541
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
    .registers 16

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeFloor:Z

    .line 222
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    if-gtz v0, :cond_8

    .line 232
    :goto_7
    return-void

    .line 225
    :cond_8
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_ab

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v0, v2

    move-wide v6, v0

    .line 226
    :goto_18
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_b0

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v0, v2

    .line 227
    :goto_25
    sub-double v2, v6, v0

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fAtPause:D

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    sub-double v0, v8, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    div-double v0, v2, v0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    .line 228
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    .line 229
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    int-to-double v4, v3

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v4, 0x5

    mul-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safety: pause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s, F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fAtPause:D

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2192 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2192 cut "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2192 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto/16 :goto_7

    .line 225
    :cond_ab
    const-wide/16 v0, 0x0

    move-wide v6, v0

    goto/16 :goto_18

    .line 226
    :cond_b0
    const-wide v0, 0x3fd51eb851eb851fL    # 0.33

    goto/16 :goto_25
.end method

.method private safeDecide(J)V
    .registers 12

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    .line 192
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    if-ge v2, v5, :cond_17

    .line 193
    :cond_14
    iput-boolean v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    .line 210
    :cond_16
    :goto_16
    return-void

    .line 196
    :cond_17
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    cmpl-double v2, v6, v0

    if-lez v2, :cond_24

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v0, v6

    .line 197
    :cond_24
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    if-nez v2, :cond_39

    const-wide v6, 0x3feb333333333333L    # 0.85

    cmpl-double v2, v0, v6

    if-ltz v2, :cond_b0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->sustainable(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Z

    move-result v2

    if-nez v2, :cond_b0

    :cond_39
    move v2, v4

    .line 198
    :goto_3a
    iput-boolean v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    .line 199
    if-eqz v2, :cond_16

    .line 202
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    add-int/lit8 v2, v2, -0xa

    if-lt v2, v5, :cond_b2

    .line 203
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    add-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "safety: F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of the limit, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s cannot go on \u2192 \u2212"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz (cut "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto/16 :goto_16

    :cond_b0
    move v2, v3

    .line 197
    goto :goto_3a

    .line 207
    :cond_b2
    iput-boolean v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeFloor:Z

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "safety: at the 20 Hz floor, F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2014 a pause is needed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto/16 :goto_16
.end method

.method private settle(J)V
    .registers 14

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v0

    .line 1355
    :goto_a
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneRates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v4

    .line 1356
    :goto_14
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseDone:D

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->doseAdded(J[[D)D

    move-result-wide v6

    add-double/2addr v2, v6

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseDone:D

    .line 1357
    const/4 v5, 0x0

    :goto_1e
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    array-length v1, v1

    if-ge v5, v1, :cond_46

    .line 1358
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    aget-wide v8, v7, v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneAdded(J[[DII)D

    move-result-wide v2

    add-double/2addr v2, v8

    aput-wide v2, v7, v5

    .line 1359
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExDone:[D

    aget-wide v8, v7, v5

    const/4 v6, 0x2

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneAdded(J[[DII)D

    move-result-wide v2

    add-double/2addr v2, v8

    aput-wide v2, v7, v5

    .line 1357
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 1354
    :cond_42
    const/4 v0, 0x0

    goto :goto_a

    .line 1355
    :cond_44
    const/4 v4, 0x0

    goto :goto_14

    .line 1361
    :cond_46
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->stepMeta(JLcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    .line 1362
    const/4 v1, 0x0

    :goto_4c
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v2, v2

    if-ge v1, v2, :cond_5c

    .line 1363
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fAt(IJ[[D)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 1362
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 1365
    :cond_5c
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 1366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1367
    return-void
.end method

.method private skip(D)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 2049
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 2050
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 2051
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 2052
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    .line 2053
    return-void
.end method

.method public static stationPhases(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)[Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Z

    .line 346
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    move-object v0, v3

    .line 353
    :goto_14
    return-object v0

    :cond_15
    move v1, v2

    .line 349
    :goto_16
    array-length v0, v3

    if-ge v1, v0, :cond_4e

    .line 350
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

    .line 349
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_4c
    move v0, v2

    .line 350
    goto :goto_46

    :cond_4e
    move-object v0, v3

    .line 353
    goto :goto_14
.end method

.method private stepMeta(JLcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V
    .registers 13

    .prologue
    .line 1572
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2c

    .line 1573
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->metaDemand(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D

    move-result-wide v0

    .line 1574
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

    .line 1576
    :cond_2c
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    .line 1577
    return-void
.end method

.method static totalLoad(DDD)D
    .registers 16

    .prologue
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1734
    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v6

    move-wide v0, p2

    .line 1735
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    .line 1736
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

    .line 1737
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

    .line 1770
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v0

    .line 1771
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

    .line 1772
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    aput v1, v3, v0

    const/4 v0, 0x6

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v0

    .line 1771
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1773
    return-void
.end method

.method private vo2Ref()[D
    .registers 21

    .prologue
    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vo2Ref:[D

    if-nez v2, :cond_c1

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v12, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 1522
    if-eqz v12, :cond_c6

    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1523
    :goto_10
    if-eqz v12, :cond_ca

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    if-lez v3, :cond_ca

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 1524
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

    .line 1525
    :goto_2f
    if-eqz v12, :cond_d5

    iget-wide v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    :goto_33
    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->restingVo2(Lcom/isaigu/gymapp/ai/AiModel$Sex;IDD)D

    move-result-wide v14

    .line 1526
    if-eqz v12, :cond_d9

    iget-object v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    :goto_3b
    invoke-static {v6, v2, v3}, Lcom/isaigu/gymapp/ai/AiEnergy;->fitnessVo2max(Lcom/isaigu/gymapp/ai/AiModel$Fitness;Lcom/isaigu/gymapp/ai/AiModel$Sex;I)D

    move-result-wide v6

    .line 1527
    if-eqz v12, :cond_dd

    iget-object v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v3, :cond_dd

    iget-object v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v3, :cond_dd

    const/4 v3, 0x1

    .line 1528
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

    .line 1529
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

    .line 1531
    :cond_9a
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    add-double/2addr v8, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 1532
    const/4 v3, 0x3

    new-array v3, v3, [D

    const/4 v8, 0x0

    sub-double/2addr v6, v14

    mul-double/2addr v6, v4

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v10

    aput-wide v6, v3, v8

    const/4 v8, 0x1

    .line 1533
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

    .line 1535
    :cond_c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vo2Ref:[D

    return-object v2

    .line 1522
    :cond_c6
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_10

    .line 1523
    :cond_ca
    const/16 v3, 0x23

    goto/16 :goto_18

    .line 1524
    :cond_ce
    const-wide v4, 0x4052c00000000000L    # 75.0

    goto/16 :goto_2f

    .line 1525
    :cond_d5
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_33

    .line 1526
    :cond_d9
    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto/16 :goto_3b

    .line 1527
    :cond_dd
    const/4 v3, 0x0

    goto/16 :goto_4c

    .line 1533
    :cond_e0
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_b4
.end method

.method private zoneAdded(J[[DII)D
    .registers 17

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_c

    if-eqz p3, :cond_c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_f

    .line 1625
    :cond_c
    const-wide/16 v0, 0x0

    .line 1633
    :goto_e
    return-wide v0

    .line 1627
    :cond_f
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    .line 1628
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 1629
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 1630
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v6, p1, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1631
    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    sub-double/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 1632
    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sub-double v0, v2, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1633
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
    .line 1490
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1491
    :goto_6
    if-eqz v0, :cond_28

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    .line 1492
    :goto_a
    const/16 v1, 0xa

    new-array v2, v1, [D

    .line 1493
    const/4 v1, 0x0

    :goto_f
    array-length v3, v2

    if-ge v1, v3, :cond_2b

    .line 1494
    sget-object v3, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    aget-wide v4, v3, v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->chMuscle(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->reach(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 1493
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1490
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto :goto_6

    .line 1491
    :cond_28
    const/16 v0, 0x15e

    goto :goto_a

    .line 1496
    :cond_2b
    return-object v2
.end method

.method private zoneRates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D
    .registers 14

    .prologue
    .line 1235
    const/4 v0, 0x4

    const/16 v1, 0xb

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1236
    if-eqz p1, :cond_19

    iget-wide v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1a

    .line 1253
    :cond_19
    :goto_19
    return-object v0

    .line 1239
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

    .line 1240
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v7

    .line 1241
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->exerciseMuscles(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v8

    .line 1242
    const/4 v2, 0x0

    move v6, v2

    :goto_35
    const/16 v2, 0xa

    if-ge v6, v2, :cond_96

    .line 1243
    if-eqz v7, :cond_43

    array-length v2, v7

    if-ge v6, v2, :cond_43

    aget v2, v7, v6

    const/4 v3, 0x2

    if-lt v2, v3, :cond_8c

    :cond_43
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v4, v2

    .line 1244
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

    .line 1245
    :goto_56
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v10, v2

    add-double/2addr v10, v4

    aput-wide v10, v9, v6

    .line 1246
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

    .line 1247
    const/4 v4, 0x2

    aget-object v4, v0, v4

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v10, v2

    aput-wide v10, v4, v6

    .line 1248
    const/4 v4, 0x3

    aget-object v4, v0, v4

    const-wide v10, 0x3fb3333333333333L    # 0.075

    mul-double/2addr v2, v10

    aput-wide v2, v4, v6

    .line 1242
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_35

    .line 1239
    :cond_8a
    const/4 v1, 0x0

    goto :goto_2b

    .line 1243
    :cond_8c
    const-wide/16 v2, 0x0

    move-wide v4, v2

    goto :goto_46

    .line 1244
    :cond_90
    const-wide/16 v2, 0x0

    goto :goto_56

    .line 1246
    :cond_93
    const-wide/16 v4, 0x0

    goto :goto_6a

    .line 1250
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

    .line 1251
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

    .line 1252
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

    .line 1250
    :cond_cf
    const-wide/16 v2, 0x0

    goto :goto_a8
.end method

.method private zoneSum(J[DI)[D
    .registers 16

    .prologue
    .line 1647
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 1648
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v1, :cond_23

    .line 1649
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneRates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v4

    .line 1650
    const/4 v5, 0x0

    :goto_11
    array-length v1, v0

    if-ge v5, v1, :cond_23

    .line 1651
    aget-wide v8, v0, v5

    move-object v1, p0

    move-wide v2, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneAdded(J[[DII)D

    move-result-wide v2

    add-double/2addr v2, v8

    aput-wide v2, v0, v5

    .line 1650
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1654
    :cond_23
    return-object v0
.end method


# virtual methods
.method public canResume()Z
    .registers 3

    .prologue
    .line 542
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
    .line 513
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_7

    .line 527
    :goto_6
    return-void

    .line 516
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 517
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_2c

    .line 518
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 519
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 526
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

    .line 521
    :cond_2c
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 522
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_13

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    goto :goto_13
.end method

.method chMuscle(I)D
    .registers 8

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->chMuscle:[D

    .line 1485
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

    .line 1484
    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    .line 1485
    :cond_1e
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_1b
.end method

.method public cycleLoad(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D
    .registers 12

    .prologue
    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    .line 1759
    if-eqz p1, :cond_b

    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_c

    .line 1766
    :cond_b
    :goto_b
    return-wide v2

    .line 1762
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

    .line 1763
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v6, v0

    .line 1764
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v8, v0

    .line 1765
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

    .line 1766
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

    .line 1762
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

    .line 1765
    goto :goto_3d
.end method

.method public endActiveIn(DJ)V
    .registers 16

    .prologue
    const-wide/16 v8, 0x0

    .line 769
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 770
    if-ltz v0, :cond_18

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 782
    :cond_18
    :goto_18
    return-void

    .line 773
    :cond_19
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-static {v8, v9, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 774
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseStartS(I)D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-gez v0, :cond_18

    .line 777
    cmpg-double v0, p1, v8

    if-gtz v0, :cond_33

    .line 778
    invoke-virtual {p0, p3, p4}, Lcom/isaigu/gymapp/ai/AutoEngine;->stopPress(J)Z

    goto :goto_18

    .line 780
    :cond_33
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endAtS:D

    goto :goto_18
.end method

.method fatPct()D
    .registers 11

    .prologue
    const-wide/16 v0, 0x0

    .line 1452
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1453
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 1454
    if-eqz v4, :cond_27

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v2, v2, v6

    if-lez v2, :cond_27

    .line 1455
    iget-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 1456
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 1462
    :goto_26
    return-wide v0

    .line 1458
    :cond_27
    if-eqz v4, :cond_66

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v2

    .line 1459
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

    .line 1460
    :goto_61
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 1462
    :cond_63
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    goto :goto_26

    :cond_66
    move-wide v2, v0

    .line 1458
    goto :goto_2d

    .line 1460
    :cond_68
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_61
.end method

.method public forecastFrom(J)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 14

    .prologue
    .line 2229
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fork()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v7

    .line 2230
    if-nez v7, :cond_8

    .line 2231
    const/4 v0, 0x0

    .line 2317
    :goto_7
    return-object v0

    .line 2233
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

    .line 2234
    :goto_18
    if-eqz v6, :cond_6e

    .line 2237
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 2238
    const-wide v2, 0x3fb47ae147ae147bL    # 0.08

    cmpl-double v2, v0, v2

    if-lez v2, :cond_60

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    add-int/lit8 v3, v3, 0x14

    if-le v2, v3, :cond_60

    .line 2239
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

    .line 2240
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    .line 2242
    :cond_60
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    int-to-double v0, v0

    invoke-direct {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->hrModel(J)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGap:D

    .line 2243
    iput-wide p1, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGapMs:J

    .line 2245
    :cond_6e
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;-><init>()V

    .line 2246
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->fromS:D

    .line 2247
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    .line 2248
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 2250
    const/4 v0, 0x0

    .line 2251
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

    .line 2252
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

    .line 2253
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v2, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v8

    aput-wide v8, v0, v2

    .line 2255
    :cond_bc
    if-eqz v6, :cond_c5

    .line 2256
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->predictHr(J)I

    move-result v0

    invoke-virtual {v7, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->onHr(JI)V

    .line 2258
    :cond_c5
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$State;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1be

    .line 2287
    :pswitch_ce
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v0, :cond_127

    .line 2288
    const-wide/16 v2, 0x3e8

    add-long/2addr p1, v2

    .line 2289
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    :cond_d8
    :goto_d8
    move v0, v1

    .line 2301
    goto :goto_8d

    .line 2233
    :cond_da
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_18

    .line 2260
    :pswitch_de
    invoke-virtual {v7, p1, p2, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->startAt(JJ)V

    goto :goto_d8

    .line 2263
    :pswitch_e2
    iget-wide v2, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 2264
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    goto :goto_d8

    .line 2267
    :pswitch_ec
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->resume(J)V

    goto :goto_d8

    .line 2270
    :pswitch_f0
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceTick(J)V

    .line 2271
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v0

    if-lez v0, :cond_109

    .line 2272
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

    .line 2273
    :cond_109
    invoke-virtual {v7, p1, p2, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->requestGo(JJ)Z

    move-result v0

    if-nez v0, :cond_d8

    .line 2274
    const-wide/16 v2, 0xfa0

    add-long/2addr p1, v2

    goto :goto_d8

    .line 2278
    :pswitch_113
    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 2279
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->resume(J)V

    goto :goto_d8

    .line 2281
    :cond_11d
    const-wide/16 v2, 0xfa0

    add-long/2addr p1, v2

    .line 2282
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 2283
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceTick(J)V

    goto :goto_d8

    .line 2292
    :cond_127
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v2, v8

    .line 2293
    const-wide/16 v8, 0x1

    add-long/2addr v8, p1

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 2294
    if-eqz v6, :cond_14b

    .line 2295
    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    invoke-virtual {v7, v8, v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->predictHr(J)I

    move-result v0

    invoke-virtual {v7, v2, v3, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->onHr(JI)V

    .line 2297
    :cond_14b
    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-virtual {v7, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 2298
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_d8

    .line 2299
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto/16 :goto_d8

    .line 2304
    :cond_15d
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2305
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    .line 2306
    const/4 v0, 0x0

    :goto_16b
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    array-length v1, v1

    if-ge v0, v1, :cond_18a

    .line 2307
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    aget-wide v2, v1, v0

    const-wide/16 v8, 0x0

    cmpg-double v1, v2, v8

    if-gez v1, :cond_184

    .line 2308
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-ge v0, v2, :cond_187

    const-wide/16 v2, 0x0

    :goto_182
    aput-wide v2, v1, v0

    .line 2306
    :cond_184
    add-int/lit8 v0, v0, 0x1

    goto :goto_16b

    .line 2308
    :cond_187
    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    goto :goto_182

    .line 2311
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

    .line 2312
    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    const/4 v5, 0x2

    aget v0, v0, v5

    float-to-double v8, v0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    goto :goto_190

    .line 2314
    :cond_1a9
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getDoseDone(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->dose:D

    .line 2315
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneDose:[D

    .line 2316
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneExDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneExDose:[D

    move-object v0, v4

    .line 2317
    goto/16 :goto_7

    .line 2258
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

    .line 2201
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoEngine;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;-><init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V

    .line 2203
    :try_start_9
    const-class v0, Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_11
    if-ge v2, v5, :cond_58

    aget-object v6, v4, v2

    .line 2204
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 2205
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_25

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2203
    :cond_25
    :goto_25
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 2208
    :cond_29
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2209
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2210
    instance-of v7, v0, [D

    if-eqz v7, :cond_42

    .line 2211
    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    .line 2217
    :cond_3b
    :goto_3b
    invoke-virtual {v6, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_25

    .line 2219
    :catch_3f
    move-exception v0

    .line 2220
    const/4 v0, 0x0

    .line 2224
    :goto_41
    return-object v0

    .line 2212
    :cond_42
    instance-of v7, v0, [I

    if-eqz v7, :cond_4d

    .line 2213
    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3b

    .line 2214
    :cond_4d
    instance-of v7, v0, [Z

    if-eqz v7, :cond_3b

    .line 2215
    check-cast v0, [Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_56} :catch_3f

    move-result-object v0

    goto :goto_3b

    .line 2222
    :cond_58
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v4, v4

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2223
    iput-boolean v8, v1, Lcom/isaigu/gymapp/ai/AutoEngine;->forecasting:Z

    move-object v0, v1

    .line 2224
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
    .line 2626
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    return v0
.end method

.method public getCardioLoad(J)D
    .registers 10

    .prologue
    .line 1392
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    .line 1393
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

    .line 1394
    :cond_18
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 1396
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
    .line 1590
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 1591
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCardioLoad(J)D

    move-result-wide v2

    .line 1592
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

    .line 1379
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v0

    .line 1380
    :goto_c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v1, v1

    new-array v6, v1, [D

    .line 1381
    const/4 v1, 0x0

    :goto_12
    array-length v2, v6

    if-ge v1, v2, :cond_2b

    .line 1382
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_29

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fAt(IJ[[D)D

    move-result-wide v2

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v2, v8

    :goto_22
    aput-wide v2, v6, v1

    .line 1381
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1379
    :cond_27
    const/4 v0, 0x0

    goto :goto_c

    :cond_29
    move-wide v2, v4

    .line 1382
    goto :goto_22

    .line 1384
    :cond_2b
    return-object v6
.end method

.method public getCorridorExt()I
    .registers 2

    .prologue
    .line 2630
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    return v0
.end method

.method public getCorridorShare()D
    .registers 5

    .prologue
    .line 2638
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
    .line 2410
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
    .line 2610
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    return-object v0
.end method

.method public getDoseDone(J)D
    .registers 8

    .prologue
    .line 1719
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
    .line 2634
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    return v0
.end method

.method public getDoseLoad(J)D
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 1724
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

    .line 2642
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
    .line 2589
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    return-wide v0
.end method

.method public getEndMs()J
    .registers 3

    .prologue
    .line 2671
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    return-wide v0
.end method

.method public getExercise()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1122
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

    .line 1126
    :cond_1c
    :goto_1c
    return-object v0

    .line 1125
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-object v1, v1, v2

    .line 1126
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

    .line 2393
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
    .line 2406
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    return-wide v0
.end method

.method public getHr(J)I
    .registers 8

    .prologue
    .line 2614
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
    .line 2622
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
    .line 2361
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    return v0
.end method

.method public getHrGain()D
    .registers 3

    .prologue
    .line 2190
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    return-wide v0
.end method

.method public getHrMaxSeen()I
    .registers 2

    .prologue
    .line 2618
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    return v0
.end method

.method public getImpulseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    return-object v0
.end method

.method public getImpulseS()D
    .registers 3

    .prologue
    .line 1975
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->runS:D

    return-wide v0
.end method

.method public getLiveRho()D
    .registers 3

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    return-wide v0
.end method

.method public getLiveZones()[I
    .registers 2

    .prologue
    .line 1345
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
    .line 2679
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    return-object v0
.end method

.method public getManualStops()I
    .registers 2

    .prologue
    .line 470
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    return v0
.end method

.method public getMetabolicLoad(J)D
    .registers 16

    .prologue
    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    const-wide/16 v2, 0x0

    .line 1581
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_19

    .line 1582
    :cond_12
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaV:D

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    .line 1585
    :goto_18
    return-wide v0

    .line 1584
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->metaDemand(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D

    move-result-wide v0

    .line 1585
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
    .line 1502
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getChannelLoad(J)[D

    move-result-object v1

    .line 1503
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneMass()[D

    move-result-object v6

    .line 1504
    const-wide/16 v4, 0x0

    .line 1505
    const-wide/16 v2, 0x0

    .line 1506
    const/4 v0, 0x0

    :goto_d
    array-length v7, v1

    if-ge v0, v7, :cond_1c

    .line 1507
    aget-wide v8, v6, v0

    aget-wide v10, v1, v0

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 1508
    aget-wide v8, v6, v0

    add-double/2addr v2, v8

    .line 1506
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1510
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

    .line 1515
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

    .line 1138
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

    .line 1165
    :cond_19
    :goto_19
    return-object v4

    .line 1141
    :cond_1a
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v5

    .line 1143
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    if-ltz v0, :cond_31

    .line 1144
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fixedNext:I

    .line 1154
    :cond_2a
    :goto_2a
    if-ltz v5, :cond_71

    if-lt v0, v5, :cond_71

    .line 1155
    const-string v4, ""

    goto :goto_19

    .line 1147
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

    .line 1148
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

    .line 1149
    invoke-direct {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v0

    .line 1150
    if-ltz v5, :cond_2a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v6, v1

    sub-double v2, v6, v2

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpg-double v1, v2, v6

    if-gez v1, :cond_2a

    move v0, v5

    .line 1151
    goto :goto_2a

    :cond_6c
    move-wide v0, v2

    .line 1147
    goto :goto_43

    .line 1148
    :cond_6e
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    goto :goto_4f

    .line 1157
    :cond_71
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->templateOnly()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1160
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v0, v1, :cond_a7

    .line 1161
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

    .line 1162
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v1, v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_a2
    move-object v4, v0

    .line 1161
    goto/16 :goto_19

    :cond_a5
    move-object v0, v4

    .line 1162
    goto :goto_a2

    .line 1164
    :cond_a7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-object v0, v0, v1

    .line 1165
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
    .line 688
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPeakLoad(J)D
    .registers 12

    .prologue
    .line 1747
    const-wide/16 v2, 0x0

    .line 1748
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getChannelLoad(J)[D

    move-result-object v1

    array-length v4, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v4, :cond_13

    aget-wide v6, v1, v0

    .line 1749
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1748
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1751
    :cond_13
    return-wide v2
.end method

.method public getPhaseIndex()I
    .registers 2

    .prologue
    .line 2585
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    return v0
.end method

.method public getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 2

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    return-object v0
.end method

.method public getReentry()D
    .registers 3

    .prologue
    .line 2655
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    return-wide v0
.end method

.method public getRemainingS()D
    .registers 7

    .prologue
    .line 2593
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
    .line 2401
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
    .line 2397
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    return v0
.end method

.method public getRestHrLimit()I
    .registers 4

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v0, v0, -0xf

    .line 2367
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    if-lez v1, :cond_20

    .line 2368
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2370
    :cond_20
    return v0
.end method

.method public getRestLeftS(J)I
    .registers 12

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_8

    .line 2323
    const/4 v0, 0x0

    .line 2325
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
    .line 2329
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    return v0
.end method

.method public getRestS(J)D
    .registers 8

    .prologue
    .line 2333
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
    .line 181
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeHzCut:I

    return v0
.end method

.method public getSessionS(J)D
    .registers 14

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    const-wide/16 v6, 0x0

    .line 1936
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpedS:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    add-double/2addr v0, v2

    .line 1937
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->clockRuns()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_2f

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_2f

    .line 1938
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 1940
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

    .line 1942
    :cond_4d
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_65

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 1943
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

    .line 1945
    :cond_64
    return-wide v0

    .line 1942
    :cond_65
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    goto :goto_55
.end method

.method public getSetImpulses()[I
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1960
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 1961
    :goto_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v4

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1962
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

    .line 1963
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v1, v3

    aput v4, v1, v2

    return-object v1

    .line 1960
    :cond_3e
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    goto :goto_13

    :cond_41
    move v0, v3

    .line 1962
    goto :goto_2d
.end method

.method public getSetLeftS()D
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 1170
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
    .line 1950
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 1951
    :goto_11
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1952
    int-to-double v4, v2

    mul-double/2addr v4, v0

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_26

    const/4 v3, 0x1

    if-le v2, v3, :cond_26

    .line 1953
    add-int/lit8 v2, v2, -0x1

    .line 1955
    :cond_26
    int-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0

    .line 1950
    :cond_29
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    goto :goto_11
.end method

.method public getSkippedS()D
    .registers 3

    .prologue
    .line 1970
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    return-wide v0
.end method

.method public getStartMs()J
    .registers 3

    .prologue
    .line 2667
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    return-wide v0
.end method

.method public getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;
    .registers 2

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    return-object v0
.end method

.method public getStationIndex()I
    .registers 2

    .prologue
    .line 2379
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    return v0
.end method

.method public getStationS()D
    .registers 11

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 2384
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

    .line 2385
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

    .line 2384
    return-wide v0

    .line 2385
    :cond_36
    const-wide/16 v0, 0x0

    goto :goto_34
.end method

.method public getStationsDone()I
    .registers 2

    .prologue
    .line 2389
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    return v0
.end method

.method public getStretchS()D
    .registers 3

    .prologue
    .line 1844
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stretchUsedS:D

    return-wide v0
.end method

.method public getSystemLoad(J)D
    .registers 10

    .prologue
    .line 1729
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
    .line 2663
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
    .line 1793
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    return-object v0
.end method

.method public getTuneHzPct()I
    .registers 2

    .prologue
    .line 760
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneHzPct:I

    return v0
.end method

.method public getTuneOff()I
    .registers 2

    .prologue
    .line 756
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOff:I

    return v0
.end method

.method public getTuneOn()I
    .registers 2

    .prologue
    .line 745
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
    .line 764
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneRest:D

    return-wide v0
.end method

.method public getUserScaleMax()D
    .registers 3

    .prologue
    .line 2659
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    return-wide v0
.end method

.method public getZoneActive(J)[Z
    .registers 14

    .prologue
    const/16 v5, 0xb

    const/4 v1, 0x0

    .line 1674
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneLive(J)[D

    move-result-object v3

    .line 1675
    new-array v4, v5, [Z

    move v2, v1

    .line 1676
    :goto_a
    if-ge v2, v5, :cond_1d

    .line 1677
    aget-wide v6, v3, v2

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    :goto_15
    aput-boolean v0, v4, v2

    .line 1676
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_1b
    move v0, v1

    .line 1677
    goto :goto_15

    .line 1679
    :cond_1d
    return-object v4
.end method

.method public getZoneDone(J)[D
    .registers 6

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneSum(J[DI)[D

    move-result-object v0

    return-object v0
.end method

.method public getZoneExDone(J)[D
    .registers 6

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExDone:[D

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneSum(J[DI)[D

    move-result-object v0

    return-object v0
.end method

.method public getZoneLive(J)[D
    .registers 16

    .prologue
    .line 1271
    const/16 v0, 0xb

    new-array v2, v0, [D

    .line 1272
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

    .line 1283
    :goto_21
    return-object v0

    .line 1275
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v7

    .line 1276
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->exerciseMuscles(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v8

    .line 1277
    const/4 v0, 0x0

    move v6, v0

    :goto_30
    const/16 v0, 0xa

    if-ge v6, v0, :cond_70

    .line 1278
    if-eqz v7, :cond_3e

    array-length v0, v7

    if-ge v6, v0, :cond_3e

    aget v0, v7, v6

    const/4 v1, 0x2

    if-lt v0, v1, :cond_63

    :cond_3e
    const/4 v0, 0x1

    move v1, v0

    .line 1279
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

    .line 1280
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

    .line 1277
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_30

    .line 1278
    :cond_63
    const/4 v0, 0x0

    move v1, v0

    goto :goto_40

    .line 1279
    :cond_66
    const/4 v0, 0x0

    move v3, v0

    goto :goto_53

    .line 1280
    :cond_69
    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto :goto_58

    :cond_6d
    const-wide/16 v0, 0x0

    goto :goto_5c

    .line 1282
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

    .line 1283
    goto :goto_21

    .line 1282
    :cond_8b
    const-wide/16 v0, 0x0

    goto :goto_87
.end method

.method public getZoneProgress(J)[D
    .registers 18

    .prologue
    .line 1692
    invoke-virtual/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneDone(J)[D

    move-result-object v5

    .line 1693
    const-wide/16 v0, 0x0

    .line 1694
    const-wide/16 v2, 0x0

    .line 1695
    const/4 v4, 0x0

    :goto_9
    const/16 v6, 0xa

    if-ge v4, v6, :cond_32

    .line 1696
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    array-length v6, v6

    if-ge v4, v6, :cond_1e

    .line 1697
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    aget-wide v6, v6, v4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1699
    :cond_1e
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    if-eqz v6, :cond_2f

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    array-length v6, v6

    if-ge v4, v6, :cond_2f

    .line 1700
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    aget-wide v6, v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1695
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1703
    :cond_32
    array-length v4, v5

    new-array v10, v4, [D

    .line 1704
    const/4 v4, 0x0

    :goto_36
    array-length v6, v5

    if-ge v4, v6, :cond_82

    .line 1705
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    if-eqz v6, :cond_77

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    array-length v6, v6

    if-ge v4, v6, :cond_77

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    aget-wide v6, v6, v4

    move-wide v8, v6

    .line 1706
    :goto_47
    const/16 v6, 0xa

    if-ne v4, v6, :cond_7b

    move-wide v6, v2

    .line 1707
    :goto_4c
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v12

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 1708
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

    .line 1704
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 1705
    :cond_77
    const-wide/16 v6, 0x0

    move-wide v8, v6

    goto :goto_47

    :cond_7b
    move-wide v6, v0

    .line 1706
    goto :goto_4c

    .line 1708
    :cond_7d
    aget-wide v8, v5, v4

    div-double v6, v8, v6

    goto :goto_72

    .line 1710
    :cond_82
    return-object v10
.end method

.method public isCardioLimiting(J)Z
    .registers 8

    .prologue
    .line 1742
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
    .line 2647
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseStopped:Z

    return v0
.end method

.method public isDoublePulseAvailable()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 609
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-nez v0, :cond_a

    move v0, v2

    .line 625
    :goto_9
    return v0

    .line 612
    :cond_a
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_66

    .line 613
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

    .line 614
    :goto_2e
    if-eqz v0, :cond_40

    array-length v5, v0

    if-ge v4, v5, :cond_40

    .line 615
    aget-object v5, v0, v4

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseHz:I

    if-lez v5, :cond_3d

    move v0, v3

    .line 616
    goto :goto_9

    .line 613
    :cond_3b
    const/4 v0, 0x0

    goto :goto_2d

    .line 614
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 619
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

    .line 620
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v0, :cond_50

    move v0, v3

    .line 621
    goto :goto_9

    .line 612
    :cond_62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_66
    move v0, v2

    .line 625
    goto :goto_9
.end method

.method public isDoublePulseOn()Z
    .registers 2

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    return v0
.end method

.method public isRaiseLocked()Z
    .registers 2

    .prologue
    .line 2651
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    return v0
.end method

.method public isRestBeforeCooldown()Z
    .registers 3

    .prologue
    .line 2374
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

    .line 2338
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_13

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v1, v2, :cond_14

    .line 2349
    :cond_13
    :goto_13
    return v0

    .line 2341
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v2

    .line 2342
    if-lez v2, :cond_13

    .line 2345
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v1, v1, -0xf

    .line 2346
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v3

    if-lez v3, :cond_3a

    .line 2347
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2349
    :cond_3a
    if-le v2, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method

.method public isResumeWaiting()Z
    .registers 3

    .prologue
    .line 2675
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
    .line 357
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
    .line 1544
    if-eqz p1, :cond_c

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_f

    .line 1545
    :cond_c
    const-wide/16 v2, 0x0

    .line 1567
    :goto_e
    return-wide v2

    .line 1547
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->vo2Ref()[D

    move-result-object v12

    .line 1548
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

    .line 1549
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

    .line 1550
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

    .line 1551
    :goto_66
    invoke-virtual/range {p0 .. p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v13

    .line 1552
    const-wide/16 v4, 0x0

    .line 1553
    const/4 v3, 0x0

    move-wide v10, v4

    :goto_6e
    const/16 v4, 0xa

    if-ge v3, v4, :cond_108

    .line 1554
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

    .line 1555
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

    .line 1556
    if-eqz v2, :cond_157

    .line 1557
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

    .line 1559
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

    .line 1553
    add-int/lit8 v3, v3, 0x1

    move-wide v10, v4

    goto :goto_6e

    .line 1548
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

    .line 1550
    :cond_101
    const/4 v2, 0x0

    goto/16 :goto_66

    .line 1554
    :cond_104
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_82

    .line 1561
    :cond_108
    const-wide/16 v2, 0x0

    .line 1562
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

    .line 1563
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v2

    .line 1564
    if-eqz v2, :cond_14e

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v2

    .line 1565
    :goto_12a
    if-ltz v2, :cond_150

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v2

    const/4 v4, 0x2

    aget-wide v4, v12, v4

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseVo2(DDD)D

    move-result-wide v2

    .line 1567
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

    .line 1564
    :cond_14e
    const/4 v2, -0x1

    goto :goto_12a

    .line 1565
    :cond_150
    const-wide/16 v2, 0x0

    goto :goto_137

    .line 1567
    :cond_153
    const-wide/16 v2, 0x0

    goto/16 :goto_e

    :cond_157
    move-wide v4, v8

    goto/16 :goto_bf
.end method

.method public needsPause()Z
    .registers 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->safeFloor:Z

    return v0
.end method

.method public next(J)Z
    .registers 16

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 1986
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 1987
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

    .line 2044
    :cond_1c
    :goto_1c
    return v2

    .line 1990
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_a9

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 1991
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1992
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v0, v1, :cond_67

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v0, v1, :cond_67

    .line 1993
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

    .line 1994
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1996
    :cond_67
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    sub-double/2addr v0, v4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->skip(D)V

    .line 1997
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    .line 1998
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 1999
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 2000
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

    .line 2001
    invoke-direct {p0, p1, p2, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    move v2, v3

    .line 2002
    goto/16 :goto_1c

    .line 2004
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

    .line 2005
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 2006
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseStartS(I)D

    move-result-wide v4

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->skip(D)V

    .line 2007
    const-string v1, "skip \u2192 recovery"

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 2008
    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    move v2, v3

    .line 2009
    goto/16 :goto_1c

    .line 2011
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

    .line 2012
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->skip(D)V

    .line 2013
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 2014
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

    .line 2015
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v0

    .line 2016
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v1

    .line 2017
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

    .line 2018
    :cond_135
    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    :cond_138
    :goto_138
    move v2, v3

    .line 2024
    goto/16 :goto_1c

    .line 2019
    :cond_13b
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v0, v1, :cond_138

    .line 2020
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 2021
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 2022
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    goto :goto_138

    .line 2026
    :cond_147
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_1c

    .line 2027
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    add-int/lit8 v8, v0, 0x1

    move v1, v2

    move-wide v4, v6

    .line 2029
    :goto_153
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-gt v1, v0, :cond_169

    .line 2030
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v10, v0

    add-double/2addr v4, v10

    .line 2029
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_153

    .line 2032
    :cond_169
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double v0, v4, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->skip(D)V

    .line 2033
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

    .line 2034
    const-string v0, "skip \u2192 recovery"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 2035
    invoke-direct {p0, p1, p2, v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    move v2, v3

    .line 2036
    goto/16 :goto_1c

    .line 2038
    :cond_199
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1c

    .line 2039
    invoke-direct {p0, v8, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 2040
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

    .line 2041
    goto/16 :goto_1c
.end method

.method public onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 716
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1c

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    const-wide/16 v4, 0x320

    sub-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1c

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->go(J)V

    .line 718
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 730
    :cond_1b
    :goto_1b
    return-object v0

    .line 720
    :cond_1c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    .line 723
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

    .line 724
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto :goto_1b

    .line 726
    :cond_3c
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 727
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    .line 730
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    goto :goto_1b
.end method

.method public onHr(JI)V
    .registers 9

    .prologue
    .line 701
    const/16 v0, 0x1e

    if-lt p3, v0, :cond_8

    const/16 v0, 0xdc

    if-le p3, v0, :cond_9

    .line 710
    :cond_8
    :goto_8
    return-void

    .line 704
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->learnHr(JI)V

    .line 705
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    .line 706
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    .line 707
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    .line 708
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrSum:D

    int-to-double v2, p3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrSum:D

    .line 709
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrCount:I

    goto :goto_8
.end method

.method public phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;
    .registers 3

    .prologue
    .line 2581
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

    .line 2597
    .line 2598
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_5
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-ge v1, v0, :cond_1b

    .line 2599
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v6, v0

    add-double/2addr v2, v6

    .line 2598
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 2601
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

    .line 2605
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 2606
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

.method predictHr(J)I
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 2195
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

    .line 2196
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

    .line 2195
    :cond_3b
    const-wide/16 v0, 0x0

    goto :goto_22
.end method

.method reach(II)D
    .registers 15

    .prologue
    const-wide v2, 0x4075e00000000000L    # 350.0

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    .line 1470
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

    .line 1471
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct()D

    move-result-wide v0

    .line 1472
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v2, :cond_70

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->channelFat:[D

    .line 1473
    :goto_30
    if-eqz v2, :cond_41

    if-ltz p1, :cond_41

    array-length v3, v2

    if-ge p1, v3, :cond_41

    aget-wide v8, v2, p1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpl-double v3, v8, v10

    if-lez v3, :cond_41

    .line 1474
    aget-wide v0, v2, p1

    .line 1476
    :cond_41
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_72

    .line 1477
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

    .line 1479
    :goto_5f
    const-wide v2, 0x3fa999999999999aL    # 0.05

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    return-wide v0

    :cond_6e
    move-wide v0, v2

    .line 1470
    goto :goto_11

    .line 1472
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
    .line 671
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v1, :cond_d

    .line 673
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 683
    :cond_c
    :goto_c
    return-object v0

    .line 675
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 676
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->stepIndex:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    .line 678
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 679
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_c

    .line 680
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 681
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    goto :goto_c
.end method

.method public requestGo(JJ)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 436
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_14

    .line 437
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v1

    if-gtz v1, :cond_13

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 444
    :cond_13
    :goto_13
    return v0

    .line 440
    :cond_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 443
    :cond_1a
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    .line 444
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public resume(J)V
    .registers 14

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 546
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v0

    if-nez v0, :cond_9

    .line 568
    :goto_8
    return-void

    .line 549
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->advance(J)V

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 551
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v6, v0, v2

    .line 552
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    .line 553
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    invoke-direct {p0, v2, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedOf(Lcom/isaigu/gymapp/ai/AutoEngine$State;D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    .line 555
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

    .line 556
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_5d

    .line 557
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 559
    :cond_5d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->continuous:Z

    if-eqz v0, :cond_66

    .line 560
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 561
    invoke-direct {p0, p1, p2, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->safeAfterPause(JD)V

    .line 563
    :cond_66
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 565
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 566
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

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto/16 :goto_8

    .line 555
    :cond_9e
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_48
.end method

.method public rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D
    .registers 14

    .prologue
    .line 2545
    if-nez p1, :cond_5

    .line 2546
    const-wide/16 v0, 0x0

    .line 2550
    :cond_4
    :goto_4
    return-wide v0

    .line 2548
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v2

    .line 2549
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->env:D

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    mul-double/2addr v0, p2

    iget-wide v4, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    mul-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 2550
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
    .line 1715
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseBudget:D

    .line 1716
    return-void
.end method

.method public setDoublePulse(ZJ)V
    .registers 6

    .prologue
    .line 633
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-nez v0, :cond_7

    .line 639
    :goto_6
    return-void

    .line 636
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 637
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    .line 638
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
    .line 1333
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

    .line 1334
    :cond_17
    const/4 v0, 0x1

    .line 1335
    :goto_18
    if-eqz v0, :cond_29

    .line 1341
    :goto_1a
    return-void

    .line 1333
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    .line 1334
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_27
    const/4 v0, 0x0

    goto :goto_18

    .line 1338
    :cond_29
    invoke-direct {p0, p4, p5}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 1339
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    .line 1340
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
    .line 339
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 340
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases:[Z

    .line 341
    return-void
.end method

.method public setStations([Z)V
    .registers 3

    .prologue
    .line 334
    if-eqz p1, :cond_b

    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_8
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases:[Z

    .line 335
    return-void

    .line 334
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setTune(IIID)V
    .registers 10

    .prologue
    const/4 v1, -0x1

    .line 738
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOn:I

    .line 739
    const/4 v0, 0x2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneOff:I

    .line 740
    const/16 v0, -0xa

    const/16 v1, 0xa

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneHzPct:I

    .line 741
    const-wide v0, 0x3fe6666666666666L    # 0.7

    const-wide v2, 0x3ff999999999999aL    # 1.6

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tuneRest:D

    .line 742
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

    .line 693
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

    .line 694
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 696
    :cond_1e
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 697
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    .line 698
    return-void
.end method

.method public setVeto(III)V
    .registers 7

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 750
    const/16 v0, 0x78

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoHz:I

    .line 751
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOn:I

    .line 752
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->vetoOff:I

    .line 753
    return-void
.end method

.method public setZoneBudget([D)V
    .registers 3

    .prologue
    .line 1659
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->setZoneBudget([D[D)V

    .line 1660
    return-void
.end method

.method public setZoneBudget([D[D)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1664
    if-eqz p1, :cond_16

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_9
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    .line 1665
    if-eqz p2, :cond_18

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_13
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    .line 1666
    return-void

    :cond_16
    move-object v0, v1

    .line 1664
    goto :goto_9

    :cond_18
    move-object v0, v1

    .line 1665
    goto :goto_13
.end method

.method public skipToCooldown(J)V
    .registers 6

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 573
    if-gez v0, :cond_10

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 576
    :cond_10
    if-ltz v0, :cond_16

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-gt v0, v1, :cond_17

    .line 584
    :cond_16
    :goto_16
    return-void

    .line 579
    :cond_17
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 580
    const-string v0, "skip \u2192 cool-down"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_16

    .line 582
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto :goto_16
.end method

.method public start(J)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 363
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    .line 364
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 365
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 366
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 367
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 368
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 369
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

    .line 370
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

    .line 369
    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 372
    return-void
.end method

.method public startAt(JJ)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 376
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    .line 377
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 378
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 379
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 380
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 381
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

    .line 382
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

    .line 381
    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 383
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    .line 384
    return-void
.end method

.method public stop(J)V
    .registers 6

    .prologue
    .line 504
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_11

    .line 505
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 506
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    .line 507
    const-string v0, "stop"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 509
    :cond_11
    return-void
.end method

.method public stopPress(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 452
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_10

    :cond_e
    move v0, v1

    .line 466
    :goto_f
    return v0

    .line 455
    :cond_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 456
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v3

    .line 457
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_36

    move v2, v1

    .line 458
    :goto_21
    if-ltz v3, :cond_2b

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v4, :cond_38

    .line 459
    :cond_2b
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    .line 460
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->stop(J)V

    move v0, v1

    .line 461
    goto :goto_f

    :cond_36
    move v2, v0

    .line 457
    goto :goto_21

    .line 463
    :cond_38
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    .line 464
    const-string v1, "stop pressed \u2192 recovery"

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 465
    invoke-direct {p0, p1, p2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    goto :goto_f
.end method

.method public sustainable(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Z
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 186
    if-eqz p1, :cond_27

    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_27

    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    .line 187
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    iget-wide v4, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/SafeLimits;->peak(IIIIDD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_29

    :cond_27
    move v0, v8

    .line 186
    :goto_28
    return v0

    .line 187
    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public templateOnly()Z
    .registers 2

    .prologue
    .line 1113
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

    .line 785
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

    .line 786
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endAtS:D

    .line 787
    const-string v1, "coach: end of the active part"

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 788
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->stopPress(J)Z

    .line 790
    :cond_2e
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 791
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v3, :cond_53

    .line 792
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->advance(J)V

    .line 793
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->clockRuns()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->followClock(J)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 867
    :cond_52
    :goto_52
    return-void

    .line 797
    :cond_53
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 798
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v3, :cond_65

    .line 799
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_52

    .line 800
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->go(J)V

    goto :goto_52

    .line 804
    :cond_65
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-lez v1, :cond_c1

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x2710

    cmp-long v1, v6, v8

    if-gtz v1, :cond_c1

    move v1, v2

    .line 805
    :goto_74
    if-eqz v1, :cond_94

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_94

    .line 806
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrKnownS:D

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrKnownS:D

    .line 807
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v3, v6, :cond_94

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridor()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 808
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridorS:D

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridorS:D

    .line 811
    :cond_94
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_ed

    .line 812
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

    .line 813
    if-eqz v1, :cond_e9

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-gt v1, v0, :cond_e9

    .line 814
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_c6

    .line 815
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    goto :goto_52

    :cond_c1
    move v1, v0

    .line 804
    goto :goto_74

    .line 812
    :cond_c3
    const/16 v0, 0x3e7

    goto :goto_ae

    .line 816
    :cond_c6
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v4, 0x4e20

    cmp-long v0, v0, v4

    if-ltz v0, :cond_52

    .line 817
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 818
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v0

    if-nez v0, :cond_52

    .line 819
    const-wide/16 v0, 0xbb8

    add-long v4, p1, v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    goto/16 :goto_52

    .line 823
    :cond_e9
    iput-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    goto/16 :goto_52

    .line 827
    :cond_ed
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_52

    .line 831
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

    .line 832
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    if-nez v0, :cond_141

    .line 833
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrStep:Z

    .line 834
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    .line 835
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

    .line 849
    :cond_141
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 850
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->runS:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->runS:D

    .line 851
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1eb

    .line 852
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 853
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    .line 854
    const-string v0, "done"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto/16 :goto_52

    .line 837
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

    .line 838
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 839
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 840
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 841
    iput-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    .line 842
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    .line 843
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v4

    .line 844
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

    .line 845
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    aput v0, v3, v2

    const/4 v0, 0x6

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v3, v0

    .line 844
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
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

    .line 857
    :cond_1eb
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v1

    .line 860
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

    .line 861
    :cond_20d
    invoke-direct {p0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 864
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

    .line 865
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto/16 :goto_52
.end method

.method public traceTick(J)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    .line 1915
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

    .line 1929
    :cond_19
    :goto_19
    return-void

    .line 1918
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v2

    .line 1919
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

    .line 1922
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_8b

    const/high16 v0, 0x40000000    # 2.0f

    .line 1923
    :goto_49
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v4

    .line 1924
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

    .line 1925
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    aput v3, v6, v2

    const/4 v2, 0x6

    aput v0, v6, v2

    .line 1924
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1926
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_19

    .line 1927
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_19

    .line 1922
    :cond_8b
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_49
.end method

.method public userParams(IIIIJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 12

    .prologue
    const/4 v1, -0x1

    .line 647
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 648
    if-eqz v2, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-nez v0, :cond_14

    .line 649
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 666
    :goto_13
    return-object v0

    .line 651
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 652
    if-lez p1, :cond_2a

    .line 653
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hz:Z

    if-eqz v0, :cond_a2

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-static {v0, v4, p1}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowHz(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_28
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    .line 655
    :cond_2a
    if-lez p2, :cond_3c

    .line 656
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->on:Z

    if-eqz v0, :cond_a4

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-static {v0, v4, p2}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowOn(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_3a
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    .line 658
    :cond_3c
    if-lez p3, :cond_4e

    .line 659
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->off:Z

    if-eqz v0, :cond_a6

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v0, v4, p3}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowOff(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_4c
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    .line 661
    :cond_4e
    if-lez p4, :cond_60

    .line 662
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pw:Z

    if-eqz v0, :cond_5e

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    invoke-static {v0, v1, p4}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowPw(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v1

    :cond_5e
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    .line 664
    :cond_60
    invoke-virtual {p0, p5, p6}, Lcom/isaigu/gymapp/ai/AutoEngine;->refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 665
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

    .line 653
    goto :goto_28

    :cond_a4
    move v0, v1

    .line 656
    goto :goto_3a

    :cond_a6
    move v0, v1

    .line 659
    goto :goto_4c
.end method

.method public userPause(J)V
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 530
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_2b

    .line 531
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->advance(J)V

    .line 532
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 533
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1b

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v0, v2

    :cond_1b
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fAtPause:D

    .line 534
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 535
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 536
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceRest(J)V

    .line 537
    const-string v0, "pause"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 539
    :cond_2b
    return-void
.end method

.method zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1179
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    .line 1180
    :goto_7
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq p1, v1, :cond_15

    .line 1189
    :cond_f
    return-object v0

    .line 1179
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    goto :goto_7

    .line 1183
    :cond_15
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v1, v2

    .line 1184
    :goto_1c
    array-length v3, v0

    if-ge v1, v3, :cond_f

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    array-length v3, v3

    if-ge v1, v3, :cond_f

    .line 1185
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    aget v3, v3, v1

    if-gtz v3, :cond_2c

    .line 1186
    aput v2, v0, v1

    .line 1184
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method
