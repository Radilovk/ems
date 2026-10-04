.class public final Lcom/isaigu/gymapp/ai/AutoEngine;
.super Ljava/lang/Object;
.source "AutoEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoEngine$State;,
        Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;,
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


# instance fields
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

.field private endMs:J

.field private final fMax:D

.field private final fRec:D

.field private fatPct:D

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

.field private hrSum:D

.field private imposedS:D

.field private impulseName:Ljava/lang/String;

.field private inCorridorS:D

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

.field private userHz:I

.field private userOff:I

.field private userOn:I

.field private userPw:I

.field private userScale:D

.field private userScaleMax:D

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

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 86
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    .line 87
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    .line 88
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    .line 89
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    .line 93
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apKey:I

    .line 94
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    .line 95
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    .line 96
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev2:I

    .line 97
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPhase:I

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    .line 100
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->sectorIdx:I

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    .line 104
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    .line 118
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 127
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 128
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    .line 132
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 150
    const/16 v0, 0xa

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    .line 156
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    .line 166
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 170
    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    .line 1041
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    .line 1044
    new-array v0, v8, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    .line 1045
    new-array v0, v8, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExDone:[D

    .line 1048
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 1673
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    .line 1679
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGapMs:J

    .line 177
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 178
    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_91

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v0, :cond_91

    move v0, v1

    :goto_79
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    .line 179
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v0

    .line 180
    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    .line 181
    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    .line 182
    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    .line 183
    return-void

    :cond_91
    move v0, v2

    .line 178
    goto :goto_79
.end method

.method private build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 26

    .prologue
    .line 1922
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

    .line 1923
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_382

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

    .line 1924
    :goto_34
    const/4 v7, 0x0

    .line 1926
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v10

    .line 1927
    if-eqz v10, :cond_385

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->approaches(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v6

    .line 1928
    :goto_4b
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    const-wide/16 v12, 0x0

    cmpl-double v8, v8, v12

    if-lez v8, :cond_388

    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v8, v12

    :goto_5e
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AutoDynamics;->glide(D)D

    move-result-wide v12

    .line 1929
    if-eqz v6, :cond_3ad

    .line 1930
    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    const v9, 0x186a0

    mul-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    add-int v10, v8, v9

    .line 1931
    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apKey:I

    if-eq v10, v8, :cond_22b

    .line 1932
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPhase:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v7, v8, :cond_a0

    .line 1933
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPhase:I

    .line 1934
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    .line 1935
    const/4 v7, -0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev2:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    .line 1936
    const/16 v7, 0x8

    new-array v7, v7, [I

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    .line 1938
    :cond_a0
    new-instance v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;

    invoke-direct {v11}, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;-><init>()V

    .line 1939
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    const-wide/16 v16, 0x0

    cmpl-double v7, v8, v16

    if-lez v7, :cond_38c

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

    :goto_c5
    sub-double v8, v14, v8

    iput-wide v8, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->fresh:D

    .line 1940
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-lez v7, :cond_390

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    sub-long v8, p3, v8

    const-wide/16 v14, 0x2710

    cmp-long v7, v8, v14

    if-gtz v7, :cond_390

    const/4 v7, 0x1

    move v8, v7

    .line 1941
    :goto_dd
    if-eqz v8, :cond_394

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->hrNearCap(J)Z

    move-result v7

    if-nez v7, :cond_101

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v9, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v7, v9, :cond_394

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v9

    if-le v7, v9, :cond_394

    :cond_101
    const/4 v7, 0x1

    :goto_102
    iput-boolean v7, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrHigh:Z

    .line 1942
    if-eqz v8, :cond_397

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v8, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v7, v8, :cond_397

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorLoHr()I

    move-result v8

    if-ge v7, v8, :cond_397

    const/4 v7, 0x1

    :goto_11f
    iput-boolean v7, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrLow:Z

    .line 1943
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    const-wide/16 v14, 0x0

    cmpl-double v7, v8, v14

    if-lez v7, :cond_39a

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    div-double/2addr v8, v14

    :goto_134
    iput-wide v8, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->dose:D

    .line 1944
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v7, :cond_39e

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    :goto_146
    iput v7, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->sessions:I

    .line 1945
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    iput v7, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->set:I

    .line 1946
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    iput v7, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev:I

    .line 1947
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev2:I

    iput v7, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev2:I

    .line 1948
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v7, v7, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    if-lez v7, :cond_3a1

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

    :goto_177
    iput-wide v8, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->progress:D

    .line 1949
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    iput-object v7, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    .line 1950
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/ai/AutoDynamics;->pick([Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    .line 1951
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev2:I

    .line 1952
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apPrev:I

    .line 1953
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    array-length v8, v8

    if-ge v7, v8, :cond_1b7

    .line 1954
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apUsed:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    .line 1956
    :cond_1b7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apSetN:I

    .line 1957
    move-object/from16 v0, p0

    iput v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apKey:I

    .line 1958
    const/4 v8, 0x1

    .line 1959
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    aget-object v7, v6, v7

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->name()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    .line 1960
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

    iget-wide v14, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->fresh:D

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " dose="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v14, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->dose:D

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/ai/AutoEngine;->fmt(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1961
    iget-boolean v7, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrHigh:Z

    if-eqz v7, :cond_3a5

    const-string v7, " hr-high"

    :goto_211
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v7, v11, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrLow:Z

    if-eqz v7, :cond_3a9

    const-string v7, " hr-low"

    :goto_21b
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1960
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    move v7, v8

    .line 1963
    :cond_22b
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->apIdx:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    invoke-static {v4, v6, v12, v13, v8}, Lcom/isaigu/gymapp/ai/AutoDynamics;->apply(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;DZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 1981
    :goto_240
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v8

    .line 1982
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    if-lez v6, :cond_250

    .line 1983
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 1985
    :cond_250
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    if-lez v6, :cond_25c

    .line 1986
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 1988
    :cond_25c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    if-lez v6, :cond_268

    .line 1989
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 1991
    :cond_268
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    if-lez v6, :cond_274

    .line 1992
    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    .line 1994
    :cond_274
    iget v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 1995
    iget v9, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v6, :cond_42c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    :goto_290
    iget v10, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-static {v9, v6, v10, v7}, Lcom/isaigu/gymapp/ai/AutoDynamics;->ramp(IIIZ)I

    move-result v6

    iput v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 1996
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object/from16 v0, p1

    invoke-static {v8, v5, v6, v0}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v8

    .line 1997
    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v5, :cond_42f

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v6

    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v10, v5

    div-double/2addr v6, v10

    .line 1998
    :goto_2b2
    new-instance v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {v9}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;-><init>()V

    .line 1999
    iput-object v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 2000
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    .line 2001
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    .line 2002
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    .line 2003
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    .line 2004
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    .line 2005
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    .line 2006
    iget-object v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    iput-object v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    .line 2007
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    .line 2008
    move/from16 v0, p2

    iput v0, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->stepIndex:I

    .line 2009
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiAt(D)D

    move-result-wide v4

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    .line 2010
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envAt(D)D

    move-result-wide v4

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->env:D

    .line 2011
    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    mul-double/2addr v4, v10

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    .line 2012
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v10, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 2013
    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    mul-double/2addr v4, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    mul-double/2addr v4, v10

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    .line 2014
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

    .line 2015
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    if-eqz v6, :cond_433

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

    .line 2016
    :goto_34a
    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->ceiling:D

    .line 2017
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v4, :cond_381

    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v4, :cond_381

    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_381

    .line 2018
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    .line 2019
    iget-wide v6, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v4

    if-eqz v4, :cond_43b

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd999999999999aL    # 0.4

    iget-wide v12, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    div-double/2addr v10, v12

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    :goto_37e
    mul-double/2addr v4, v6

    iput-wide v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    .line 2021
    :cond_381
    return-object v9

    .line 1923
    :cond_382
    const/4 v5, 0x0

    goto/16 :goto_34

    .line 1927
    :cond_385
    const/4 v6, 0x0

    goto/16 :goto_4b

    .line 1928
    :cond_388
    const-wide/16 v8, 0x0

    goto/16 :goto_5e

    .line 1939
    :cond_38c
    const-wide/16 v8, 0x0

    goto/16 :goto_c5

    .line 1940
    :cond_390
    const/4 v7, 0x0

    move v8, v7

    goto/16 :goto_dd

    .line 1941
    :cond_394
    const/4 v7, 0x0

    goto/16 :goto_102

    .line 1942
    :cond_397
    const/4 v7, 0x0

    goto/16 :goto_11f

    .line 1943
    :cond_39a
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_134

    .line 1944
    :cond_39e
    const/4 v7, 0x0

    goto/16 :goto_146

    .line 1948
    :cond_3a1
    const-wide/16 v8, 0x0

    goto/16 :goto_177

    .line 1961
    :cond_3a5
    const-string v7, ""

    goto/16 :goto_211

    :cond_3a9
    const-string v7, ""

    goto/16 :goto_21b

    .line 1964
    :cond_3ad
    if-eqz v10, :cond_3d3

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v6

    if-eqz v6, :cond_3d3

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v10, 0x0

    cmpl-double v6, v8, v10

    if-lez v6, :cond_3d3

    .line 1965
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoDynamics;->baseOf(Lcom/isaigu/gymapp/ai/AutoModel$Step;)Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    invoke-static {v4, v6, v12, v13, v8}, Lcom/isaigu/gymapp/ai/AutoDynamics;->apply(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;DZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 1966
    const-string v6, ""

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    goto/16 :goto_240

    .line 1968
    :cond_3d3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v8

    move-object/from16 v0, p1

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    move-object/from16 v0, p1

    invoke-static {v6, v0, v8, v9, v10}, Lcom/isaigu/gymapp/ai/AutoDynamics;->sector(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;DI)I

    move-result v6

    .line 1969
    if-ltz v6, :cond_424

    .line 1970
    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->sectorIdx:I

    if-eq v6, v7, :cond_422

    const/4 v7, 0x1

    .line 1971
    :goto_3ee
    if-eqz v7, :cond_40a

    .line 1972
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

    .line 1974
    :cond_40a
    move-object/from16 v0, p0

    iput v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->sectorIdx:I

    .line 1975
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    invoke-static {v4, v6, v8}, Lcom/isaigu/gymapp/ai/AutoDynamics;->sectorStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;IZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 1976
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AutoDynamics;->sectorName(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    goto/16 :goto_240

    .line 1970
    :cond_422
    const/4 v7, 0x0

    goto :goto_3ee

    .line 1978
    :cond_424
    const-string v6, ""

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    goto/16 :goto_240

    .line 1995
    :cond_42c
    const/4 v6, -0x1

    goto/16 :goto_290

    .line 1997
    :cond_42f
    const-wide/16 v6, 0x0

    goto/16 :goto_2b2

    .line 2016
    :cond_433
    iget-wide v6, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto/16 :goto_34a

    .line 2019
    :cond_43b
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_37e
.end method

.method private static clamp(DDD)D
    .registers 8

    .prologue
    .line 2180
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

.method private cooldownIndex()I
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_21

    .line 346
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    .line 350
    :goto_1d
    return v0

    .line 345
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 350
    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method private countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V
    .registers 13

    .prologue
    .line 243
    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 244
    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    .line 245
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 246
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

    .line 247
    return-void
.end method

.method private doseAdded(J[[D)D
    .registers 23

    .prologue
    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_10

    if-eqz p3, :cond_10

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_13

    .line 1208
    :cond_10
    const-wide/16 v2, 0x0

    .line 1228
    :goto_12
    return-wide v2

    .line 1210
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneMass()[D

    move-result-object v3

    .line 1211
    const-wide/16 v8, 0x0

    .line 1212
    const-wide/16 v6, 0x0

    .line 1213
    const-wide/16 v4, 0x0

    .line 1214
    const/4 v2, 0x0

    :goto_1e
    array-length v10, v3

    if-ge v2, v10, :cond_39

    .line 1215
    aget-wide v10, v3, v2

    add-double/2addr v8, v10

    .line 1216
    aget-wide v10, v3, v2

    const/4 v12, 0x0

    aget-object v12, p3, v12

    aget-wide v12, v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 1217
    aget-wide v10, v3, v2

    const/4 v12, 0x1

    aget-object v12, p3, v12

    aget-wide v12, v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 1214
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1219
    :cond_39
    const-wide/16 v2, 0x0

    cmpg-double v2, v8, v2

    if-gtz v2, :cond_42

    .line 1220
    const-wide/16 v2, 0x0

    goto :goto_12

    .line 1222
    :cond_42
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    .line 1223
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    .line 1224
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v14, v14, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long/2addr v12, v14

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    .line 1225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v14, v14, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v14, p1, v14

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 1226
    const-wide/16 v14, 0x0

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    sub-double v16, v16, v12

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 1227
    const-wide/16 v16, 0x0

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    sub-double v2, v10, v2

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1228
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

    .line 633
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 634
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 635
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    .line 636
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    .line 637
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

    .line 638
    return-void
.end method

.method private enterRecoveryRest(JI)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 325
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

    .line 327
    :goto_1b
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v3, p3, :cond_22

    .line 328
    invoke-direct {p0, p3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 330
    :cond_22
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 331
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 332
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 334
    if-nez v0, :cond_33

    .line 335
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 337
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 338
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 339
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 340
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceRest(J)V

    .line 342
    return-void

    :cond_41
    move v0, v1

    .line 325
    goto :goto_1b
.end method

.method private enterRest(JZ)V
    .registers 13

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 742
    if-nez p3, :cond_2c

    .line 743
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v2

    .line 744
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v3

    .line 745
    if-ltz v3, :cond_81

    if-eq v2, v3, :cond_20

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_81

    .line 747
    :cond_20
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v2, v3, :cond_27

    .line 748
    invoke-direct {p0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 750
    :cond_27
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 751
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    move p3, v0

    .line 758
    :cond_2c
    :goto_2c
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 759
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 760
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 761
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 762
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 763
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    .line 764
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceRest(J)V

    .line 765
    if-eqz p3, :cond_8d

    .line 766
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 776
    :goto_46
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

    .line 777
    return-void

    .line 752
    :cond_81
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v2, v3, :cond_2c

    .line 753
    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 754
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 755
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    goto :goto_2c

    .line 768
    :cond_8d
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_cf

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_cf

    .line 769
    :goto_99
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v2

    .line 770
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_d1

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    .line 772
    :goto_ad
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_d4

    move v4, v1

    .line 773
    :goto_b6
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

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 774
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    goto/16 :goto_46

    :cond_cf
    move v0, v1

    .line 768
    goto :goto_99

    .line 770
    :cond_d1
    const-wide/16 v2, 0x0

    goto :goto_ad

    .line 772
    :cond_d4
    if-eqz v0, :cond_da

    const/16 v1, 0xf

    move v4, v1

    goto :goto_b6

    :cond_da
    const/16 v1, 0x8

    move v4, v1

    goto :goto_b6
.end method

.method private fAt(IJ[[D)D
    .registers 19

    .prologue
    .line 902
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    aget-wide v0, v0, p1

    .line 903
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    cmp-long v2, p2, v2

    if-gtz v2, :cond_b

    .line 926
    :cond_a
    :goto_a
    return-wide v0

    .line 906
    :cond_b
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_11

    if-nez p4, :cond_26

    .line 907
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

    .line 909
    :cond_26
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v4, v2

    .line 910
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v6

    .line 911
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long/2addr v2, v8

    long-to-double v2, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v8

    .line 912
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v8, p2, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    .line 913
    cmpg-double v10, v2, v4

    if-gez v10, :cond_82

    cmpl-double v10, v8, v2

    if-lez v10, :cond_82

    .line 914
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    sub-double v2, v10, v2

    neg-double v2, v2

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 915
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

    .line 916
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 918
    :cond_82
    cmpg-double v4, v2, v6

    if-gez v4, :cond_ab

    cmpl-double v4, v8, v2

    if-lez v4, :cond_ab

    .line 919
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double v2, v4, v2

    neg-double v2, v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 920
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

    .line 921
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 923
    :cond_ab
    cmpl-double v4, v8, v2

    if-lez v4, :cond_a

    .line 924
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
    .line 2176
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

.method public static forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;Z)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 5

    .prologue
    .line 1608
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;ZD)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v0

    return-object v0
.end method

.method public static forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;ZD)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 16

    .prologue
    .line 1613
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;-><init>()V

    .line 1614
    new-instance v5, Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AutoEngine;-><init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V

    .line 1615
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 1616
    invoke-virtual {v5, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setScript(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V

    .line 1617
    const-wide/16 v0, 0x0

    invoke-virtual {v5, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoublePulse(ZJ)V

    .line 1618
    const-wide/16 v0, 0x0

    .line 1619
    invoke-virtual {v5, v0, v1, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->startAt(JJ)V

    .line 1620
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getGoMs()J

    move-result-wide v2

    .line 1621
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 1622
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    .line 1623
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    .line 1624
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v0, v1

    .line 1625
    const/4 v0, 0x0

    .line 1626
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

    .line 1627
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v6, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-wide v6, v0, v6

    const-wide/16 v8, 0x0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_6e

    .line 1628
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v6, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v8

    aput-wide v8, v0, v6

    .line 1630
    :cond_6e
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v6, :cond_9a

    .line 1631
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v6, v2

    .line 1632
    :goto_7f
    cmp-long v0, v2, v6

    if-gez v0, :cond_8e

    .line 1633
    const-wide/16 v8, 0xfa0

    add-long/2addr v2, v8

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 1634
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceTick(J)V

    goto :goto_7f

    .line 1636
    :cond_8e
    invoke-virtual {v5, v2, v3, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->requestGo(JJ)Z

    .line 1637
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getGoMs()J

    move-result-wide v2

    .line 1638
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    move v0, v1

    .line 1639
    goto :goto_42

    .line 1641
    :cond_9a
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v6, :cond_a6

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v0, :cond_de

    .line 1648
    :cond_a6
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1649
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    .line 1650
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getDoseDone(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->dose:D

    .line 1651
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneDose:[D

    .line 1652
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneExDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneExDose:[D

    .line 1653
    const/4 v0, 0x1

    :goto_c6
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    array-length v1, v1

    if-ge v0, v1, :cond_f3

    .line 1654
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    aget-wide v2, v1, v0

    const-wide/16 v6, 0x0

    cmpg-double v1, v2, v6

    if-gez v1, :cond_db

    .line 1655
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    aput-wide v2, v1, v0

    .line 1653
    :cond_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 1644
    :cond_de
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    .line 1645
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 1646
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move v0, v1

    goto/16 :goto_42

    .line 1658
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

    .line 1659
    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    const/4 v5, 0x2

    aget v0, v0, v5

    float-to-double v6, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    goto :goto_f9

    .line 1661
    :cond_112
    return-object v4
.end method

.method private go(J)V
    .registers 16

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 251
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 253
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v6, v0, :cond_d5

    .line 254
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 255
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    .line 256
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    invoke-direct {p0, v6, v8, v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedOf(Lcom/isaigu/gymapp/ai/AutoEngine$State;D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    .line 257
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v6, v0, :cond_a2

    .line 258
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restSumS:D

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restSumS:D

    .line 259
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    .line 260
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, v8, v0

    if-ltz v0, :cond_4f

    .line 261
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 270
    :cond_4f
    :goto_4f
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

    .line 274
    :goto_95
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 276
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 278
    return-void

    .line 265
    :cond_a2
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpl-double v0, v8, v0

    if-ltz v0, :cond_ce

    const-wide v0, 0x4082c00000000000L    # 600.0

    div-double v0, v8, v0

    sub-double v0, v10, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    :goto_ba
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 266
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v6, v0, :cond_4f

    .line 267
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    goto :goto_4f

    .line 265
    :cond_ce
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_ba

    .line 272
    :cond_d5
    const-string v0, "go"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto :goto_95
.end method

.method private hrModel(J)D
    .registers 10

    .prologue
    .line 1684
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 1685
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
    .line 1864
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    .line 1865
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
    .registers 6

    .prologue
    .line 1422
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private inCorridor()Z
    .registers 4

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorLoHr()I

    move-result v0

    .line 2051
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    .line 2052
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
    .line 431
    const-wide/16 v2, 0x0

    .line 432
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, p1, :cond_18

    .line 433
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 432
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 435
    :cond_18
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 436
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 437
    return-void
.end method

.method private learnHr(JI)V
    .registers 13

    .prologue
    const-wide v6, 0x3fb47ae147ae147bL    # 0.08

    .line 1690
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 1691
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

    .line 1692
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

    .line 1693
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    sub-double/2addr v0, v4

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    .line 1695
    :cond_4b
    return-void
.end method

.method private log(JLjava/lang/String;)V
    .registers 17

    .prologue
    const-wide/16 v10, 0x3c

    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    .line 2168
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2169
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

    .line 2170
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_44

    .line 2171
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2173
    :cond_44
    return-void
.end method

.method private nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 16

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    .line 642
    if-nez v1, :cond_8

    .line 643
    const/4 v0, 0x0

    .line 732
    :cond_7
    :goto_7
    return-object v0

    .line 646
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v0, v2, :cond_13b

    const/4 v0, 0x1

    .line 647
    :goto_13
    if-eqz v0, :cond_bb

    .line 648
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 649
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v0, v2, :cond_33

    .line 650
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 652
    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 653
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_bb

    .line 654
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v0, :cond_13e

    const/4 v0, 0x1

    .line 655
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

    .line 656
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

    .line 657
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_141

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    div-double/2addr v2, v4

    .line 658
    :goto_8f
    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_145

    .line 659
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

    .line 663
    :cond_af
    :goto_af
    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v2, v4

    if-lez v0, :cond_15a

    const/4 v0, 0x1

    :goto_b9
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    .line 666
    :cond_bb
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qBudget:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_2fb

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-nez v0, :cond_2fb

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qBudget:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2fb

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-le v0, v2, :cond_2fb

    .line 667
    const-string v0, "dose budget reached \u2192 cool-down"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseStopped:Z

    .line 669
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 670
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 673
    :goto_f0
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v1, v2, :cond_1ef

    .line 674
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_15d

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_15d

    const/4 v1, 0x1

    .line 675
    :goto_107
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_15f

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v2

    if-eqz v2, :cond_15f

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_15f

    const/4 v2, 0x1

    .line 676
    :goto_11e
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 677
    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 678
    const/4 v4, 0x0

    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 679
    if-ltz v3, :cond_161

    if-nez v1, :cond_12d

    if-eqz v2, :cond_161

    .line 680
    :cond_12d
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 681
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 682
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 646
    :cond_13b
    const/4 v0, 0x0

    goto/16 :goto_13

    .line 654
    :cond_13e
    const/4 v0, 0x0

    goto/16 :goto_51

    .line 657
    :cond_141
    const-wide/16 v2, 0x0

    goto/16 :goto_8f

    .line 660
    :cond_145
    const-wide v4, 0x3ff0cccccccccccdL    # 1.05

    cmpg-double v0, v2, v4

    if-gez v0, :cond_af

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    if-lez v0, :cond_af

    .line 661
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    goto/16 :goto_af

    .line 663
    :cond_15a
    const/4 v0, 0x0

    goto/16 :goto_b9

    .line 674
    :cond_15d
    const/4 v1, 0x0

    goto :goto_107

    .line 675
    :cond_15f
    const/4 v2, 0x0

    goto :goto_11e

    .line 684
    :cond_161
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 700
    :cond_165
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v1, v2, :cond_1a0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-lez v1, :cond_1a0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1a0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v1

    if-nez v1, :cond_1a0

    const-string v1, "WARMUP"

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a0

    .line 702
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    .line 703
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-le v2, v1, :cond_269

    .line 704
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    .line 709
    :cond_1a0
    :goto_1a0
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 710
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_27b

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_27b

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_27b

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    .line 711
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v1

    int-to-double v6, v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_27b

    .line 712
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 713
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 714
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 715
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 685
    :cond_1ef
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_210

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_210

    .line 686
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 687
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 688
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 689
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 690
    :cond_210
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_165

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_165

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->hrNearCap(J)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 692
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

    .line 693
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 694
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 695
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    .line 696
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 697
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 705
    :cond_269
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    add-int/lit8 v1, v1, -0x5

    if-ge v2, v1, :cond_1a0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    if-lez v1, :cond_1a0

    .line 706
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    goto/16 :goto_1a0

    .line 717
    :cond_27b
    iput-wide p1, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    .line 718
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 719
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 720
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 721
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 722
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

    .line 723
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

    .line 724
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    aput v3, v4, v2

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 723
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xfa0

    if-le v1, v2, :cond_2db

    .line 726
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 728
    :cond_2db
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 729
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7

    .line 730
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    goto/16 :goto_7

    :cond_2fb
    move-object v0, v1

    goto/16 :goto_f0
.end method

.method private peakF()D
    .registers 9

    .prologue
    .line 980
    const-wide/16 v2, 0x0

    .line 981
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v4, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v4, :cond_11

    aget-wide v6, v1, v0

    .line 982
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 984
    :cond_11
    return-wide v2
.end method

.method private phaseAt(D)I
    .registers 10

    .prologue
    .line 2039
    const-wide/16 v2, 0x0

    .line 2040
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 2041
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 2042
    cmpg-double v0, p1, v2

    if-gez v0, :cond_21

    .line 2046
    :goto_20
    return v1

    .line 2040
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 2046
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    goto :goto_20
.end method

.method static pwFactor(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D
    .registers 7

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    .line 1054
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

    .line 1053
    :cond_26
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    goto :goto_e

    .line 1054
    :cond_29
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_25
.end method

.method private rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D
    .registers 24

    .prologue
    .line 869
    const/4 v2, 0x4

    const/16 v3, 0xb

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 870
    if-eqz p1, :cond_1b

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1c

    .line 894
    :cond_1b
    :goto_1b
    return-object v2

    .line 873
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

    .line 874
    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v14

    .line 875
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

    .line 876
    :goto_59
    invoke-virtual/range {p0 .. p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v11

    .line 877
    const/4 v3, 0x0

    .line 878
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

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v3

    .line 880
    if-eqz v3, :cond_100

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v3

    .line 881
    :goto_7e
    if-ltz v3, :cond_103

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v3

    .line 883
    :cond_84
    :goto_84
    const/4 v6, 0x0

    move v10, v6

    :goto_86
    const/16 v6, 0xa

    if-ge v10, v6, :cond_10c

    .line 884
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

    .line 885
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

    .line 886
    :goto_ac
    const/16 v16, 0x0

    aget-object v16, v2, v16

    mul-double v18, v14, v12

    mul-double v18, v18, v8

    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    mul-double v20, v20, v6

    add-double v18, v18, v20

    aput-wide v18, v16, v10

    .line 887
    const/16 v16, 0x1

    aget-object v16, v2, v16

    mul-double v18, v4, v12

    mul-double v8, v8, v18

    const-wide v18, 0x3fb3333333333333L    # 0.075

    mul-double v18, v18, v6

    add-double v8, v8, v18

    aput-wide v8, v16, v10

    .line 888
    const/4 v8, 0x2

    aget-object v8, v2, v8

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    mul-double v16, v16, v6

    aput-wide v16, v8, v10

    .line 889
    const/4 v8, 0x3

    aget-object v8, v2, v8

    const-wide v16, 0x3fb3333333333333L    # 0.075

    mul-double v6, v6, v16

    aput-wide v6, v8, v10

    .line 883
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    goto :goto_86

    .line 873
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

    .line 875
    :cond_fc
    const-wide/16 v4, 0x0

    goto/16 :goto_59

    .line 880
    :cond_100
    const/4 v3, -0x1

    goto/16 :goto_7e

    .line 881
    :cond_103
    const/4 v3, 0x0

    goto :goto_84

    .line 884
    :cond_105
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v8, v6

    goto :goto_9b

    .line 885
    :cond_109
    const-wide/16 v6, 0x0

    goto :goto_ac

    .line 891
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

    .line 892
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

    .line 893
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

    .line 891
    :cond_145
    const-wide/16 v4, 0x0

    goto :goto_11e
.end method

.method private rebase(J)V
    .registers 6

    .prologue
    .line 931
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 932
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_13

    .line 933
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 934
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 936
    :cond_13
    return-void
.end method

.method public static rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D
    .registers 8

    .prologue
    .line 2026
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

.method private settle(J)V
    .registers 16

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 965
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v4

    .line 966
    :goto_c
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseDone:D

    invoke-direct {p0, p1, p2, v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->doseAdded(J[[D)D

    move-result-wide v8

    add-double/2addr v2, v8

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseDone:D

    move v5, v6

    .line 967
    :goto_16
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    array-length v1, v1

    if-ge v5, v1, :cond_3d

    .line 968
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    aget-wide v8, v7, v5

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneAdded(J[[DII)D

    move-result-wide v2

    add-double/2addr v2, v8

    aput-wide v2, v7, v5

    .line 969
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExDone:[D

    aget-wide v2, v1, v5

    const/4 v12, 0x2

    move-object v7, p0

    move-wide v8, p1

    move-object v10, v4

    move v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneAdded(J[[DII)D

    move-result-wide v8

    add-double/2addr v2, v8

    aput-wide v2, v1, v5

    .line 967
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_3b
    move-object v4, v0

    .line 965
    goto :goto_c

    .line 971
    :cond_3d
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->stepMeta(JLcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    .line 972
    :goto_42
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v1, v1

    if-ge v6, v1, :cond_52

    .line 973
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    invoke-direct {p0, v6, p1, p2, v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->fAt(IJ[[D)D

    move-result-wide v2

    aput-wide v2, v1, v6

    .line 972
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 975
    :cond_52
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 976
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 977
    return-void
.end method

.method private skip(D)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 1557
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1558
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1559
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 1560
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    .line 1561
    return-void
.end method

.method public static stationPhases(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)[Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Z

    .line 202
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    move-object v0, v3

    .line 209
    :goto_14
    return-object v0

    :cond_15
    move v1, v2

    .line 205
    :goto_16
    array-length v0, v3

    if-ge v1, v0, :cond_4e

    .line 206
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

    .line 205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_4c
    move v0, v2

    .line 206
    goto :goto_46

    :cond_4e
    move-object v0, v3

    .line 209
    goto :goto_14
.end method

.method private stepMeta(JLcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V
    .registers 13

    .prologue
    .line 1182
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2c

    .line 1183
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->metaDemand(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D

    move-result-wide v0

    .line 1184
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

    .line 1186
    :cond_2c
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    .line 1187
    return-void
.end method

.method static totalLoad(DDD)D
    .registers 16

    .prologue
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1354
    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v6

    move-wide v0, p2

    .line 1355
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    .line 1356
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

    .line 1357
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

    .line 1390
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v0

    .line 1391
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

    .line 1392
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    aput v1, v3, v0

    const/4 v0, 0x6

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v0

    .line 1391
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1393
    return-void
.end method

.method private vo2Ref()[D
    .registers 21

    .prologue
    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vo2Ref:[D

    if-nez v2, :cond_c1

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v12, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 1132
    if-eqz v12, :cond_c6

    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 1133
    :goto_10
    if-eqz v12, :cond_ca

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    if-lez v3, :cond_ca

    iget v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 1134
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

    .line 1135
    :goto_2f
    if-eqz v12, :cond_d5

    iget-wide v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    :goto_33
    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->restingVo2(Lcom/isaigu/gymapp/ai/AiModel$Sex;IDD)D

    move-result-wide v14

    .line 1136
    if-eqz v12, :cond_d9

    iget-object v6, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    :goto_3b
    invoke-static {v6, v2, v3}, Lcom/isaigu/gymapp/ai/AiEnergy;->fitnessVo2max(Lcom/isaigu/gymapp/ai/AiModel$Fitness;Lcom/isaigu/gymapp/ai/AiModel$Sex;I)D

    move-result-wide v6

    .line 1137
    if-eqz v12, :cond_dd

    iget-object v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v3, :cond_dd

    iget-object v3, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v3, :cond_dd

    const/4 v3, 0x1

    .line 1138
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

    .line 1139
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

    .line 1141
    :cond_9a
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    add-double/2addr v8, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 1142
    const/4 v3, 0x3

    new-array v3, v3, [D

    const/4 v8, 0x0

    sub-double/2addr v6, v14

    mul-double/2addr v6, v4

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v10

    aput-wide v6, v3, v8

    const/4 v8, 0x1

    .line 1143
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

    .line 1145
    :cond_c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->vo2Ref:[D

    return-object v2

    .line 1132
    :cond_c6
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_10

    .line 1133
    :cond_ca
    const/16 v3, 0x23

    goto/16 :goto_18

    .line 1134
    :cond_ce
    const-wide v4, 0x4052c00000000000L    # 75.0

    goto/16 :goto_2f

    .line 1135
    :cond_d5
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto/16 :goto_33

    .line 1136
    :cond_d9
    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto/16 :goto_3b

    .line 1137
    :cond_dd
    const/4 v3, 0x0

    goto/16 :goto_4c

    .line 1143
    :cond_e0
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_b4
.end method

.method private zoneAdded(J[[DII)D
    .registers 17

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_c

    if-eqz p3, :cond_c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_f

    .line 1235
    :cond_c
    const-wide/16 v0, 0x0

    .line 1243
    :goto_e
    return-wide v0

    .line 1237
    :cond_f
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    .line 1238
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 1239
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 1240
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v6, p1, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1241
    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    sub-double/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 1242
    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sub-double v0, v2, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1243
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
    .line 1100
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1101
    :goto_6
    if-eqz v0, :cond_28

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    .line 1102
    :goto_a
    const/16 v1, 0xa

    new-array v2, v1, [D

    .line 1103
    const/4 v1, 0x0

    :goto_f
    array-length v3, v2

    if-ge v1, v3, :cond_2b

    .line 1104
    sget-object v3, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    aget-wide v4, v3, v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->chMuscle(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->reach(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 1103
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1100
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto :goto_6

    .line 1101
    :cond_28
    const/16 v0, 0x15e

    goto :goto_a

    .line 1106
    :cond_2b
    return-object v2
.end method

.method private zoneSum(J[DI)[D
    .registers 16

    .prologue
    .line 1257
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 1258
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v1, :cond_23

    .line 1259
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v4

    .line 1260
    const/4 v5, 0x0

    :goto_11
    array-length v1, v0

    if-ge v5, v1, :cond_23

    .line 1261
    aget-wide v8, v0, v5

    move-object v1, p0

    move-wide v2, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneAdded(J[[DII)D

    move-result-wide v2

    add-double/2addr v2, v8

    aput-wide v2, v0, v5

    .line 1260
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1264
    :cond_23
    return-object v0
.end method


# virtual methods
.method public canResume()Z
    .registers 3

    .prologue
    .line 390
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
    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_7

    .line 377
    :goto_6
    return-void

    .line 366
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 367
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_2c

    .line 368
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 369
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 376
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

    .line 371
    :cond_2c
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 372
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_13

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    goto :goto_13
.end method

.method chMuscle(I)D
    .registers 8

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->chMuscle:[D

    .line 1095
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

    .line 1094
    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    .line 1095
    :cond_1e
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_1b
.end method

.method public cycleLoad(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D
    .registers 12

    .prologue
    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    .line 1379
    if-eqz p1, :cond_b

    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_c

    .line 1386
    :cond_b
    :goto_b
    return-wide v2

    .line 1382
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

    .line 1383
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v6, v0

    .line 1384
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v8, v0

    .line 1385
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

    .line 1386
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

    .line 1382
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

    .line 1385
    goto :goto_3d
.end method

.method fatPct()D
    .registers 11

    .prologue
    const-wide/16 v0, 0x0

    .line 1062
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1063
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 1064
    if-eqz v4, :cond_27

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v2, v2, v6

    if-lez v2, :cond_27

    .line 1065
    iget-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 1066
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 1072
    :goto_26
    return-wide v0

    .line 1068
    :cond_27
    if-eqz v4, :cond_66

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v2

    .line 1069
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

    .line 1070
    :goto_61
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    .line 1072
    :cond_63
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct:D

    goto :goto_26

    :cond_66
    move-wide v2, v0

    .line 1068
    goto :goto_2d

    .line 1070
    :cond_68
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_61
.end method

.method public forecastFrom(J)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 14

    .prologue
    .line 1737
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fork()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v7

    .line 1738
    if-nez v7, :cond_8

    .line 1739
    const/4 v0, 0x0

    .line 1825
    :goto_7
    return-object v0

    .line 1741
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

    .line 1742
    :goto_18
    if-eqz v6, :cond_6e

    .line 1745
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 1746
    const-wide v2, 0x3fb47ae147ae147bL    # 0.08

    cmpl-double v2, v0, v2

    if-lez v2, :cond_60

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    add-int/lit8 v3, v3, 0x14

    if-le v2, v3, :cond_60

    .line 1747
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

    .line 1748
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    .line 1750
    :cond_60
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    int-to-double v0, v0

    invoke-direct {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->hrModel(J)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGap:D

    .line 1751
    iput-wide p1, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGapMs:J

    .line 1753
    :cond_6e
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;-><init>()V

    .line 1754
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->fromS:D

    .line 1755
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    .line 1756
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 1758
    const/4 v0, 0x0

    .line 1759
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

    .line 1760
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

    .line 1761
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v2, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v8

    aput-wide v8, v0, v2

    .line 1763
    :cond_bc
    if-eqz v6, :cond_c5

    .line 1764
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->predictHr(J)I

    move-result v0

    invoke-virtual {v7, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->onHr(JI)V

    .line 1766
    :cond_c5
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$State;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1be

    .line 1795
    :pswitch_ce
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v0, :cond_127

    .line 1796
    const-wide/16 v2, 0x3e8

    add-long/2addr p1, v2

    .line 1797
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    :cond_d8
    :goto_d8
    move v0, v1

    .line 1809
    goto :goto_8d

    .line 1741
    :cond_da
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_18

    .line 1768
    :pswitch_de
    invoke-virtual {v7, p1, p2, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->startAt(JJ)V

    goto :goto_d8

    .line 1771
    :pswitch_e2
    iget-wide v2, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 1772
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    goto :goto_d8

    .line 1775
    :pswitch_ec
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->resume(J)V

    goto :goto_d8

    .line 1778
    :pswitch_f0
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceTick(J)V

    .line 1779
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v0

    if-lez v0, :cond_109

    .line 1780
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

    .line 1781
    :cond_109
    invoke-virtual {v7, p1, p2, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->requestGo(JJ)Z

    move-result v0

    if-nez v0, :cond_d8

    .line 1782
    const-wide/16 v2, 0xfa0

    add-long/2addr p1, v2

    goto :goto_d8

    .line 1786
    :pswitch_113
    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 1787
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->resume(J)V

    goto :goto_d8

    .line 1789
    :cond_11d
    const-wide/16 v2, 0xfa0

    add-long/2addr p1, v2

    .line 1790
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 1791
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceTick(J)V

    goto :goto_d8

    .line 1800
    :cond_127
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v2, v8

    .line 1801
    const-wide/16 v8, 0x1

    add-long/2addr v8, p1

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 1802
    if-eqz v6, :cond_14b

    .line 1803
    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    invoke-virtual {v7, v8, v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->predictHr(J)I

    move-result v0

    invoke-virtual {v7, v2, v3, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->onHr(JI)V

    .line 1805
    :cond_14b
    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-virtual {v7, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 1806
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_d8

    .line 1807
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto/16 :goto_d8

    .line 1812
    :cond_15d
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1813
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    .line 1814
    const/4 v0, 0x0

    :goto_16b
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    array-length v1, v1

    if-ge v0, v1, :cond_18a

    .line 1815
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    aget-wide v2, v1, v0

    const-wide/16 v8, 0x0

    cmpg-double v1, v2, v8

    if-gez v1, :cond_184

    .line 1816
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-ge v0, v2, :cond_187

    const-wide/16 v2, 0x0

    :goto_182
    aput-wide v2, v1, v0

    .line 1814
    :cond_184
    add-int/lit8 v0, v0, 0x1

    goto :goto_16b

    .line 1816
    :cond_187
    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    goto :goto_182

    .line 1819
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

    .line 1820
    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    const/4 v5, 0x2

    aget v0, v0, v5

    float-to-double v8, v0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    goto :goto_190

    .line 1822
    :cond_1a9
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getDoseDone(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->dose:D

    .line 1823
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneDose:[D

    .line 1824
    invoke-virtual {v7, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneExDone(J)[D

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneExDose:[D

    move-object v0, v4

    .line 1825
    goto/16 :goto_7

    .line 1766
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

    .line 1709
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoEngine;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;-><init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V

    .line 1711
    :try_start_9
    const-class v0, Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_11
    if-ge v2, v5, :cond_58

    aget-object v6, v4, v2

    .line 1712
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 1713
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_25

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1711
    :cond_25
    :goto_25
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 1716
    :cond_29
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1717
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1718
    instance-of v7, v0, [D

    if-eqz v7, :cond_42

    .line 1719
    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1725
    :cond_3b
    :goto_3b
    invoke-virtual {v6, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_25

    .line 1727
    :catch_3f
    move-exception v0

    .line 1728
    const/4 v0, 0x0

    .line 1732
    :goto_41
    return-object v0

    .line 1720
    :cond_42
    instance-of v7, v0, [I

    if-eqz v7, :cond_4d

    .line 1721
    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3b

    .line 1722
    :cond_4d
    instance-of v7, v0, [Z

    if-eqz v7, :cond_3b

    .line 1723
    check-cast v0, [Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_56} :catch_3f

    move-result-object v0

    goto :goto_3b

    .line 1730
    :cond_58
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v4, v4

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1731
    iput-boolean v8, v1, Lcom/isaigu/gymapp/ai/AutoEngine;->forecasting:Z

    move-object v0, v1

    .line 1732
    goto :goto_41
.end method

.method public getCapHits()I
    .registers 2

    .prologue
    .line 2111
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    return v0
.end method

.method public getCardioLoad(J)D
    .registers 10

    .prologue
    .line 1002
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    .line 1003
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

    .line 1004
    :cond_18
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 1006
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
    .line 1200
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getMetabolicLoad(J)D

    move-result-wide v0

    .line 1201
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCardioLoad(J)D

    move-result-wide v2

    .line 1202
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

    .line 989
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v0

    .line 990
    :goto_c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v1, v1

    new-array v6, v1, [D

    .line 991
    const/4 v1, 0x0

    :goto_12
    array-length v2, v6

    if-ge v1, v2, :cond_2b

    .line 992
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_29

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fAt(IJ[[D)D

    move-result-wide v2

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v2, v8

    :goto_22
    aput-wide v2, v6, v1

    .line 991
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 989
    :cond_27
    const/4 v0, 0x0

    goto :goto_c

    :cond_29
    move-wide v2, v4

    .line 992
    goto :goto_22

    .line 994
    :cond_2b
    return-object v6
.end method

.method public getCorridorExt()I
    .registers 2

    .prologue
    .line 2115
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    return v0
.end method

.method public getCorridorShare()D
    .registers 5

    .prologue
    .line 2123
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
    .line 1918
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
    .line 2095
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    return-object v0
.end method

.method public getDoseDone(J)D
    .registers 8

    .prologue
    .line 1339
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
    .line 2119
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    return v0
.end method

.method public getDoseLoad(J)D
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 1344
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

    .line 2127
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
    .line 2074
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    return-wide v0
.end method

.method public getEndMs()J
    .registers 3

    .prologue
    .line 2156
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    return-wide v0
.end method

.method public getExercise()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 805
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

    .line 809
    :cond_1c
    :goto_1c
    return-object v0

    .line 808
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-object v1, v1, v2

    .line 809
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

    .line 1901
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
    .line 1914
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    return-wide v0
.end method

.method public getHr(J)I
    .registers 8

    .prologue
    .line 2099
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
    .line 2107
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
    .line 1869
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    return v0
.end method

.method public getHrGain()D
    .registers 3

    .prologue
    .line 1698
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrGain:D

    return-wide v0
.end method

.method public getHrMaxSeen()I
    .registers 2

    .prologue
    .line 2103
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    return v0
.end method

.method public getImpulseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->impulseName:Ljava/lang/String;

    return-object v0
.end method

.method public getImpulseS()D
    .registers 7

    .prologue
    .line 1490
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLiveRho()D
    .registers 3

    .prologue
    .line 960
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    return-wide v0
.end method

.method public getLiveZones()[I
    .registers 2

    .prologue
    .line 956
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
    .line 2164
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    return-object v0
.end method

.method public getManualStops()I
    .registers 2

    .prologue
    .line 320
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    return v0
.end method

.method public getMetabolicLoad(J)D
    .registers 16

    .prologue
    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    const-wide/16 v2, 0x0

    .line 1191
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaMs:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_19

    .line 1192
    :cond_12
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->metaV:D

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    .line 1195
    :goto_18
    return-wide v0

    .line 1194
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->metaDemand(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D

    move-result-wide v0

    .line 1195
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
    .line 1112
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getChannelLoad(J)[D

    move-result-object v1

    .line 1113
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneMass()[D

    move-result-object v6

    .line 1114
    const-wide/16 v4, 0x0

    .line 1115
    const-wide/16 v2, 0x0

    .line 1116
    const/4 v0, 0x0

    :goto_d
    array-length v7, v1

    if-ge v0, v7, :cond_1c

    .line 1117
    aget-wide v8, v6, v0

    aget-wide v10, v1, v0

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 1118
    aget-wide v8, v6, v0

    add-double/2addr v2, v8

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1120
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

    .line 1125
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

    .line 821
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

    .line 839
    :cond_19
    :goto_19
    return-object v4

    .line 825
    :cond_1a
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v8

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_4a

    move-wide v0, v2

    :goto_27
    sub-double v0, v8, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    add-double/2addr v0, v6

    .line 826
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v2

    .line 827
    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v3

    .line 828
    if-ltz v2, :cond_4d

    if-ge v3, v2, :cond_47

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v6, v2

    sub-double v0, v6, v0

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_4d

    .line 829
    :cond_47
    const-string v4, ""

    goto :goto_19

    .line 825
    :cond_4a
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    goto :goto_27

    .line 831
    :cond_4d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->templateOnly()Z

    move-result v0

    if-nez v0, :cond_19

    .line 834
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v3, v0, :cond_82

    .line 835
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    array-length v0, v0

    if-ge v3, v0, :cond_80

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, v3

    array-length v0, v0

    if-lez v0, :cond_80

    .line 836
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, v3

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_7e
    move-object v4, v0

    .line 835
    goto :goto_19

    :cond_80
    move-object v0, v4

    .line 836
    goto :goto_7e

    .line 838
    :cond_82
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-object v0, v0, v1

    .line 839
    if-eqz v0, :cond_19

    array-length v1, v0

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v4, v0, v1

    goto :goto_19
.end method

.method public getOffExtension()I
    .registers 3

    .prologue
    .line 519
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPeakLoad(J)D
    .registers 12

    .prologue
    .line 1367
    const-wide/16 v2, 0x0

    .line 1368
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getChannelLoad(J)[D

    move-result-object v1

    array-length v4, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v4, :cond_13

    aget-wide v6, v1, v0

    .line 1369
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1368
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1371
    :cond_13
    return-wide v2
.end method

.method public getPhaseIndex()I
    .registers 2

    .prologue
    .line 2070
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    return v0
.end method

.method public getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 2

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    return-object v0
.end method

.method public getReentry()D
    .registers 3

    .prologue
    .line 2140
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    return-wide v0
.end method

.method public getRemainingS()D
    .registers 7

    .prologue
    .line 2078
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
    .line 1909
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
    .line 1905
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    return v0
.end method

.method public getRestHrLimit()I
    .registers 4

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v0, v0, -0xf

    .line 1875
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    if-lez v1, :cond_20

    .line 1876
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1878
    :cond_20
    return v0
.end method

.method public getRestLeftS(J)I
    .registers 12

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_8

    .line 1831
    const/4 v0, 0x0

    .line 1833
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
    .line 1837
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    return v0
.end method

.method public getRestS(J)D
    .registers 8

    .prologue
    .line 1841
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

.method public getSessionS(J)D
    .registers 14

    .prologue
    .line 1454
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    add-double/2addr v2, v0

    .line 1455
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_48

    .line 1457
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 1458
    :goto_2e
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    sub-long v6, p1, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedOf(Lcom/isaigu/gymapp/ai/AutoEngine$State;D)D

    move-result-wide v0

    add-double/2addr v0, v2

    .line 1460
    :goto_44
    return-wide v0

    .line 1457
    :cond_45
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    goto :goto_2e

    :cond_48
    move-wide v0, v2

    goto :goto_44
.end method

.method public getSetImpulses()[I
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1475
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 1476
    :goto_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v4

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1477
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

    .line 1478
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v1, v3

    aput v4, v1, v2

    return-object v1

    .line 1475
    :cond_3e
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    goto :goto_13

    :cond_41
    move v0, v3

    .line 1477
    goto :goto_2d
.end method

.method public getSetLeftS()D
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 844
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
    .line 1465
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 1466
    :goto_11
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1467
    int-to-double v4, v2

    mul-double/2addr v4, v0

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_26

    const/4 v3, 0x1

    if-le v2, v3, :cond_26

    .line 1468
    add-int/lit8 v2, v2, -0x1

    .line 1470
    :cond_26
    int-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0

    .line 1465
    :cond_29
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    goto :goto_11
.end method

.method public getSkippedS()D
    .registers 3

    .prologue
    .line 1485
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->skippedS:D

    return-wide v0
.end method

.method public getStartMs()J
    .registers 3

    .prologue
    .line 2152
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    return-wide v0
.end method

.method public getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;
    .registers 2

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    return-object v0
.end method

.method public getStationIndex()I
    .registers 2

    .prologue
    .line 1887
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    return v0
.end method

.method public getStationS()D
    .registers 11

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 1892
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

    .line 1893
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

    .line 1892
    return-wide v0

    .line 1893
    :cond_36
    const-wide/16 v0, 0x0

    goto :goto_34
.end method

.method public getStationsDone()I
    .registers 2

    .prologue
    .line 1897
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    return v0
.end method

.method public getSystemLoad(J)D
    .registers 10

    .prologue
    .line 1349
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
    .line 2148
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
    .line 1413
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    return-object v0
.end method

.method public getUserScaleMax()D
    .registers 3

    .prologue
    .line 2144
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    return-wide v0
.end method

.method public getZoneActive(J)[Z
    .registers 16

    .prologue
    const/16 v7, 0xb

    const/4 v1, 0x0

    .line 1284
    new-array v2, v7, [Z

    .line 1285
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v3, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_19

    :cond_17
    move-object v0, v2

    .line 1299
    :goto_18
    return-object v0

    .line 1288
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v6

    .line 1289
    const-wide/16 v4, 0x0

    move v0, v1

    .line 1290
    :goto_22
    if-ge v0, v7, :cond_2f

    .line 1291
    aget-object v3, v6, v1

    aget-wide v8, v3, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 1290
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1293
    :cond_2f
    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v0, v4, v8

    if-gtz v0, :cond_3a

    move-object v0, v2

    .line 1294
    goto :goto_18

    :cond_3a
    move v3, v1

    .line 1296
    :goto_3b
    if-ge v3, v7, :cond_54

    .line 1297
    aget-object v0, v6, v1

    aget-wide v8, v0, v3

    const-wide v10, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v10, v4

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_52

    const/4 v0, 0x1

    :goto_4c
    aput-boolean v0, v2, v3

    .line 1296
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3b

    :cond_52
    move v0, v1

    .line 1297
    goto :goto_4c

    :cond_54
    move-object v0, v2

    .line 1299
    goto :goto_18
.end method

.method public getZoneDone(J)[D
    .registers 6

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneDone:[D

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneSum(J[DI)[D

    move-result-object v0

    return-object v0
.end method

.method public getZoneExDone(J)[D
    .registers 6

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExDone:[D

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneSum(J[DI)[D

    move-result-object v0

    return-object v0
.end method

.method public getZoneProgress(J)[D
    .registers 18

    .prologue
    .line 1312
    invoke-virtual/range {p0 .. p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getZoneDone(J)[D

    move-result-object v5

    .line 1313
    const-wide/16 v0, 0x0

    .line 1314
    const-wide/16 v2, 0x0

    .line 1315
    const/4 v4, 0x0

    :goto_9
    const/16 v6, 0xa

    if-ge v4, v6, :cond_32

    .line 1316
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    array-length v6, v6

    if-ge v4, v6, :cond_1e

    .line 1317
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    aget-wide v6, v6, v4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1319
    :cond_1e
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    if-eqz v6, :cond_2f

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    array-length v6, v6

    if-ge v4, v6, :cond_2f

    .line 1320
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    aget-wide v6, v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1315
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1323
    :cond_32
    array-length v4, v5

    new-array v10, v4, [D

    .line 1324
    const/4 v4, 0x0

    :goto_36
    array-length v6, v5

    if-ge v4, v6, :cond_82

    .line 1325
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    if-eqz v6, :cond_77

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    array-length v6, v6

    if-ge v4, v6, :cond_77

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    aget-wide v6, v6, v4

    move-wide v8, v6

    .line 1326
    :goto_47
    const/16 v6, 0xa

    if-ne v4, v6, :cond_7b

    move-wide v6, v2

    .line 1327
    :goto_4c
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v12

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 1328
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

    .line 1324
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 1325
    :cond_77
    const-wide/16 v6, 0x0

    move-wide v8, v6

    goto :goto_47

    :cond_7b
    move-wide v6, v0

    .line 1326
    goto :goto_4c

    .line 1328
    :cond_7d
    aget-wide v8, v5, v4

    div-double v6, v8, v6

    goto :goto_72

    .line 1330
    :cond_82
    return-object v10
.end method

.method public isCardioLimiting(J)Z
    .registers 8

    .prologue
    .line 1362
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

.method public isDoseStopped()Z
    .registers 2

    .prologue
    .line 2132
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseStopped:Z

    return v0
.end method

.method public isDoublePulseAvailable()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-nez v0, :cond_a

    move v0, v2

    .line 456
    :goto_9
    return v0

    .line 443
    :cond_a
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_66

    .line 444
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

    .line 445
    :goto_2e
    if-eqz v0, :cond_40

    array-length v5, v0

    if-ge v4, v5, :cond_40

    .line 446
    aget-object v5, v0, v4

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseHz:I

    if-lez v5, :cond_3d

    move v0, v3

    .line 447
    goto :goto_9

    .line 444
    :cond_3b
    const/4 v0, 0x0

    goto :goto_2d

    .line 445
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 450
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

    .line 451
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v0, :cond_50

    move v0, v3

    .line 452
    goto :goto_9

    .line 443
    :cond_62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_66
    move v0, v2

    .line 456
    goto :goto_9
.end method

.method public isDoublePulseOn()Z
    .registers 2

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    return v0
.end method

.method public isRaiseLocked()Z
    .registers 2

    .prologue
    .line 2136
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    return v0
.end method

.method public isRestBeforeCooldown()Z
    .registers 3

    .prologue
    .line 1882
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

    .line 1846
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_13

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v1, v2, :cond_14

    .line 1857
    :cond_13
    :goto_13
    return v0

    .line 1849
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v2

    .line 1850
    if-lez v2, :cond_13

    .line 1853
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v1, v1, -0xf

    .line 1854
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v3

    if-lez v3, :cond_3a

    .line 1855
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1857
    :cond_3a
    if-le v2, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method

.method public isResumeWaiting()Z
    .registers 3

    .prologue
    .line 2160
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
    .line 213
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
    .line 1154
    if-eqz p1, :cond_c

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_f

    .line 1155
    :cond_c
    const-wide/16 v2, 0x0

    .line 1177
    :goto_e
    return-wide v2

    .line 1157
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->vo2Ref()[D

    move-result-object v12

    .line 1158
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

    .line 1159
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

    .line 1160
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

    .line 1161
    :goto_66
    invoke-virtual/range {p0 .. p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v13

    .line 1162
    const-wide/16 v4, 0x0

    .line 1163
    const/4 v3, 0x0

    move-wide v10, v4

    :goto_6e
    const/16 v4, 0xa

    if-ge v3, v4, :cond_108

    .line 1164
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

    .line 1165
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

    .line 1166
    if-eqz v2, :cond_157

    .line 1167
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

    .line 1169
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

    .line 1163
    add-int/lit8 v3, v3, 0x1

    move-wide v10, v4

    goto :goto_6e

    .line 1158
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

    .line 1160
    :cond_101
    const/4 v2, 0x0

    goto/16 :goto_66

    .line 1164
    :cond_104
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_82

    .line 1171
    :cond_108
    const-wide/16 v2, 0x0

    .line 1172
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

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v2

    .line 1174
    if-eqz v2, :cond_14e

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v2

    .line 1175
    :goto_12a
    if-ltz v2, :cond_150

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v2

    const/4 v4, 0x2

    aget-wide v4, v12, v4

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseVo2(DDD)D

    move-result-wide v2

    .line 1177
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

    .line 1174
    :cond_14e
    const/4 v2, -0x1

    goto :goto_12a

    .line 1175
    :cond_150
    const-wide/16 v2, 0x0

    goto :goto_137

    .line 1177
    :cond_153
    const-wide/16 v2, 0x0

    goto/16 :goto_e

    :cond_157
    move-wide v4, v8

    goto/16 :goto_bf
.end method

.method public next(J)Z
    .registers 16

    .prologue
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 1501
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 1502
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

    .line 1552
    :cond_1c
    :goto_1c
    return v2

    .line 1505
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_a9

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 1506
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1507
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v0, v1, :cond_67

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v0, v1, :cond_67

    .line 1508
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

    .line 1509
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1511
    :cond_67
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    sub-double/2addr v0, v4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->skip(D)V

    .line 1512
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    .line 1513
    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 1514
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 1515
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

    .line 1516
    invoke-direct {p0, p1, p2, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    move v2, v3

    .line 1517
    goto/16 :goto_1c

    .line 1519
    :cond_a9
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_118

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-nez v0, :cond_118

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 1520
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->skip(D)V

    .line 1521
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 1522
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

    .line 1523
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v0

    .line 1524
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v1

    .line 1525
    if-ltz v1, :cond_10c

    if-ge v0, v1, :cond_106

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_10c

    .line 1526
    :cond_106
    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    :cond_109
    :goto_109
    move v2, v3

    .line 1532
    goto/16 :goto_1c

    .line 1527
    :cond_10c
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v0, v1, :cond_109

    .line 1528
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 1529
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 1530
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    goto :goto_109

    .line 1534
    :cond_118
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_1c

    .line 1535
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    add-int/lit8 v8, v0, 0x1

    move v1, v2

    move-wide v4, v6

    .line 1537
    :goto_124
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-gt v1, v0, :cond_13a

    .line 1538
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v10, v0

    add-double/2addr v4, v10

    .line 1537
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_124

    .line 1540
    :cond_13a
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    sub-double v0, v4, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->skip(D)V

    .line 1541
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_16a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 1542
    const-string v0, "skip \u2192 recovery"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 1543
    invoke-direct {p0, p1, p2, v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    move v2, v3

    .line 1544
    goto/16 :goto_1c

    .line 1546
    :cond_16a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1c

    .line 1547
    invoke-direct {p0, v8, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 1548
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

    .line 1549
    goto/16 :goto_1c
.end method

.method public onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 547
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1c

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    const-wide/16 v4, 0x320

    sub-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1c

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->go(J)V

    .line 549
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 561
    :cond_1b
    :goto_1b
    return-object v0

    .line 551
    :cond_1c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    .line 554
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

    .line 555
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto :goto_1b

    .line 557
    :cond_3c
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 558
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    .line 561
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    goto :goto_1b
.end method

.method public onHr(JI)V
    .registers 9

    .prologue
    .line 532
    const/16 v0, 0x1e

    if-lt p3, v0, :cond_8

    const/16 v0, 0xdc

    if-le p3, v0, :cond_9

    .line 541
    :cond_8
    :goto_8
    return-void

    .line 535
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->learnHr(JI)V

    .line 536
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    .line 537
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    .line 538
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    .line 539
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrSum:D

    int-to-double v2, p3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrSum:D

    .line 540
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrCount:I

    goto :goto_8
.end method

.method public phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;
    .registers 3

    .prologue
    .line 2066
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

    .line 2082
    .line 2083
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_5
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-ge v1, v0, :cond_1b

    .line 2084
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v6, v0

    add-double/2addr v2, v6

    .line 2083
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 2086
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

    .line 2090
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 2091
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

    .line 1703
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

    .line 1704
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

    .line 1703
    :cond_3b
    const-wide/16 v0, 0x0

    goto :goto_22
.end method

.method reach(II)D
    .registers 15

    .prologue
    const-wide v2, 0x4075e00000000000L    # 350.0

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    .line 1080
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

    .line 1081
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fatPct()D

    move-result-wide v0

    .line 1082
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v2, :cond_70

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->channelFat:[D

    .line 1083
    :goto_30
    if-eqz v2, :cond_41

    if-ltz p1, :cond_41

    array-length v3, v2

    if-ge p1, v3, :cond_41

    aget-wide v8, v2, p1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpl-double v3, v8, v10

    if-lez v3, :cond_41

    .line 1084
    aget-wide v0, v2, p1

    .line 1086
    :cond_41
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_72

    .line 1087
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

    .line 1089
    :goto_5f
    const-wide v2, 0x3fa999999999999aL    # 0.05

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    return-wide v0

    :cond_6e
    move-wide v0, v2

    .line 1080
    goto :goto_11

    .line 1082
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
    .line 502
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v1, :cond_d

    .line 504
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 514
    :cond_c
    :goto_c
    return-object v0

    .line 506
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 507
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->stepIndex:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    .line 509
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 510
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_c

    .line 511
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 512
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    goto :goto_c
.end method

.method public requestGo(JJ)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_14

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v1

    if-gtz v1, :cond_13

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 294
    :cond_13
    :goto_13
    return v0

    .line 290
    :cond_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 293
    :cond_1a
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    .line 294
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public resume(J)V
    .registers 12

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 394
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v0

    if-nez v0, :cond_9

    .line 411
    :goto_8
    return-void

    .line 397
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 398
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v6, v0, v2

    .line 399
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    .line 400
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    invoke-direct {p0, v2, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedOf(Lcom/isaigu/gymapp/ai/AutoEngine$State;D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    .line 402
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpl-double v0, v6, v0

    if-ltz v0, :cond_92

    const-wide v0, 0x4082c00000000000L    # 600.0

    div-double v0, v6, v0

    sub-double v0, v4, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->clamp(DDD)D

    move-result-wide v0

    :goto_45
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 403
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_5a

    .line 404
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 406
    :cond_5a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 408
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 409
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

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto/16 :goto_8

    .line 402
    :cond_92
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_45
.end method

.method public rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D
    .registers 14

    .prologue
    .line 2030
    if-nez p1, :cond_5

    .line 2031
    const-wide/16 v0, 0x0

    .line 2035
    :cond_4
    :goto_4
    return-wide v0

    .line 2033
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v2

    .line 2034
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->env:D

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    mul-double/2addr v0, p2

    iget-wide v4, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    mul-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 2035
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

.method public setDoseBudget(D)V
    .registers 4

    .prologue
    .line 1335
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseBudget:D

    .line 1336
    return-void
.end method

.method public setDoublePulse(ZJ)V
    .registers 6

    .prologue
    .line 464
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-nez v0, :cond_7

    .line 470
    :goto_6
    return-void

    .line 467
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 468
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    .line 469
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
    .line 944
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

    .line 945
    :cond_17
    const/4 v0, 0x1

    .line 946
    :goto_18
    if-eqz v0, :cond_29

    .line 952
    :goto_1a
    return-void

    .line 944
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    .line 945
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_27
    const/4 v0, 0x0

    goto :goto_18

    .line 949
    :cond_29
    invoke-direct {p0, p4, p5}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 950
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    .line 951
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
    .line 195
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases:[Z

    .line 197
    return-void
.end method

.method public setStations([Z)V
    .registers 3

    .prologue
    .line 190
    if-eqz p1, :cond_b

    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_8
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases:[Z

    .line 191
    return-void

    .line 190
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setUserScale(D)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 524
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

    .line 525
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 527
    :cond_1e
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 528
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    .line 529
    return-void
.end method

.method public setZoneBudget([D)V
    .registers 3

    .prologue
    .line 1269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->setZoneBudget([D[D)V

    .line 1270
    return-void
.end method

.method public setZoneBudget([D[D)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1274
    if-eqz p1, :cond_16

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_9
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneBudget:[D

    .line 1275
    if-eqz p2, :cond_18

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_13
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->zoneExBudget:[D

    .line 1276
    return-void

    :cond_16
    move-object v0, v1

    .line 1274
    goto :goto_9

    :cond_18
    move-object v0, v1

    .line 1275
    goto :goto_13
.end method

.method public skipToCooldown(J)V
    .registers 6

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 416
    if-gez v0, :cond_10

    .line 417
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 419
    :cond_10
    if-ltz v0, :cond_16

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-gt v0, v1, :cond_17

    .line 427
    :cond_16
    :goto_16
    return-void

    .line 422
    :cond_17
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 423
    const-string v0, "skip \u2192 cool-down"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_16

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto :goto_16
.end method

.method public start(J)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 219
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    .line 220
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 221
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 222
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 223
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 224
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 225
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

    .line 226
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

    .line 225
    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 228
    return-void
.end method

.method public startAt(JJ)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 232
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    .line 233
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 234
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 235
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 236
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 237
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

    .line 238
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

    .line 237
    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 239
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    .line 240
    return-void
.end method

.method public stop(J)V
    .registers 6

    .prologue
    .line 354
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_11

    .line 355
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 356
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    .line 357
    const-string v0, "stop"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 359
    :cond_11
    return-void
.end method

.method public stopPress(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 302
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_10

    :cond_e
    move v0, v1

    .line 316
    :goto_f
    return v0

    .line 305
    :cond_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 306
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v3

    .line 307
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_36

    move v2, v1

    .line 308
    :goto_21
    if-ltz v3, :cond_2b

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v4, :cond_38

    .line 309
    :cond_2b
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->stop(J)V

    move v0, v1

    .line 311
    goto :goto_f

    :cond_36
    move v2, v0

    .line 307
    goto :goto_21

    .line 313
    :cond_38
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    .line 314
    const-string v1, "stop pressed \u2192 recovery"

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 315
    invoke-direct {p0, p1, p2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    goto :goto_f
.end method

.method public templateOnly()Z
    .registers 2

    .prologue
    .line 796
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

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 565
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v3, :cond_16

    .line 566
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 567
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_15

    .line 568
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->go(J)V

    .line 630
    :cond_15
    :goto_15
    return-void

    .line 572
    :cond_16
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    sub-long v6, p1, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 573
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 574
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-lez v1, :cond_85

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x2710

    cmp-long v1, v6, v8

    if-gtz v1, :cond_85

    move v1, v2

    .line 575
    :goto_38
    if-eqz v1, :cond_58

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_58

    .line 576
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrKnownS:D

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrKnownS:D

    .line 577
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v3, v6, :cond_58

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridor()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 578
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridorS:D

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridorS:D

    .line 581
    :cond_58
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_b1

    .line 582
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v3, v0, -0xa

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v0

    if-lez v0, :cond_87

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v0

    :goto_72
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 583
    if-eqz v1, :cond_ad

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-gt v1, v0, :cond_ad

    .line 584
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_8a

    .line 585
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    goto :goto_15

    :cond_85
    move v1, v0

    .line 574
    goto :goto_38

    .line 582
    :cond_87
    const/16 v0, 0x3e7

    goto :goto_72

    .line 586
    :cond_8a
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v4, 0x4e20

    cmp-long v0, v0, v4

    if-ltz v0, :cond_15

    .line 587
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 588
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v0

    if-nez v0, :cond_15

    .line 589
    const-wide/16 v0, 0xbb8

    add-long v4, p1, v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    goto/16 :goto_15

    .line 593
    :cond_ad
    iput-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    goto/16 :goto_15

    .line 597
    :cond_b1
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_15

    .line 601
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v3, v6, :cond_13f

    if-eqz v1, :cond_13f

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    if-lt v1, v3, :cond_13f

    .line 602
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 603
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 604
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 605
    iput-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    .line 606
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v4

    .line 608
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

    .line 609
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    aput v0, v3, v2

    const/4 v0, 0x6

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v3, v0

    .line 608
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
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

    goto/16 :goto_15

    .line 613
    :cond_13f
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 614
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_15c

    .line 615
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 616
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    .line 617
    const-string v0, "done"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto/16 :goto_15

    .line 620
    :cond_15c
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v1

    .line 623
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v1, v0, :cond_181

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_17e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 624
    :cond_17e
    invoke-direct {p0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 627
    :cond_181
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_15

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

    if-ltz v0, :cond_15

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto/16 :goto_15
.end method

.method public traceTick(J)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    .line 1433
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

    .line 1447
    :cond_19
    :goto_19
    return-void

    .line 1436
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v2

    .line 1437
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

    .line 1440
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_8b

    const/high16 v0, 0x40000000    # 2.0f

    .line 1441
    :goto_49
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSystemLoad(J)D

    move-result-wide v4

    .line 1442
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

    .line 1443
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    aput v3, v6, v2

    const/4 v2, 0x6

    aput v0, v6, v2

    .line 1442
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_19

    .line 1445
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_19

    .line 1440
    :cond_8b
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_49
.end method

.method public userParams(IIIIJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 12

    .prologue
    const/4 v1, -0x1

    .line 478
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 479
    if-eqz v2, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-nez v0, :cond_14

    .line 480
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 497
    :goto_13
    return-object v0

    .line 482
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 483
    if-lez p1, :cond_2a

    .line 484
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hz:Z

    if-eqz v0, :cond_a2

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-static {v0, v4, p1}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowHz(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_28
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    .line 486
    :cond_2a
    if-lez p2, :cond_3c

    .line 487
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->on:Z

    if-eqz v0, :cond_a4

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-static {v0, v4, p2}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowOn(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_3a
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    .line 489
    :cond_3c
    if-lez p3, :cond_4e

    .line 490
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->off:Z

    if-eqz v0, :cond_a6

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v0, v4, p3}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowOff(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_4c
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    .line 492
    :cond_4e
    if-lez p4, :cond_60

    .line 493
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pw:Z

    if-eqz v0, :cond_5e

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    invoke-static {v0, v1, p4}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowPw(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v1

    :cond_5e
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    .line 495
    :cond_60
    invoke-virtual {p0, p5, p6}, Lcom/isaigu/gymapp/ai/AutoEngine;->refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 496
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

    .line 484
    goto :goto_28

    :cond_a4
    move v0, v1

    .line 487
    goto :goto_3a

    :cond_a6
    move v0, v1

    .line 490
    goto :goto_4c
.end method

.method public userPause(J)V
    .registers 6

    .prologue
    .line 380
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_17

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 382
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 383
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceRest(J)V

    .line 385
    const-string v0, "pause"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 387
    :cond_17
    return-void
.end method

.method zonesOf(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 853
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    .line 854
    :goto_7
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq p1, v1, :cond_15

    .line 863
    :cond_f
    return-object v0

    .line 853
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    goto :goto_7

    .line 857
    :cond_15
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v1, v2

    .line 858
    :goto_1c
    array-length v3, v0

    if-ge v1, v3, :cond_f

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    array-length v3, v3

    if-ge v1, v3, :cond_f

    .line 859
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    aget v3, v3, v1

    if-gtz v3, :cond_2c

    .line 860
    aput v2, v0, v1

    .line 858
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method
