.class public final Lcom/isaigu/gymapp/ai/MapDynamics;
.super Ljava/lang/Object;
.source "MapDynamics.java"


# static fields
.field public static final REST_MAX_S:I = 0x78


# instance fields
.field private final age:I

.field public ai:Z

.field private fAtStep:D

.field private final fMax:D

.field private final fRec:D

.field private final fk:[D

.field private fresh:Z

.field private final hrCap:I

.field private idleS:D

.field private idx:I

.field private lastHz:I

.field private list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field private mus:[I

.field private prev:I

.field private prev2:I

.field private safeHzCut:I

.field private final sessions:I

.field private setN:I

.field private final tau:D

.field private final used:[I


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/ai/AiModel$Fitness;III)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v1, 0xa

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    .line 38
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    .line 39
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev2:I

    .line 40
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    .line 42
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 43
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->lastHz:I

    .line 62
    if-eqz p1, :cond_46

    :goto_1b
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v1

    .line 63
    aget-wide v2, v1, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    .line 64
    const/4 v2, 0x1

    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fRec:D

    .line 65
    const/4 v2, 0x2

    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    .line 66
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->sessions:I

    .line 67
    iput p3, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->age:I

    .line 68
    if-lez p4, :cond_43

    int-to-double v0, p4

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    :cond_43
    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->hrCap:I

    .line 69
    return-void

    .line 62
    :cond_46
    sget-object p1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_1b
.end method

.method private indexOf(I)I
    .registers 4

    .prologue
    .line 223
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 224
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->key(Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 228
    :goto_14
    return v0

    .line 223
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
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

    .line 209
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

    .line 211
    if-eqz p0, :cond_31

    const-string v4, "base"

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_31
    move v0, v2

    .line 219
    :goto_32
    return v0

    .line 214
    :cond_33
    add-int/lit8 v0, v0, 0x1

    :cond_35
    array-length v2, v3

    if-ge v0, v2, :cond_3d

    .line 215
    aget-object v2, v3, v0

    if-ne v2, p0, :cond_33

    goto :goto_32

    :cond_3d
    move v0, v1

    .line 219
    goto :goto_32
.end method

.method private peak()D
    .registers 9

    .prologue
    .line 119
    const-wide/16 v2, 0x0

    .line 120
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    array-length v4, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v4, :cond_11

    aget-wide v6, v1, v0

    .line 121
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 123
    :cond_11
    return-wide v2
.end method


# virtual methods
.method public advance(DZZIIDD)V
    .registers 28

    .prologue
    .line 82
    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_7

    .line 102
    :cond_6
    return-void

    .line 85
    :cond_7
    if-nez p3, :cond_13

    .line 86
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->idleS:D

    add-double v2, v2, p1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->idleS:D

    .line 88
    :cond_13
    move-wide/from16 v0, p1

    neg-double v2, v0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    .line 89
    const-wide/16 v6, 0x0

    .line 90
    const-wide/16 v2, 0x0

    .line 91
    if-eqz p3, :cond_70

    if-eqz p4, :cond_70

    .line 92
    invoke-static/range {p5 .. p5}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v2

    mul-double v6, v2, p9

    .line 93
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    move-wide v4, v2

    .line 98
    :goto_30
    const/4 v2, 0x0

    :goto_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->mus:[I

    if-eqz v3, :cond_86

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->mus:[I

    array-length v3, v3

    if-ge v2, v3, :cond_86

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/MapDynamics;->mus:[I

    aget v8, v8, v2

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v8, v3

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v12

    .line 100
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

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 94
    :cond_70
    if-eqz p3, :cond_89

    .line 95
    if-lez p6, :cond_83

    invoke-static/range {p6 .. p6}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v2

    mul-double v2, v2, p7

    mul-double v2, v2, p9

    .line 96
    :goto_7c
    const-wide v4, 0x3fb3333333333333L    # 0.075

    move-wide v6, v2

    goto :goto_30

    .line 95
    :cond_83
    const-wide/16 v2, 0x0

    goto :goto_7c

    .line 99
    :cond_86
    const-wide/16 v8, 0x0

    goto :goto_54

    :cond_89
    move-wide v4, v2

    goto :goto_30
.end method

.method public channelLoad()[D
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 111
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    array-length v0, v0

    new-array v1, v0, [D

    .line 112
    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 113
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fk:[D

    aget-wide v2, v2, v0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    div-double/2addr v2, v6

    :goto_18
    aput-wide v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1d
    move-wide v2, v4

    .line 113
    goto :goto_18

    .line 115
    :cond_1f
    return-object v1
.end method

.method public cycle(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 8

    .prologue
    .line 167
    if-nez p1, :cond_4

    .line 168
    const/4 v0, 0x0

    .line 178
    :goto_3
    return-object v0

    .line 170
    :cond_4
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    if-ltz v0, :cond_48

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-eqz v0, :cond_48

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v2, v0, v1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->ai:Z

    if-eqz v0, :cond_3f

    const-wide/16 v0, 0x0

    :goto_18
    invoke-static {p1, v2, v0, v1, p2}, Lcom/isaigu/gymapp/ai/AutoDynamics;->apply(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;DZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 172
    :goto_1c
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->ai:Z

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 173
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->safety(Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    .line 175
    :cond_29
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->lastHz:I

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoDynamics;->ramp(IIIZ)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    .line 177
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->lastHz:I

    goto :goto_3

    .line 171
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

    .line 106
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
    .line 202
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/MapDynamics;->peak()D

    move-result-wide v0

    .line 203
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fRec:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_25

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fRec:D

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 204
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

    .line 203
    :cond_25
    const-wide/16 v0, 0x0

    goto :goto_14
.end method

.method public safeHzCut()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->safeHzCut:I

    return v0
.end method

.method safety(Lcom/isaigu/gymapp/ai/AutoModel$Step;)V
    .registers 16

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapDynamics;->fatigue()D

    move-result-wide v8

    .line 184
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9b

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fRec:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    div-double/2addr v0, v2

    .line 185
    :goto_11
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idleS:D

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4f

    iget v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->safeHzCut:I

    if-lez v2, :cond_4f

    .line 186
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v0

    const-wide v10, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-wide v12, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fAtStep:D

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    sub-double v0, v12, v0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    div-double v0, v6, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 187
    iget v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->safeHzCut:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->safeHzCut:I

    .line 189
    :cond_4f
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idleS:D

    .line 190
    const/16 v0, 0x14

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->safeHzCut:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 191
    const/4 v1, 0x1

    iget v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x1

    iget v3, p1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iget-wide v4, p1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/SafeLimits;->peak(IIIIDD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_a2

    const/4 v1, 0x1

    .line 192
    :goto_7d
    const-wide v2, 0x3feb333333333333L    # 0.85

    cmpl-double v2, v8, v2

    if-ltz v2, :cond_98

    if-nez v1, :cond_98

    add-int/lit8 v1, v0, -0xa

    const/16 v2, 0x14

    if-lt v1, v2, :cond_98

    .line 193
    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->safeHzCut:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->safeHzCut:I

    .line 194
    iput-wide v8, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fAtStep:D

    .line 195
    add-int/lit8 v0, v0, -0xa

    .line 197
    :cond_98
    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 198
    return-void

    .line 184
    :cond_9b
    const-wide v0, 0x3fd51eb851eb851fL    # 0.33

    goto/16 :goto_11

    .line 191
    :cond_a2
    const/4 v1, 0x0

    goto :goto_7d
.end method

.method public setMuscles([I)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->mus:[I

    .line 74
    return-void
.end method

.method public startPlain(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 160
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

    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-eqz v0, :cond_22

    move v0, v1

    :goto_1b
    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 162
    iput-boolean v3, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    .line 163
    return-void

    .line 160
    :cond_20
    const/4 v0, 0x0

    goto :goto_14

    .line 161
    :cond_22
    const/4 v0, -0x1

    goto :goto_1b
.end method

.method public startSet(Lcom/isaigu/gymapp/ai/AutoModel$Step;IZDI)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 131
    if-eqz p3, :cond_14

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 132
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-nez v0, :cond_1d

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 135
    const-string v0, ""

    .line 155
    :goto_13
    return-object v0

    .line 131
    :cond_14
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->sessions:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->age:I

    invoke-static {p1, p2, v0, v2}, Lcom/isaigu/gymapp/ai/AutoDynamics;->forMap(Lcom/isaigu/gymapp/ai/AutoModel$Step;III)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v0

    goto :goto_6

    .line 137
    :cond_1d
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapDynamics;->fatigue()D

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double v4, v6, v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->fresh:D

    .line 139
    const-wide/16 v4, 0x0

    invoke-static {v6, v7, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->progress:D

    .line 140
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->hrCap:I

    if-lez v0, :cond_bd

    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->hrCap:I

    add-int/lit8 v0, v0, -0x5

    if-lt p6, v0, :cond_bd

    move v0, v1

    :goto_45
    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrHigh:Z

    .line 141
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->sessions:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->sessions:I

    .line 142
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->setN:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->set:I

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    .line 145
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->indexOf(I)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev:I

    .line 146
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev2:I

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->indexOf(I)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev2:I

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoDynamics;->pick([Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 148
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev2:I

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->key(Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->key(Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)I

    move-result v0

    .line 151
    if-ltz v0, :cond_9d

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    array-length v1, v1

    if-ge v0, v1, :cond_9d

    .line 152
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 154
    :cond_9d
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->setN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->setN:I

    .line 155
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

    .line 140
    :cond_bd
    const/4 v0, 0x0

    goto :goto_45

    .line 155
    :cond_bf
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13
.end method
