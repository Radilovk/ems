.class public final Lcom/isaigu/gymapp/ai/MapDynamics;
.super Ljava/lang/Object;
.source "MapDynamics.java"


# static fields
.field public static final REST_MAX_S:I = 0x78


# instance fields
.field private final age:I

.field public ai:Z

.field private end:Lcom/isaigu/gymapp/ai/Endurance;

.field private final fMax:D

.field private final fRec:D

.field private final fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

.field private final fk:[D

.field private fresh:Z

.field private final hrCap:I

.field private idleS:D

.field private idx:I

.field private lastHz:I

.field private lastSent:Lcom/isaigu/gymapp/ai/AutoModel$Step;

.field private list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field private mus:[I

.field private prev:I

.field private prev2:I

.field private final sessions:I

.field private setN:I

.field private final tau:D

.field private final used:[I

.field private workS:D


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/ai/AiModel$Fitness;III)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v1, 0xa

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    .line 39
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    .line 40
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev2:I

    .line 41
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    .line 43
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 44
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->lastHz:I

    .line 64
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 65
    if-eqz p1, :cond_48

    :goto_1d
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v1

    .line 66
    aget-wide v2, v1, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    .line 67
    const/4 v2, 0x1

    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fRec:D

    .line 68
    const/4 v2, 0x2

    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    .line 69
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->sessions:I

    .line 70
    iput p3, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->age:I

    .line 71
    if-lez p4, :cond_45

    int-to-double v0, p4

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    :cond_45
    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->hrCap:I

    .line 72
    return-void

    .line 65
    :cond_48
    sget-object p1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_1d
.end method

.method private indexOf(I)I
    .registers 4

    .prologue
    .line 230
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 231
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->key(Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 235
    :goto_14
    return v0

    .line 230
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_18
    const/4 v0, -0x1

    goto :goto_14
.end method

.method private static key(Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)I
    .registers 7

    .prologue
    const/4 v1, 0x7

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 216
    new-array v3, v1, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoDynamics;->STRENGTH_PAUSE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoDynamics;->PURE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoDynamics;->VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoDynamics;->LIGHT_VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v5, v3, v4

    .line 218
    if-eqz p0, :cond_31

    const-string v4, "base"

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_31
    move v0, v2

    .line 226
    :goto_32
    return v0

    .line 221
    :cond_33
    add-int/lit8 v0, v0, 0x1

    :cond_35
    array-length v2, v3

    if-ge v0, v2, :cond_3d

    .line 222
    aget-object v2, v3, v0

    if-ne v2, p0, :cond_33

    goto :goto_32

    :cond_3d
    move v0, v1

    .line 226
    goto :goto_32
.end method

.method private peak()D
    .registers 9

    .prologue
    .line 124
    const-wide/16 v2, 0x0

    .line 125
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    array-length v4, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v4, :cond_11

    aget-wide v6, v1, v0

    .line 126
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 128
    :cond_11
    return-wide v2
.end method


# virtual methods
.method public advance(DZZIIDD)V
    .registers 28

    .prologue
    .line 85
    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_7

    .line 107
    :cond_6
    return-void

    .line 88
    :cond_7
    if-nez p3, :cond_70

    .line 89
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->idleS:D

    add-double v2, v2, p1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->idleS:D

    .line 93
    :goto_13
    move-wide/from16 v0, p1

    neg-double v2, v0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    .line 94
    const-wide/16 v6, 0x0

    .line 95
    const-wide/16 v2, 0x0

    .line 96
    if-eqz p3, :cond_7b

    if-eqz p4, :cond_7b

    .line 97
    invoke-static/range {p5 .. p5}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v2

    mul-double v6, v2, p9

    .line 98
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    move-wide v4, v2

    .line 103
    :goto_30
    const/4 v2, 0x0

    :goto_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->mus:[I

    if-eqz v3, :cond_91

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->mus:[I

    array-length v3, v3

    if-ge v2, v3, :cond_91

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->mus:[I

    aget v8, v8, v2

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v8, v3

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v12

    .line 105
    :goto_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    aget-wide v12, v12, v2

    mul-double/2addr v12, v10

    mul-double/2addr v8, v4

    add-double/2addr v8, v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    mul-double/2addr v8, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v10

    mul-double/2addr v8, v14

    add-double/2addr v8, v12

    aput-wide v8, v3, v2

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 91
    :cond_70
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->workS:D

    add-double v2, v2, p1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->workS:D

    goto :goto_13

    .line 99
    :cond_7b
    if-eqz p3, :cond_94

    .line 100
    if-lez p6, :cond_8e

    invoke-static/range {p6 .. p6}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v2

    mul-double v2, v2, p7

    mul-double v2, v2, p9

    .line 101
    :goto_87
    const-wide v4, 0x3fb3333333333333L    # 0.075

    move-wide v6, v2

    goto :goto_30

    .line 100
    :cond_8e
    const-wide/16 v2, 0x0

    goto :goto_87

    .line 104
    :cond_91
    const-wide/16 v8, 0x0

    goto :goto_54

    :cond_94
    move-wide v4, v2

    goto :goto_30
.end method

.method public channelLoad()[D
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    array-length v0, v0

    new-array v1, v0, [D

    .line 117
    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 118
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    aget-wide v2, v2, v0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    div-double/2addr v2, v6

    :goto_18
    aput-wide v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1d
    move-wide v2, v4

    .line 118
    goto :goto_18

    .line 120
    :cond_1f
    return-object v1
.end method

.method public cycle(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 8

    .prologue
    .line 172
    if-nez p1, :cond_4

    .line 173
    const/4 v0, 0x0

    .line 183
    :goto_3
    return-object v0

    .line 175
    :cond_4
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    if-ltz v0, :cond_48

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-eqz v0, :cond_48

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v2, v0, v1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->ai:Z

    if-eqz v0, :cond_3f

    const-wide/16 v0, 0x0

    :goto_18
    invoke-static {p1, v2, v0, v1, p2}, Lcom/isaigu/gymapp/ai/AutoDynamics;->apply(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;DZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 177
    :goto_1c
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->ai:Z

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 178
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->safety(Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    .line 180
    :cond_29
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->lastHz:I

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoDynamics;->ramp(IIIZ)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    .line 182
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->lastHz:I

    goto :goto_3

    .line 176
    :cond_3f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapDynamics;->fatigue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoDynamics;->glide(D)D

    move-result-wide v0

    goto :goto_18

    :cond_48
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    goto :goto_1c
.end method

.method public fatigue()D
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 111
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_f

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/MapDynamics;->peak()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    div-double/2addr v0, v2

    :cond_f
    return-wide v0
.end method

.method public restS(I)I
    .registers 8

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/MapDynamics;->peak()D

    move-result-wide v0

    .line 210
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fRec:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_25

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fRec:D

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 211
    :goto_14
    int-to-double v2, p1

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 210
    :cond_25
    const-wide/16 v0, 0x0

    goto :goto_14
.end method

.method public safeHzCut()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->end:Lcom/isaigu/gymapp/ai/Endurance;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->end:Lcom/isaigu/gymapp/ai/Endurance;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Endurance;->cut()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method safety(Lcom/isaigu/gymapp/ai/AutoModel$Step;)V
    .registers 16

    .prologue
    const-wide/16 v12, 0x0

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->end:Lcom/isaigu/gymapp/ai/Endurance;

    if-nez v0, :cond_f

    .line 189
    new-instance v0, Lcom/isaigu/gymapp/ai/Endurance;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/Endurance;-><init>(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->end:Lcom/isaigu/gymapp/ai/Endurance;

    .line 191
    :cond_f
    iget-object v9, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->lastSent:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 192
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idleS:D

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_33

    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->end:Lcom/isaigu/gymapp/ai/Endurance;

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idleS:D

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/Endurance;->rest(D)V

    .line 194
    if-eqz v9, :cond_33

    .line 195
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->end:Lcom/isaigu/gymapp/ai/Endurance;

    iget v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iget v3, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v4, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v5, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iget-wide v6, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    iget v8, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    invoke-virtual/range {v1 .. v8}, Lcom/isaigu/gymapp/ai/Endurance;->restart(IIIIDI)V

    .line 198
    :cond_33
    if-eqz v9, :cond_4f

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->workS:D

    cmpl-double v0, v0, v12

    if-lez v0, :cond_4f

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->end:Lcom/isaigu/gymapp/ai/Endurance;

    iget v1, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iget v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v3, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v4, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iget-wide v5, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    iget v7, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->workS:D

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/isaigu/gymapp/ai/Endurance;->work(IIIIDIDZ)Z

    .line 201
    :cond_4f
    iput-wide v12, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->workS:D

    .line 202
    iput-wide v12, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idleS:D

    .line 203
    const/16 v0, 0x14

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->end:Lcom/isaigu/gymapp/ai/Endurance;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Endurance;->cut()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 204
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->lastSent:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 205
    return-void
.end method

.method public setMuscles([I)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->mus:[I

    .line 77
    return-void
.end method

.method public startPlain(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 165
    if-nez p2, :cond_20

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v0

    if-eqz v0, :cond_20

    new-array v0, v3, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoDynamics;->baseOf(Lcom/isaigu/gymapp/ai/AutoModel$Step;)Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_14
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-eqz v0, :cond_22

    move v0, v1

    :goto_1b
    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 167
    iput-boolean v3, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    .line 168
    return-void

    .line 165
    :cond_20
    const/4 v0, 0x0

    goto :goto_14

    .line 166
    :cond_22
    const/4 v0, -0x1

    goto :goto_1b
.end method

.method public startSet(Lcom/isaigu/gymapp/ai/AutoModel$Step;IZDI)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 136
    if-eqz p3, :cond_14

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 137
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    .line 138
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-nez v0, :cond_1d

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 140
    const-string v0, ""

    .line 160
    :goto_13
    return-object v0

    .line 136
    :cond_14
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->sessions:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->age:I

    invoke-static {p1, p2, v0, v2}, Lcom/isaigu/gymapp/ai/AutoDynamics;->forMap(Lcom/isaigu/gymapp/ai/AutoModel$Step;III)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v0

    goto :goto_6

    .line 142
    :cond_1d
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;-><init>()V

    .line 143
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapDynamics;->fatigue()D

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double v4, v6, v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->fresh:D

    .line 144
    const-wide/16 v4, 0x0

    invoke-static {v6, v7, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->progress:D

    .line 145
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->hrCap:I

    if-lez v0, :cond_bd

    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->hrCap:I

    add-int/lit8 v0, v0, -0x5

    if-lt p6, v0, :cond_bd

    move v0, v1

    :goto_45
    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrHigh:Z

    .line 146
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->sessions:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->sessions:I

    .line 147
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->setN:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->set:I

    .line 148
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    .line 150
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->indexOf(I)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev:I

    .line 151
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev2:I

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->indexOf(I)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev2:I

    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoDynamics;->pick([Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 153
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev2:I

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->key(Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->key(Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)I

    move-result v0

    .line 156
    if-ltz v0, :cond_9d

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    array-length v1, v1

    if-ge v0, v1, :cond_9d

    .line 157
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 159
    :cond_9d
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->setN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->setN:I

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->id:Ljava/lang/String;

    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    const-string v0, "\u041a\u0430\u043a\u0442\u043e \u0435 \u043d\u0430\u0440\u0438\u0441\u0443\u0432\u0430\u043d"

    const-string v1, "As drawn"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 145
    :cond_bd
    const/4 v0, 0x0

    goto :goto_45

    .line 160
    :cond_bf
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13
.end method
