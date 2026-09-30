.class public final Lcom/isaigu/gymapp/ai/AiExercises;
.super Ljava/lang/Object;
.source "AiExercises.java"


# static fields
.field public static final TIRED_FATIGUE:D = 0.85


# instance fields
.field private current:Ljava/lang/String;

.field private cycleStartMs:J

.field private easier:Z

.field private hrPause:Z

.field private minUser:D

.field private next:Ljava/lang/String;

.field private offS:I

.field private onS:I

.field private final script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

.field private stationKey:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V
    .registers 4

    .prologue
    const/4 v1, 0x4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->stationKey:I

    .line 27
    iput v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->onS:I

    .line 28
    iput v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->offS:I

    .line 29
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->minUser:D

    .line 33
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 34
    return-void
.end method

.method private static blocksIn(Lcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I
    .registers 5

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 78
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, p1, :cond_1f

    .line 79
    add-int/lit8 v0, v1, 0x1

    :goto_1c
    move v1, v0

    .line 81
    goto :goto_a

    .line 82
    :cond_1e
    return v1

    :cond_1f
    move v0, v1

    goto :goto_1c
.end method

.method private static blocky(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z
    .registers 3

    .prologue
    .line 86
    if-eqz p0, :cond_a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static build(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;ILcom/isaigu/gymapp/ai/AiModel$Plan;IDLjava/util/List;)Lcom/isaigu/gymapp/ai/AiExercises;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AiModel$SessionInput;",
            "I",
            "Lcom/isaigu/gymapp/ai/AiModel$Plan;",
            "ID",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;",
            ">;)",
            "Lcom/isaigu/gymapp/ai/AiExercises;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 39
    if-eqz p0, :cond_5

    if-nez p2, :cond_6

    .line 63
    :cond_5
    :goto_5
    return-object v2

    .line 42
    :cond_6
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->programForAi(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;I)Ljava/lang/String;

    move-result-object v3

    .line 43
    if-eqz v3, :cond_5

    .line 46
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    .line 47
    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 49
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    iput v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 50
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 51
    iput p1, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 53
    iput p3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 54
    iput-wide p4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    .line 55
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 57
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    const-string v5, "diastasis"

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 58
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_57
    array-length v0, v5

    if-ge v1, v0, :cond_6e

    .line 60
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57

    .line 62
    :cond_6e
    invoke-static {v3, v4, v5, p6}, Lcom/isaigu/gymapp/ai/AutoTemplates;->scriptFor(Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Input;[Ljava/lang/String;Ljava/util/List;)Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_7b

    new-instance v0, Lcom/isaigu/gymapp/ai/AiExercises;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiExercises;-><init>(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V

    :goto_79
    move-object v2, v0

    goto :goto_5

    :cond_7b
    move-object v0, v2

    goto :goto_79
.end method

.method private list(Lcom/isaigu/gymapp/ai/AiEngine;)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v0

    .line 72
    if-ltz v0, :cond_14

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static tired(Lcom/isaigu/gymapp/ai/AiEngine;)Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigue()D

    move-result-wide v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigueMax()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1d

    .line 98
    :cond_1c
    :goto_1c
    return v0

    .line 93
    :cond_1d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v2

    const-wide v4, 0x3feff7ced916872bL    # 0.999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_1c

    .line 96
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v2

    .line 98
    if-eqz v1, :cond_4c

    iget-boolean v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v4, :cond_4c

    iget-boolean v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-nez v4, :cond_4c

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4c

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_1c

    :cond_4c
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public current(Lcom/isaigu/gymapp/ai/AiEngine;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 167
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->current:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getCycleStartMs()J
    .registers 3

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->cycleStartMs:J

    return-wide v0
.end method

.method public getOffS()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->offS:I

    return v0
.end method

.method public getOnS()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->onS:I

    return v0
.end method

.method public getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    return-object v0
.end method

.method public isEasier()Z
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->easier:Z

    return v0
.end method

.method public next()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->next:Ljava/lang/String;

    return-object v0
.end method

.method public onCycle(JLcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V
    .registers 14

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 103
    if-eqz p3, :cond_e

    if-eqz p4, :cond_e

    iget-wide v2, p4, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_f

    .line 131
    :cond_e
    :goto_e
    return-void

    .line 106
    :cond_f
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->cycleStartMs:J

    .line 107
    iget v0, p4, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->onS:I

    .line 108
    iget v0, p4, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->offS:I

    .line 109
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/ai/AiExercises;->list(Lcom/isaigu/gymapp/ai/AiEngine;)[Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 111
    if-eqz v3, :cond_30

    array-length v0, v3

    if-eqz v0, :cond_30

    if-nez v2, :cond_34

    .line 112
    :cond_30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->current:Ljava/lang/String;

    goto :goto_e

    .line 116
    :cond_34
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiExercises;->blocky(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 117
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/ai/AiExercises;->blocksIn(Lcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    array-length v4, v3

    rem-int/2addr v0, v4

    .line 122
    :goto_42
    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiExercises;->blocky(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v5

    if-eqz v5, :cond_90

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {p3, v2}, Lcom/isaigu/gymapp/ai/AiExercises;->blocksIn(Lcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    :goto_57
    add-int/2addr v2, v4

    .line 123
    iget v4, p0, Lcom/isaigu/gymapp/ai/AiExercises;->stationKey:I

    if-eq v2, v4, :cond_60

    .line 124
    iput v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->stationKey:I

    .line 125
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->easier:Z

    .line 127
    :cond_60
    invoke-static {p3}, Lcom/isaigu/gymapp/ai/AiExercises;->tired(Lcom/isaigu/gymapp/ai/AiEngine;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 128
    iput-boolean v8, p0, Lcom/isaigu/gymapp/ai/AiExercises;->easier:Z

    .line 130
    :cond_68
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->easier:Z

    if-eqz v1, :cond_92

    aget-object v0, v3, v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->avoid:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->easier(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    :goto_76
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->current:Ljava/lang/String;

    goto :goto_e

    .line 119
    :cond_79
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v4

    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v6

    iget v5, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v0, v4, v6, v7, v5}, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->at(IDI)Lcom/isaigu/gymapp/ai/AutoTemplates$At;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_8e

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->index:I

    goto :goto_42

    :cond_8e
    move v0, v1

    goto :goto_42

    :cond_90
    move v2, v1

    .line 122
    goto :goto_57

    .line 130
    :cond_92
    aget-object v0, v3, v0

    goto :goto_76
.end method

.method public outcome(Lcom/isaigu/gymapp/ai/AiEngine;)Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;
    .registers 12

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    .line 192
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    if-lez v0, :cond_36

    .line 193
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 194
    :goto_22
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->level:I

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiExercises;->minUser:D

    sub-double v6, v8, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iget-boolean v6, p0, Lcom/isaigu/gymapp/ai/AiExercises;->hrPause:Z

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;-><init>(IDDZ)V

    return-object v0

    :cond_36
    move-wide v2, v4

    .line 193
    goto :goto_22
.end method

.method public tick(JLcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 15

    .prologue
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    .line 135
    if-nez p3, :cond_6

    .line 163
    :cond_5
    :goto_5
    return-void

    .line 138
    :cond_6
    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 139
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->minUser:D

    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->minUser:D

    .line 140
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_1d

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->hrPause:Z

    .line 143
    :cond_1d
    iput-object v6, p0, Lcom/isaigu/gymapp/ai/AiExercises;->next:Ljava/lang/String;

    .line 144
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/ai/AiExercises;->list(Lcom/isaigu/gymapp/ai/AiEngine;)[Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 146
    if-eqz v1, :cond_2e

    array-length v3, v1

    if-eqz v3, :cond_2e

    if-nez v2, :cond_35

    .line 147
    :cond_2e
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_5

    .line 148
    iput-object v6, p0, Lcom/isaigu/gymapp/ai/AiExercises;->current:Ljava/lang/String;

    goto :goto_5

    .line 152
    :cond_35
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiExercises;->blocky(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 153
    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v3, :cond_5

    .line 154
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/ai/AiExercises;->blocksIn(Lcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->next:Ljava/lang/String;

    goto :goto_5

    .line 156
    :cond_4c
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_5

    .line 157
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->cycleStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 158
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v4

    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v6

    sub-double/2addr v6, v0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v3, v4, v6, v7, v2}, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->at(IDI)Lcom/isaigu/gymapp/ai/AutoTemplates$At;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->next:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->remainingS:D

    sub-double v0, v4, v0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_5

    .line 160
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->next:Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->next:Ljava/lang/String;

    goto/16 :goto_5
.end method
