.class public final Lcom/isaigu/gymapp/ai/MapDynamics;
.super Ljava/lang/Object;
.source "MapDynamics.java"


# static fields
.field public static final REST_MAX_S:I = 0x78


# instance fields
.field private final age:I

.field private f:D

.field private final fMax:D

.field private final fRec:D

.field private fresh:Z

.field private final hrCap:I

.field private idx:I

.field private lastHz:I

.field private list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field private prev:I

.field private prev2:I

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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    .line 31
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev2:I

    .line 32
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    .line 34
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 35
    iput v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->lastHz:I

    .line 40
    if-eqz p1, :cond_40

    :goto_15
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v1

    .line 41
    aget-wide v2, v1, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    .line 42
    const/4 v2, 0x1

    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fRec:D

    .line 43
    const/4 v2, 0x2

    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    .line 44
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->sessions:I

    .line 45
    iput p3, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->age:I

    .line 46
    if-lez p4, :cond_3d

    int-to-double v0, p4

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    :cond_3d
    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->hrCap:I

    .line 47
    return-void

    .line 40
    :cond_40
    sget-object p1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_15
.end method

.method private indexOf(I)I
    .registers 4

    .prologue
    .line 142
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 143
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/MapDynamics;->key(Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 147
    :goto_14
    return v0

    .line 142
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
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

    .line 128
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

    .line 130
    if-eqz p0, :cond_31

    const-string v4, "base"

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_31
    move v0, v2

    .line 138
    :goto_32
    return v0

    .line 133
    :cond_33
    add-int/lit8 v0, v0, 0x1

    :cond_35
    array-length v2, v3

    if-ge v0, v2, :cond_3d

    .line 134
    aget-object v2, v3, v0

    if-ne v2, p0, :cond_33

    goto :goto_32

    :cond_3d
    move v0, v1

    .line 138
    goto :goto_32
.end method


# virtual methods
.method public advance(DZZIIDD)V
    .registers 20

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_7

    .line 62
    :goto_6
    return-void

    .line 54
    :cond_7
    neg-double v0, p1

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 55
    const-wide/16 v0, 0x0

    .line 56
    if-eqz p3, :cond_2a

    if-eqz p4, :cond_2a

    .line 57
    invoke-static {p5}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    mul-double v0, v0, p9

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    mul-double/2addr v0, v4

    .line 61
    :cond_1e
    :goto_1e
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->f:D

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v2, v6, v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->f:D

    goto :goto_6

    .line 58
    :cond_2a
    if-eqz p3, :cond_1e

    if-lez p6, :cond_1e

    .line 59
    invoke-static {p6}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    mul-double v0, v0, p7

    mul-double v0, v0, p9

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    mul-double/2addr v0, v4

    goto :goto_1e
.end method

.method public cycle(Lcom/isaigu/gymapp/ai/AutoModel$Step;Z)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 8

    .prologue
    .line 109
    if-nez p1, :cond_4

    .line 110
    const/4 v0, 0x0

    .line 117
    :goto_3
    return-object v0

    .line 112
    :cond_4
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    if-ltz v0, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-eqz v0, :cond_34

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapDynamics;->fatigue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoDynamics;->glide(D)D

    move-result-wide v2

    invoke-static {p1, v0, v2, v3, p2}, Lcom/isaigu/gymapp/ai/AutoDynamics;->apply(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;DZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 114
    :goto_1e
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->lastHz:I

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoDynamics;->ramp(IIIZ)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    .line 116
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->lastHz:I

    goto :goto_3

    .line 113
    :cond_34
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    goto :goto_1e
.end method

.method public fatigue()D
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 65
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_d

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->f:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fMax:D

    div-double/2addr v0, v2

    :cond_d
    return-wide v0
.end method

.method public restS(I)I
    .registers 8

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->f:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fRec:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->tau:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->f:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fRec:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 123
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

    .line 122
    :cond_25
    const-wide/16 v0, 0x0

    goto :goto_14
.end method

.method public startPlain(Lcom/isaigu/gymapp/ai/AutoModel$Step;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-array v0, v3, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoDynamics;->baseOf(Lcom/isaigu/gymapp/ai/AutoModel$Step;)Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_12
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-eqz v0, :cond_20

    move v0, v1

    :goto_19
    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 104
    iput-boolean v3, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    .line 105
    return-void

    .line 102
    :cond_1e
    const/4 v0, 0x0

    goto :goto_12

    .line 103
    :cond_20
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public startSet(Lcom/isaigu/gymapp/ai/AutoModel$Step;DI)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v0, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 73
    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->sessions:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->age:I

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/ai/AutoDynamics;->forMap(Lcom/isaigu/gymapp/ai/AutoModel$Step;II)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 74
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->fresh:Z

    .line 75
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    if-nez v1, :cond_19

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 77
    const-string v0, ""

    .line 97
    :goto_18
    return-object v0

    .line 79
    :cond_19
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapDynamics;->fatigue()D

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    sub-double v2, v4, v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->fresh:D

    .line 81
    const-wide/16 v2, 0x0

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->progress:D

    .line 82
    iget v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->hrCap:I

    if-lez v2, :cond_b8

    iget v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->hrCap:I

    add-int/lit8 v2, v2, -0x5

    if-lt p4, v2, :cond_b8

    :goto_40
    iput-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrHigh:Z

    .line 83
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->sessions:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->sessions:I

    .line 84
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->setN:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->set:I

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    .line 87
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->indexOf(I)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev:I

    .line 88
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev2:I

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->indexOf(I)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev2:I

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/ai/AutoDynamics;->pick([Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    .line 90
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev2:I

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->key(Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->prev:I

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/MapDynamics;->key(Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)I

    move-result v0

    .line 93
    if-ltz v0, :cond_98

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    array-length v1, v1

    if-ge v0, v1, :cond_98

    .line 94
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->used:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 96
    :cond_98
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->setN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->setN:I

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->id:Ljava/lang/String;

    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const-string v0, "\u041a\u0430\u043a\u0442\u043e \u0435 \u043d\u0430\u0440\u0438\u0441\u0443\u0432\u0430\u043d"

    const-string v1, "As drawn"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 82
    :cond_b8
    const/4 v0, 0x0

    goto :goto_40

    .line 97
    :cond_ba
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->list:[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapDynamics;->idx:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18
.end method
