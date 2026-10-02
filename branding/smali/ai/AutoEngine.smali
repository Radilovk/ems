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
.field public static final COUNTDOWN_MS:J = 0xbb8L

.field public static final CRITICAL_PAUSE_S:I = 0x2d

.field public static final EX_LOAD:D = 0.25

.field private static final FALLBACK_SLACK_MS:J = 0x5dcL

.field private static final HR_RESUME_HOLD_MS:J = 0x4e20L

.field private static final HR_STALE_MS:J = 0x2710L

.field public static final NEXT_RECOVERY:Ljava/lang/String; = ""

.field public static final REST_FLOOR_S:I = 0x8

.field public static final REST_FLOOR_TETANIC_S:I = 0xf

.field public static final REST_HR_BELOW_CAP:I = 0xf

.field public static final REST_MAX_S:I = 0x78

.field public static final REST_SOFT_FROM_S:I = 0xb4

.field public static final SET_END_HR_BELOW_CAP:I = 0x5

.field public static final STATION_MAX_S:I = 0x28

.field public static final STATION_MIN_S:I = 0x1e

.field public static final STATION_REST_FROM_S:I = 0xa

.field public static final TRACE_CYCLE:F = 0.0f

.field public static final TRACE_HR_PAUSE:F = 2.0f

.field public static final TRACE_REST:F = 1.0f


# instance fields
.field private capHits:I

.field private chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

.field private final chF:[D

.field private chFMs:J

.field private corridorExt:I

.field private countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

.field private counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

.field private current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

.field private doseExt:I

.field private doseStopped:Z

.field private doublePulse:Z

.field private elapsedS:D

.field private endMs:J

.field private final fMax:D

.field private final fRec:D

.field private goMs:J

.field private hr:I

.field private hrCount:I

.field private hrEndedSets:I

.field private hrKnownS:D

.field private hrMaxSeen:I

.field private hrMs:J

.field private hrOkSinceMs:J

.field private hrSum:D

.field private imposedS:D

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


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, -0x1

    .line 165
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
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    .line 107
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 116
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 117
    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    .line 121
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 139
    const/16 v0, 0xa

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    .line 145
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    .line 155
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 159
    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    .line 166
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 167
    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_63

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v0, :cond_63

    move v0, v1

    :goto_4b
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    .line 168
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v0

    .line 169
    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    .line 170
    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    .line 171
    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    .line 172
    return-void

    :cond_63
    move v0, v2

    .line 167
    goto :goto_4b
.end method

.method private build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 15

    .prologue
    .line 1250
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 1251
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_11c

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 1252
    :goto_2a
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    .line 1253
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    if-lez v3, :cond_36

    .line 1254
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 1256
    :cond_36
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    if-lez v3, :cond_3e

    .line 1257
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 1259
    :cond_3e
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    if-lez v3, :cond_46

    .line 1260
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 1262
    :cond_46
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    if-lez v3, :cond_4e

    .line 1263
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    .line 1265
    :cond_4e
    iget v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    iget v5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 1266
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-static {v2, v1, v3, p1}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 1267
    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-lez v1, :cond_11f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseElapsed()D

    move-result-wide v2

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v6, v1

    div-double/2addr v2, v6

    .line 1268
    :goto_6a
    new-instance v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;-><init>()V

    .line 1269
    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 1270
    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    .line 1271
    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iput v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    .line 1272
    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iput v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    .line 1273
    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iput v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    .line 1274
    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    .line 1275
    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    .line 1276
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    .line 1277
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iput v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    .line 1278
    iput p2, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->stepIndex:I

    .line 1279
    invoke-virtual {p1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiAt(D)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    .line 1280
    invoke-virtual {p1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envAt(D)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->env:D

    .line 1281
    iget-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    mul-double/2addr v0, v6

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    .line 1282
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v6, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1283
    iget-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    mul-double/2addr v0, v6

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    .line 1284
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    invoke-virtual {p1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envAt(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    mul-double/2addr v0, v2

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    mul-double/2addr v0, v2

    .line 1285
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    if-eqz v2, :cond_123

    iget-wide v2, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide v2, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    mul-double/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1286
    :goto_e8
    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->ceiling:D

    .line 1287
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v0, :cond_11b

    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v0, :cond_11b

    iget-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_11b

    .line 1288
    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iput v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    .line 1289
    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v0

    if-eqz v0, :cond_12a

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fd999999999999aL    # 0.4

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    div-double/2addr v6, v8

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_118
    mul-double/2addr v0, v2

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    .line 1291
    :cond_11b
    return-object v5

    .line 1251
    :cond_11c
    const/4 v1, 0x0

    goto/16 :goto_2a

    .line 1267
    :cond_11f
    const-wide/16 v2, 0x0

    goto/16 :goto_6a

    .line 1286
    :cond_123
    iget-wide v2, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_e8

    .line 1289
    :cond_12a
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_118
.end method

.method private static clamp(DDD)D
    .registers 8

    .prologue
    .line 1450
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
    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_21

    .line 335
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    .line 339
    :goto_1d
    return v0

    .line 334
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 339
    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method private countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V
    .registers 13

    .prologue
    .line 232
    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 233
    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    .line 234
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 235
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

    .line 236
    return-void
.end method

.method private enterPhase(IJ)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 613
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 614
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    .line 616
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    .line 617
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

    .line 618
    return-void
.end method

.method private enterRecoveryRest(JI)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 314
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

    .line 316
    :goto_1b
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v3, p3, :cond_22

    .line 317
    invoke-direct {p0, p3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 319
    :cond_22
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 320
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 321
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 323
    if-nez v0, :cond_33

    .line 324
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 326
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 327
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 328
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 329
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceRest(J)V

    .line 331
    return-void

    :cond_41
    move v0, v1

    .line 314
    goto :goto_1b
.end method

.method private enterRest(JZ)V
    .registers 13

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 721
    if-nez p3, :cond_2c

    .line 722
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v2

    .line 723
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v3

    .line 724
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

    .line 726
    :cond_20
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v2, v3, :cond_27

    .line 727
    invoke-direct {p0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 729
    :cond_27
    iput v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 730
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    move p3, v0

    .line 737
    :cond_2c
    :goto_2c
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 738
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 739
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 740
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restStartMs:J

    .line 741
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    .line 742
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    .line 743
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceRest(J)V

    .line 744
    if-eqz p3, :cond_8d

    .line 745
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    .line 755
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

    .line 756
    return-void

    .line 731
    :cond_81
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v2, v3, :cond_2c

    .line 732
    invoke-direct {p0, v2, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 733
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 734
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    goto :goto_2c

    .line 747
    :cond_8d
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_cf

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_cf

    .line 748
    :goto_99
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->peakF()D

    move-result-wide v2

    .line 749
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_d1

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fRec:D

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    .line 751
    :goto_ad
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_d4

    move v4, v1

    .line 752
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

    .line 753
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    goto/16 :goto_46

    :cond_cf
    move v0, v1

    .line 747
    goto :goto_99

    .line 749
    :cond_d1
    const-wide/16 v2, 0x0

    goto :goto_ad

    .line 751
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
    .line 831
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    aget-wide v0, v0, p1

    .line 832
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    cmp-long v2, p2, v2

    if-gtz v2, :cond_b

    .line 855
    :cond_a
    :goto_a
    return-wide v0

    .line 835
    :cond_b
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_11

    if-nez p4, :cond_26

    .line 836
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

    .line 838
    :cond_26
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v4, v2

    .line 839
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v6

    .line 840
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long/2addr v2, v8

    long-to-double v2, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v8

    .line 841
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v8, p2, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    .line 842
    cmpg-double v10, v2, v4

    if-gez v10, :cond_82

    cmpl-double v10, v8, v2

    if-lez v10, :cond_82

    .line 843
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    sub-double v2, v10, v2

    neg-double v2, v2

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 844
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

    .line 845
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 847
    :cond_82
    cmpg-double v4, v2, v6

    if-gez v4, :cond_ab

    cmpl-double v4, v8, v2

    if-lez v4, :cond_ab

    .line 848
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double v2, v4, v2

    neg-double v2, v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->tauR:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 849
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

    .line 850
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 852
    :cond_ab
    cmpl-double v4, v8, v2

    if-lez v4, :cond_a

    .line 853
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
    .line 1446
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
    .line 1107
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;ZD)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v0

    return-object v0
.end method

.method public static forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;ZD)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 16

    .prologue
    .line 1112
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;-><init>()V

    .line 1113
    new-instance v5, Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AutoEngine;-><init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V

    .line 1114
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 1115
    invoke-virtual {v5, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setScript(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V

    .line 1116
    const-wide/16 v0, 0x0

    invoke-virtual {v5, p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoublePulse(ZJ)V

    .line 1117
    const-wide/16 v0, 0x0

    .line 1118
    invoke-virtual {v5, v0, v1, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->startAt(JJ)V

    .line 1119
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getGoMs()J

    move-result-wide v2

    .line 1120
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 1121
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    .line 1122
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    .line 1123
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v0, v1

    .line 1124
    const/4 v0, 0x0

    .line 1125
    :goto_42
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v6, :cond_97

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v6, :cond_97

    add-int/lit8 v1, v0, 0x1

    const/16 v6, 0x1f40

    if-ge v0, v6, :cond_97

    .line 1126
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v6, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-wide v6, v0, v6

    const-wide/16 v8, 0x0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_6e

    .line 1127
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget v6, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v8

    aput-wide v8, v0, v6

    .line 1129
    :cond_6e
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v6, :cond_8b

    .line 1130
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 1131
    invoke-virtual {v5, v2, v3, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->requestGo(JJ)Z

    .line 1132
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getGoMs()J

    move-result-wide v2

    .line 1133
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    move v0, v1

    .line 1134
    goto :goto_42

    .line 1136
    :cond_8b
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v6, :cond_97

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v0, :cond_bd

    .line 1143
    :cond_97
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1144
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    .line 1145
    const/4 v0, 0x1

    :goto_a5
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    array-length v1, v1

    if-ge v0, v1, :cond_d2

    .line 1146
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    aget-wide v2, v1, v0

    const-wide/16 v6, 0x0

    cmpg-double v1, v2, v6

    if-gez v1, :cond_ba

    .line 1147
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->phaseStartS:[D

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    aput-wide v2, v1, v0

    .line 1145
    :cond_ba
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 1139
    :cond_bd
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    .line 1140
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 1141
    invoke-virtual {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move v0, v1

    goto/16 :goto_42

    .line 1150
    :cond_d2
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1151
    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    const/4 v5, 0x2

    aget v0, v0, v5

    float-to-double v6, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    goto :goto_d8

    .line 1153
    :cond_f1
    return-object v4
.end method

.method private go(J)V
    .registers 16

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 240
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 242
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v6, v0, :cond_d5

    .line 243
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 244
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    .line 245
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    invoke-direct {p0, v6, v8, v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedOf(Lcom/isaigu/gymapp/ai/AutoEngine$State;D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    .line 246
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v6, v0, :cond_a2

    .line 247
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restSumS:D

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restSumS:D

    .line 248
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    .line 249
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, v8, v0

    if-ltz v0, :cond_4f

    .line 250
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 259
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

    .line 263
    :goto_95
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 265
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 267
    return-void

    .line 254
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

    .line 255
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v6, v0, :cond_4f

    .line 256
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    goto :goto_4f

    .line 254
    :cond_ce
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_ba

    .line 261
    :cond_d5
    const-string v0, "go"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto :goto_95
.end method

.method private hrNearCap(J)Z
    .registers 6

    .prologue
    .line 1192
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    .line 1193
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
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 996
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne p1, v0, :cond_f

    .line 997
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    int-to-double v0, v0

    add-double/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    .line 1002
    :cond_e
    :goto_e
    return-wide p2

    .line 999
    :cond_f
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq p1, v0, :cond_e

    .line 1002
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    goto :goto_e
.end method

.method private inCorridor()Z
    .registers 4

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorLoHr()I

    move-result v0

    .line 1321
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    .line 1322
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
    .line 419
    const-wide/16 v2, 0x0

    .line 420
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, p1, :cond_18

    .line 421
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 420
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 423
    :cond_18
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 424
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 425
    return-void
.end method

.method private log(JLjava/lang/String;)V
    .registers 17

    .prologue
    const-wide/16 v10, 0x3c

    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    .line 1438
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1439
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

    .line 1440
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_44

    .line 1441
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1443
    :cond_44
    return-void
.end method

.method private nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 16

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    .line 622
    if-nez v1, :cond_8

    .line 623
    const/4 v0, 0x0

    .line 711
    :cond_7
    :goto_7
    return-object v0

    .line 626
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v0, v2, :cond_13b

    const/4 v0, 0x1

    .line 627
    :goto_13
    if-eqz v0, :cond_bb

    .line 628
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 629
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v0, v2, :cond_33

    .line 630
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 632
    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 633
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_bb

    .line 634
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v0, :cond_13e

    const/4 v0, 0x1

    .line 635
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

    .line 636
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

    .line 637
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_141

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qPlanned:D

    div-double/2addr v2, v4

    .line 638
    :goto_8f
    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_145

    .line 639
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

    .line 643
    :cond_af
    :goto_af
    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v2, v4

    if-lez v0, :cond_15a

    const/4 v0, 0x1

    :goto_b9
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    .line 646
    :cond_bb
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->qUsed:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qBudget:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_2f3

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-nez v0, :cond_2f3

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qBudget:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2f3

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-le v0, v2, :cond_2f3

    .line 647
    const-string v0, "dose budget reached \u2192 cool-down"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseStopped:Z

    .line 649
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 650
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 653
    :goto_f0
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v1, v2, :cond_1ef

    .line 654
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_15d

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_15d

    const/4 v1, 0x1

    .line 655
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

    .line 656
    :goto_11e
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 657
    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    .line 658
    const/4 v4, 0x0

    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 659
    if-ltz v3, :cond_161

    if-nez v1, :cond_12d

    if-eqz v2, :cond_161

    .line 660
    :cond_12d
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 661
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 662
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 626
    :cond_13b
    const/4 v0, 0x0

    goto/16 :goto_13

    .line 634
    :cond_13e
    const/4 v0, 0x0

    goto/16 :goto_51

    .line 637
    :cond_141
    const-wide/16 v2, 0x0

    goto/16 :goto_8f

    .line 640
    :cond_145
    const-wide v4, 0x3ff0cccccccccccdL    # 1.05

    cmpg-double v0, v2, v4

    if-gez v0, :cond_af

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    if-lez v0, :cond_af

    .line 641
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    goto/16 :goto_af

    .line 643
    :cond_15a
    const/4 v0, 0x0

    goto/16 :goto_b9

    .line 654
    :cond_15d
    const/4 v1, 0x0

    goto :goto_107

    .line 655
    :cond_15f
    const/4 v2, 0x0

    goto :goto_11e

    .line 664
    :cond_161
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 680
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

    .line 681
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a0

    .line 682
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    .line 683
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-le v2, v1, :cond_269

    .line 684
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    .line 689
    :cond_1a0
    :goto_1a0
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 690
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

    .line 691
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v1

    int-to-double v6, v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_27b

    .line 692
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 693
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 694
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 695
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 665
    :cond_1ef
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_210

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_210

    .line 666
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 667
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 668
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 669
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 670
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

    .line 672
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

    .line 673
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 674
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 675
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    .line 676
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    .line 677
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 685
    :cond_269
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    add-int/lit8 v1, v1, -0x5

    if-ge v2, v1, :cond_1a0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    if-lez v1, :cond_1a0

    .line 686
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    goto/16 :goto_1a0

    .line 697
    :cond_27b
    iput-wide p1, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    .line 698
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 699
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 700
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 701
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 702
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    const/4 v2, 0x7

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    double-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cycleLoad(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getFatigueShare()D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 703
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 702
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xfa0

    if-le v1, v2, :cond_2d3

    .line 705
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 707
    :cond_2d3
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 708
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7

    .line 709
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    goto/16 :goto_7

    :cond_2f3
    move-object v0, v1

    goto/16 :goto_f0
.end method

.method private peakF()D
    .registers 9

    .prologue
    .line 903
    const-wide/16 v2, 0x0

    .line 904
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v4, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v4, :cond_11

    aget-wide v6, v1, v0

    .line 905
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 904
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 907
    :cond_11
    return-wide v2
.end method

.method private phaseAt(D)I
    .registers 10

    .prologue
    .line 1309
    const-wide/16 v2, 0x0

    .line 1310
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 1311
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 1312
    cmpg-double v0, p1, v2

    if-gez v0, :cond_21

    .line 1316
    :goto_20
    return v1

    .line 1310
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1316
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    goto :goto_20
.end method

.method private rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D
    .registers 24

    .prologue
    .line 803
    const/4 v2, 0x2

    const/16 v3, 0xa

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 804
    if-eqz p1, :cond_1b

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1c

    .line 823
    :cond_1b
    return-object v2

    .line 807
    :cond_1c
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_d8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_d8

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    .line 808
    :goto_32
    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v14

    .line 809
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v3, :cond_ec

    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v3, :cond_ec

    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v6

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    mul-double/2addr v6, v8

    .line 810
    :goto_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    if-eqz v3, :cond_f0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_f0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    .line 811
    :goto_65
    const/4 v8, 0x0

    .line 812
    move-object/from16 v0, p1

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v9, v10, :cond_8c

    move-object/from16 v0, p1

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v8

    .line 814
    if-eqz v8, :cond_104

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v8

    .line 815
    :goto_86
    if-ltz v8, :cond_106

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v8

    .line 817
    :cond_8c
    :goto_8c
    const/4 v9, 0x0

    :goto_8d
    const/16 v10, 0xa

    if-ge v9, v10, :cond_1b

    .line 818
    if-eqz v3, :cond_108

    array-length v10, v3

    if-ge v9, v10, :cond_108

    const/4 v10, 0x0

    aget v11, v3, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    move-wide v12, v10

    .line 819
    :goto_a2
    if-eqz v8, :cond_10c

    array-length v10, v8

    if-ge v9, v10, :cond_10c

    const/4 v10, 0x0

    aget v11, v8, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v10, v10, v16

    .line 820
    :goto_b3
    const/16 v16, 0x0

    aget-object v16, v2, v16

    mul-double v18, v14, v4

    mul-double v18, v18, v12

    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    mul-double v20, v20, v10

    add-double v18, v18, v20

    aput-wide v18, v16, v9

    .line 821
    const/16 v16, 0x1

    aget-object v16, v2, v16

    mul-double v18, v6, v4

    mul-double v12, v12, v18

    const-wide v18, 0x3fb3333333333333L    # 0.075

    mul-double v10, v10, v18

    add-double/2addr v10, v12

    aput-wide v10, v16, v9

    .line 817
    add-int/lit8 v9, v9, 0x1

    goto :goto_8d

    .line 807
    :cond_d8
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    goto/16 :goto_32

    .line 809
    :cond_ec
    const-wide/16 v6, 0x0

    goto/16 :goto_53

    .line 810
    :cond_f0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    if-eqz v3, :cond_fc

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    goto/16 :goto_65

    :cond_fc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    goto/16 :goto_65

    .line 814
    :cond_104
    const/4 v8, -0x1

    goto :goto_86

    .line 815
    :cond_106
    const/4 v8, 0x0

    goto :goto_8c

    .line 818
    :cond_108
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v12, v10

    goto :goto_a2

    .line 819
    :cond_10c
    const-wide/16 v10, 0x0

    goto :goto_b3
.end method

.method private rebase(J)V
    .registers 6

    .prologue
    .line 860
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 861
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_13

    .line 862
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 863
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 865
    :cond_13
    return-void
.end method

.method public static rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D
    .registers 8

    .prologue
    .line 1296
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
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 894
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v0

    .line 895
    :goto_b
    const/4 v2, 0x0

    :goto_c
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v3, v3

    if-ge v2, v3, :cond_1e

    .line 896
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    invoke-direct {p0, v2, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fAt(IJ[[D)D

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 895
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    move-object v0, v1

    .line 894
    goto :goto_b

    .line 898
    :cond_1e
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    .line 899
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 900
    return-void
.end method

.method public static stationPhases(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)[Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Z

    .line 191
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    move-object v0, v3

    .line 198
    :goto_14
    return-object v0

    :cond_15
    move v1, v2

    .line 194
    :goto_16
    array-length v0, v3

    if-ge v1, v0, :cond_4e

    .line 195
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

    .line 194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_4c
    move v0, v2

    .line 195
    goto :goto_46

    :cond_4e
    move-object v0, v3

    .line 198
    goto :goto_14
.end method

.method private traceRest(J)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 970
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    const/4 v1, 0x7

    new-array v1, v1, [F

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v6

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    double-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getFatigueShare()D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x5

    .line 971
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 970
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    return-void
.end method


# virtual methods
.method public canResume()Z
    .registers 3

    .prologue
    .line 378
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
    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_7

    .line 366
    :goto_6
    return-void

    .line 355
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 356
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_2c

    .line 357
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 358
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 365
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

    .line 360
    :cond_2c
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 361
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_13

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    goto :goto_13
.end method

.method public cycleLoad(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)D
    .registers 12

    .prologue
    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    .line 959
    if-eqz p1, :cond_b

    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_c

    .line 966
    :cond_b
    :goto_b
    return-wide v2

    .line 962
    :cond_c
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_46

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-ne p1, v0, :cond_46

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    .line 963
    :goto_18
    iget v4, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 964
    iget v6, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    .line 965
    iget-boolean v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    if-eqz v8, :cond_38

    iget v8, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v8, :cond_38

    iget v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v2

    iget-wide v8, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    mul-double/2addr v2, v8

    mul-double/2addr v2, v6

    .line 966
    :cond_38
    iget v8, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v8

    mul-double/2addr v8, v4

    add-double/2addr v2, v8

    mul-double/2addr v0, v2

    add-double v2, v4, v6

    div-double v2, v0, v2

    goto :goto_b

    .line 962
    :cond_46
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double/2addr v0, v4

    goto :goto_18
.end method

.method public getCapHits()I
    .registers 2

    .prologue
    .line 1381
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    return v0
.end method

.method public getCardioLoad(J)D
    .registers 10

    .prologue
    .line 925
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    .line 926
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

    .line 927
    :cond_18
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 929
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

.method public getChannelLoad(J)[D
    .registers 14

    .prologue
    const-wide/16 v4, 0x0

    .line 912
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->rates(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[[D

    move-result-object v0

    .line 913
    :goto_c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chF:[D

    array-length v1, v1

    new-array v6, v1, [D

    .line 914
    const/4 v1, 0x0

    :goto_12
    array-length v2, v6

    if-ge v1, v2, :cond_2b

    .line 915
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_29

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->fAt(IJ[[D)D

    move-result-wide v2

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->fMax:D

    div-double/2addr v2, v8

    :goto_22
    aput-wide v2, v6, v1

    .line 914
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 912
    :cond_27
    const/4 v0, 0x0

    goto :goto_c

    :cond_29
    move-wide v2, v4

    .line 915
    goto :goto_22

    .line 917
    :cond_2b
    return-object v6
.end method

.method public getCorridorExt()I
    .registers 2

    .prologue
    .line 1385
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    return v0
.end method

.method public getCorridorShare()D
    .registers 5

    .prologue
    .line 1393
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
    .line 1246
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
    .line 1365
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    return-object v0
.end method

.method public getDoseExt()I
    .registers 2

    .prologue
    .line 1389
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    return v0
.end method

.method public getDoseRatio()D
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 1397
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
    .line 1344
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    return-wide v0
.end method

.method public getEndMs()J
    .registers 3

    .prologue
    .line 1426
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    return-wide v0
.end method

.method public getExercise()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 763
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_17

    .line 767
    :cond_16
    :goto_16
    return-object v0

    .line 766
    :cond_17
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-object v1, v1, v2

    .line 767
    if-eqz v1, :cond_16

    array-length v2, v1

    if-eqz v2, :cond_16

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v0, v1, v0

    goto :goto_16
.end method

.method public getFatigueShare()D
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 1229
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
    .line 1242
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    return-wide v0
.end method

.method public getHr(J)I
    .registers 8

    .prologue
    .line 1369
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
    .line 1377
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
    .line 1197
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrEndedSets:I

    return v0
.end method

.method public getHrMaxSeen()I
    .registers 2

    .prologue
    .line 1373
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    return v0
.end method

.method public getLiveRho()D
    .registers 3

    .prologue
    .line 889
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    return-wide v0
.end method

.method public getLiveZones()[I
    .registers 2

    .prologue
    .line 885
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
    .line 1434
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->log:Ljava/util/List;

    return-object v0
.end method

.method public getManualStops()I
    .registers 2

    .prologue
    .line 309
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    return v0
.end method

.method public getNextExercise()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 779
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_14

    .line 793
    :cond_13
    :goto_13
    return-object v0

    .line 782
    :cond_14
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v6

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    sub-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 783
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v1

    .line 784
    invoke-direct {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v4

    .line 785
    if-ltz v1, :cond_40

    if-ge v4, v1, :cond_3d

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    int-to-double v6, v1

    sub-double v2, v6, v2

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpg-double v1, v2, v6

    if-gez v1, :cond_40

    .line 786
    :cond_3d
    const-string v0, ""

    goto :goto_13

    .line 788
    :cond_40
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-eq v4, v1, :cond_6c

    .line 789
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v4, v1, :cond_13

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v1, v1, v4

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v1, v1, v4

    array-length v1, v1

    if-lez v1, :cond_13

    .line 790
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, v4

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_13

    .line 792
    :cond_6c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    aget-object v1, v1, v2

    .line 793
    if-eqz v1, :cond_13

    array-length v2, v1

    if-eqz v2, :cond_13

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v0, v1, v0

    goto :goto_13
.end method

.method public getOffExtension()I
    .registers 3

    .prologue
    .line 501
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->corridorExt:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseExt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPeakLoad(J)D
    .registers 12

    .prologue
    .line 947
    const-wide/16 v2, 0x0

    .line 948
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getChannelLoad(J)[D

    move-result-object v1

    array-length v4, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v4, :cond_13

    aget-wide v6, v1, v0

    .line 949
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 951
    :cond_13
    return-wide v2
.end method

.method public getPhaseIndex()I
    .registers 2

    .prologue
    .line 1340
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    return v0
.end method

.method public getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    return-object v0
.end method

.method public getReentry()D
    .registers 3

    .prologue
    .line 1410
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    return-wide v0
.end method

.method public getRemainingS()D
    .registers 7

    .prologue
    .line 1348
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
    .line 1237
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
    .line 1233
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restCount:I

    return v0
.end method

.method public getRestHrLimit()I
    .registers 4

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v0, v0, -0xf

    .line 1203
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    if-lez v1, :cond_20

    .line 1204
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1206
    :cond_20
    return v0
.end method

.method public getRestLeftS(J)I
    .registers 12

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_8

    .line 1159
    const/4 v0, 0x0

    .line 1161
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
    .line 1165
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restMinS:I

    return v0
.end method

.method public getRestS(J)D
    .registers 8

    .prologue
    .line 1169
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
    .line 1010
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    add-double/2addr v2, v0

    .line 1011
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_45

    .line 1013
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->countFrom:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 1014
    :goto_2b
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

    .line 1016
    :goto_41
    return-wide v0

    .line 1013
    :cond_42
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    goto :goto_2b

    :cond_45
    move-wide v0, v2

    goto :goto_41
.end method

.method public getSetImpulses()[I
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1031
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 1032
    :goto_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSetTargetS()D

    move-result-wide v4

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1033
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

    .line 1034
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v1, v3

    aput v4, v1, v2

    return-object v1

    .line 1031
    :cond_3e
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    goto :goto_13

    :cond_41
    move v0, v3

    .line 1033
    goto :goto_2d
.end method

.method public getSetLeftS()D
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 798
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
    .line 1021
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 1022
    :goto_11
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1023
    int-to-double v4, v2

    mul-double/2addr v4, v0

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_26

    const/4 v3, 0x1

    if-le v2, v3, :cond_26

    .line 1024
    add-int/lit8 v2, v2, -0x1

    .line 1026
    :cond_26
    int-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0

    .line 1021
    :cond_29
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    goto :goto_11
.end method

.method public getStartMs()J
    .registers 3

    .prologue
    .line 1422
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    return-wide v0
.end method

.method public getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;
    .registers 2

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    return-object v0
.end method

.method public getStationIndex()I
    .registers 2

    .prologue
    .line 1215
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    return v0
.end method

.method public getStationS()D
    .registers 11

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 1220
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

    .line 1221
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

    .line 1220
    return-wide v0

    .line 1221
    :cond_36
    const-wide/16 v0, 0x0

    goto :goto_34
.end method

.method public getStationsDone()I
    .registers 2

    .prologue
    .line 1225
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationsDone:I

    return v0
.end method

.method public getSystemLoad(J)D
    .registers 8

    .prologue
    .line 937
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPeakLoad(J)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCardioLoad(J)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalPauseS()D
    .registers 3

    .prologue
    .line 1418
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
    .line 991
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    return-object v0
.end method

.method public getUserScaleMax()D
    .registers 3

    .prologue
    .line 1414
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    return-wide v0
.end method

.method public isCardioLimiting(J)Z
    .registers 8

    .prologue
    .line 942
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
    .line 1402
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doseStopped:Z

    return v0
.end method

.method public isDoublePulseAvailable()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-nez v0, :cond_9

    move v0, v2

    .line 438
    :goto_8
    return v0

    .line 431
    :cond_9
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    move v1, v0

    :goto_c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    .line 432
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 433
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v0, :cond_26

    .line 434
    const/4 v0, 0x1

    goto :goto_8

    .line 431
    :cond_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_3c
    move v0, v2

    .line 438
    goto :goto_8
.end method

.method public isDoublePulseOn()Z
    .registers 2

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    return v0
.end method

.method public isRaiseLocked()Z
    .registers 2

    .prologue
    .line 1406
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->raiseLocked:Z

    return v0
.end method

.method public isRestBeforeCooldown()Z
    .registers 3

    .prologue
    .line 1210
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

    .line 1174
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_13

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v1, v2, :cond_14

    .line 1185
    :cond_13
    :goto_13
    return v0

    .line 1177
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v2

    .line 1178
    if-lez v2, :cond_13

    .line 1181
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v1, v1, -0xf

    .line 1182
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v3

    if-lez v3, :cond_3a

    .line 1183
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1185
    :cond_3a
    if-le v2, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method

.method public isResumeWaiting()Z
    .registers 3

    .prologue
    .line 1430
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
    .line 202
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

.method public next(J)Z
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1043
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 1044
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v3, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v3, :cond_1c

    :cond_1a
    move v0, v2

    .line 1078
    :goto_1b
    return v0

    .line 1047
    :cond_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v3, :cond_7e

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1048
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 1049
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v0, v3, :cond_66

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phaseIndex:I

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhase:I

    if-ne v0, v3, :cond_66

    .line 1050
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->durationMs()I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    sub-long v10, p1, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 1051
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->counted:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1053
    :cond_66
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastSetS:D

    .line 1054
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationS:D

    .line 1055
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 1056
    const-string v0, "next \u2192 set ended early"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 1057
    invoke-direct {p0, p1, p2, v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRest(JZ)V

    move v0, v1

    .line 1058
    goto :goto_1b

    .line 1060
    :cond_7e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v3, :cond_b3

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->restBeforeCooldown:Z

    if-nez v0, :cond_b3

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isStationPhase(I)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 1061
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationIndex:I

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next \u2192 exercise "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    move v0, v1

    .line 1063
    goto/16 :goto_1b

    .line 1065
    :cond_b3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v3, :cond_10e

    .line 1066
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    add-int/lit8 v3, v0, 0x1

    .line 1067
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_e2

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 1068
    const-string v0, "next \u2192 recovery"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 1069
    invoke-direct {p0, p1, p2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    move v0, v1

    .line 1070
    goto/16 :goto_1b

    .line 1072
    :cond_e2
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_10e

    .line 1073
    invoke-direct {p0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next \u2192 phase "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    move v0, v1

    .line 1075
    goto/16 :goto_1b

    :cond_10e
    move v0, v2

    .line 1078
    goto/16 :goto_1b
.end method

.method public onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 528
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1c

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    const-wide/16 v4, 0x320

    sub-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1c

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->go(J)V

    .line 530
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 542
    :cond_1b
    :goto_1b
    return-object v0

    .line 532
    :cond_1c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    .line 535
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

    .line 536
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto :goto_1b

    .line 538
    :cond_3c
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 539
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_1b

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    goto :goto_1b
.end method

.method public onHr(JI)V
    .registers 9

    .prologue
    .line 514
    const/16 v0, 0x1e

    if-lt p3, v0, :cond_8

    const/16 v0, 0xdc

    if-le p3, v0, :cond_9

    .line 522
    :cond_8
    :goto_8
    return-void

    .line 517
    :cond_9
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    .line 518
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    .line 519
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMaxSeen:I

    .line 520
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrSum:D

    int-to-double v2, p3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrSum:D

    .line 521
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrCount:I

    goto :goto_8
.end method

.method public phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;
    .registers 3

    .prologue
    .line 1336
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

    .line 1352
    .line 1353
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_5
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-ge v1, v0, :cond_1b

    .line 1354
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v6, v0

    add-double/2addr v2, v6

    .line 1353
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1356
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

    .line 1360
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1361
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

.method public refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 8

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v1, :cond_d

    .line 486
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 496
    :cond_c
    :goto_c
    return-object v0

    .line 488
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 489
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->stepIndex:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->build(Lcom/isaigu/gymapp/ai/AutoModel$Phase;IJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->startMs:J

    .line 491
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 492
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_c

    .line 493
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chCmd:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 494
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->chFMs:J

    goto :goto_c
.end method

.method public requestGo(JJ)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 275
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v2, :cond_14

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v1

    if-gtz v1, :cond_13

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 283
    :cond_13
    :goto_13
    return v0

    .line 279
    :cond_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 282
    :cond_1a
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    .line 283
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public resume(J)V
    .registers 12

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 382
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v0

    if-nez v0, :cond_9

    .line 399
    :goto_8
    return-void

    .line 385
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 386
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v6, v0, v2

    .line 387
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    add-double/2addr v0, v6

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->totalPauseS:D

    .line 388
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    invoke-direct {p0, v2, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedOf(Lcom/isaigu/gymapp/ai/AutoEngine$State;D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->imposedS:D

    .line 390
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

    .line 391
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_5a

    .line 392
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    .line 394
    :cond_5a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 396
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 397
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

    .line 398
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto/16 :goto_8

    .line 390
    :cond_92
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->reentry:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_45
.end method

.method public rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D
    .registers 14

    .prologue
    .line 1300
    if-nez p1, :cond_5

    .line 1301
    const-wide/16 v0, 0x0

    .line 1305
    :cond_4
    :goto_4
    return-wide v0

    .line 1303
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v2

    .line 1304
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->env:D

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    mul-double/2addr v0, p2

    iget-wide v4, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    mul-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1305
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

.method public setDoublePulse(ZJ)V
    .registers 6

    .prologue
    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-nez v0, :cond_7

    .line 452
    :goto_6
    return-void

    .line 449
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 450
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->doublePulse:Z

    .line 451
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
    .line 873
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

    .line 874
    :cond_17
    const/4 v0, 0x1

    .line 875
    :goto_18
    if-eqz v0, :cond_29

    .line 881
    :goto_1a
    return-void

    .line 873
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveZones:[I

    .line 874
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_27
    const/4 v0, 0x0

    goto :goto_18

    .line 878
    :cond_29
    invoke-direct {p0, p4, p5}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 879
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->liveRho:D

    .line 880
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
    .line 184
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases:[Z

    .line 186
    return-void
.end method

.method public setStations([Z)V
    .registers 3

    .prologue
    .line 179
    if-eqz p1, :cond_b

    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_8
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stationPhases:[Z

    .line 180
    return-void

    .line 179
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setUserScale(D)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 506
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

    .line 507
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->rebase(J)V

    .line 509
    :cond_1e
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    .line 510
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScale:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userScaleMax:D

    .line 511
    return-void
.end method

.method public skipToCooldown(J)V
    .registers 6

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v0

    .line 404
    if-gez v0, :cond_10

    .line 405
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 407
    :cond_10
    if-ltz v0, :cond_16

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    if-gt v0, v1, :cond_17

    .line 415
    :cond_16
    :goto_16
    return-void

    .line 410
    :cond_17
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->jumpTo(IJ)V

    .line 411
    const-string v0, "skip \u2192 cool-down"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_16

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto :goto_16
.end method

.method public start(J)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 208
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    .line 209
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 210
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 211
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 212
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 214
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

    .line 215
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

    .line 214
    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 217
    return-void
.end method

.method public startAt(JJ)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 221
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->startMs:J

    .line 222
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 223
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    .line 224
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->stepIndex:I

    .line 225
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 226
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

    .line 227
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

    .line 226
    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 228
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    .line 229
    return-void
.end method

.method public stop(J)V
    .registers 6

    .prologue
    .line 343
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_11

    .line 344
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 345
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    .line 346
    const-string v0, "stop"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 348
    :cond_11
    return-void
.end method

.method public stopPress(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 291
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_10

    :cond_e
    move v0, v1

    .line 305
    :goto_f
    return v0

    .line 294
    :cond_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 295
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->cooldownIndex()I

    move-result v3

    .line 296
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_36

    move v2, v1

    .line 297
    :goto_21
    if-ltz v3, :cond_2b

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->READY:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v4, :cond_38

    .line 298
    :cond_2b
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->stop(J)V

    move v0, v1

    .line 300
    goto :goto_f

    :cond_36
    move v2, v0

    .line 296
    goto :goto_21

    .line 302
    :cond_38
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->manualStops:I

    .line 303
    const-string v1, "stop pressed \u2192 recovery"

    invoke-direct {p0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 304
    invoke-direct {p0, p1, p2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterRecoveryRest(JI)V

    goto :goto_f
.end method

.method public tick(J)V
    .registers 16

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 546
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v3, :cond_16

    .line 547
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 548
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->goMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_15

    .line 549
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->go(J)V

    .line 610
    :cond_15
    :goto_15
    return-void

    .line 553
    :cond_16
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    sub-long v6, p1, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 554
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->lastTickMs:J

    .line 555
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-lez v1, :cond_85

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrMs:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x2710

    cmp-long v1, v6, v8

    if-gtz v1, :cond_85

    move v1, v2

    .line 556
    :goto_38
    if-eqz v1, :cond_58

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_58

    .line 557
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrKnownS:D

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrKnownS:D

    .line 558
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v3, v6, :cond_58

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridor()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 559
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridorS:D

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->inCorridorS:D

    .line 562
    :cond_58
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_b1

    .line 563
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

    .line 564
    if-eqz v1, :cond_ad

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    if-gt v1, v0, :cond_ad

    .line 565
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_8a

    .line 566
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    goto :goto_15

    :cond_85
    move v1, v0

    .line 555
    goto :goto_38

    .line 563
    :cond_87
    const/16 v0, 0x3e7

    goto :goto_72

    .line 567
    :cond_8a
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v4, 0x4e20

    cmp-long v0, v0, v4

    if-ltz v0, :cond_15

    .line 568
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->resumeNeedsConfirm:Z

    .line 569
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v0

    if-nez v0, :cond_15

    .line 570
    const-wide/16 v0, 0xbb8

    add-long v4, p1, v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->countdown(JJLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    goto/16 :goto_15

    .line 574
    :cond_ad
    iput-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    goto/16 :goto_15

    .line 578
    :cond_b1
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v3, v6, :cond_15

    .line 582
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v3, v6, :cond_13f

    if-eqz v1, :cond_13f

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hr:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    if-lt v1, v3, :cond_13f

    .line 583
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 584
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 585
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 586
    iput-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->hrOkSinceMs:J

    .line 587
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->capHits:I

    .line 588
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->trace:Ljava/util/List;

    const/4 v3, 0x7

    new-array v3, v3, [F

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSessionS(J)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    double-to-float v4, v4

    aput v4, v3, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput v4, v3, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getFatigueShare()D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v2

    const/4 v2, 0x4

    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseIndex:I

    int-to-float v4, v4

    aput v4, v3, v2

    const/4 v2, 0x5

    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    aput v0, v3, v2

    const/4 v0, 0x6

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v3, v0

    .line 588
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
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

    .line 593
    :cond_13f
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    .line 594
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_15c

    .line 595
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 596
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->endMs:J

    .line 597
    const-string v0, "done"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    goto/16 :goto_15

    .line 600
    :cond_15c
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->elapsedS:D

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseAt(D)I

    move-result v1

    .line 603
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

    .line 604
    :cond_17e
    invoke-direct {p0, v1, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->enterPhase(IJ)V

    .line 607
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

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->nextCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    goto/16 :goto_15
.end method

.method public userParams(IIIIJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 12

    .prologue
    const/4 v1, -0x1

    .line 460
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 461
    if-eqz v2, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-nez v0, :cond_14

    .line 462
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 479
    :goto_13
    return-object v0

    .line 464
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->current:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 465
    if-lez p1, :cond_2a

    .line 466
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hz:Z

    if-eqz v0, :cond_a2

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-static {v0, v4, p1}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowHz(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_28
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userHz:I

    .line 468
    :cond_2a
    if-lez p2, :cond_3c

    .line 469
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->on:Z

    if-eqz v0, :cond_a4

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-static {v0, v4, p2}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowOn(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_3a
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOn:I

    .line 471
    :cond_3c
    if-lez p3, :cond_4e

    .line 472
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->off:Z

    if-eqz v0, :cond_a6

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v0, v4, p3}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowOff(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v0

    :goto_4c
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userOff:I

    .line 474
    :cond_4e
    if-lez p4, :cond_60

    .line 475
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pw:Z

    if-eqz v0, :cond_5e

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    invoke-static {v0, v1, p4}, Lcom/isaigu/gymapp/ai/AutoLimits;->windowPw(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I

    move-result v1

    :cond_5e
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->userPw:I

    .line 477
    :cond_60
    invoke-virtual {p0, p5, p6}, Lcom/isaigu/gymapp/ai/AutoEngine;->refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 478
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

    .line 466
    goto :goto_28

    :cond_a4
    move v0, v1

    .line 469
    goto :goto_3a

    :cond_a6
    move v0, v1

    .line 472
    goto :goto_4c
.end method

.method public userPause(J)V
    .registers 6

    .prologue
    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_14

    .line 370
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoEngine;->settle(J)V

    .line 371
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->state:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    .line 372
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AutoEngine;->pauseStartMs:J

    .line 373
    const-string v0, "pause"

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->log(JLjava/lang/String;)V

    .line 375
    :cond_14
    return-void
.end method
