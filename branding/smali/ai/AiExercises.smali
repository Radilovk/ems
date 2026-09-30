.class public final Lcom/isaigu/gymapp/ai/AiExercises;
.super Ljava/lang/Object;
.source "AiExercises.java"


# static fields
.field public static final TIRED_FATIGUE:D = 0.85


# instance fields
.field private blocksAtComplete:I

.field private current:Ljava/lang/String;

.field private cycleStartMs:J

.field private easier:Z

.field private hrPause:Z

.field private minUser:D

.field private next:Ljava/lang/String;

.field private offS:I

.field private onS:I

.field private repsDone:I

.field private final script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

.field private seq:[[I

.field private setComplete:Z

.field private setIndex:I

.field private stationKey:I

.field private workout:Lcom/isaigu/gymapp/ai/Workout;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V
    .registers 5

    .prologue
    const/4 v0, 0x4

    const/4 v2, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->stationKey:I

    .line 32
    iput v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->onS:I

    .line 33
    iput v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->offS:I

    .line 34
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->minUser:D

    .line 39
    iput v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    .line 46
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 47
    return-void
.end method

.method private static blocksAll(Lcom/isaigu/gymapp/ai/AiEngine;)I
    .registers 6

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 151
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v3, v4, :cond_22

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, v3, :cond_27

    .line 152
    :cond_22
    add-int/lit8 v0, v1, 0x1

    :goto_24
    move v1, v0

    .line 154
    goto :goto_a

    .line 155
    :cond_26
    return v1

    :cond_27
    move v0, v1

    goto :goto_24
.end method

.method private static blocksIn(Lcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I
    .registers 5

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
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

    .line 170
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, p1, :cond_1f

    .line 171
    add-int/lit8 v0, v1, 0x1

    :goto_1c
    move v1, v0

    .line 173
    goto :goto_a

    .line 174
    :cond_1e
    return v1

    :cond_1f
    move v0, v1

    goto :goto_1c
.end method

.method private static blocky(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z
    .registers 3

    .prologue
    .line 178
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

    .line 52
    if-eqz p0, :cond_5

    if-nez p2, :cond_6

    .line 76
    :cond_5
    :goto_5
    return-object v2

    .line 55
    :cond_6
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->programForAi(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;I)Ljava/lang/String;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_5

    .line 59
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    .line 60
    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 62
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    iput v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 63
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 64
    iput p1, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 66
    iput p3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 67
    iput-wide p4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    .line 68
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 70
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    const-string v5, "diastasis"

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 71
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_57
    array-length v0, v5

    if-ge v1, v0, :cond_6e

    .line 73
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57

    .line 75
    :cond_6e
    invoke-static {v3, v4, v5, p6}, Lcom/isaigu/gymapp/ai/AutoTemplates;->scriptFor(Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Input;[Ljava/lang/String;Ljava/util/List;)Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v1

    .line 76
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

.method public static forWorkout(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;ILcom/isaigu/gymapp/ai/AiModel$Plan;ID)Lcom/isaigu/gymapp/ai/AiExercises;
    .registers 16

    .prologue
    .line 82
    if-eqz p0, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz p1, :cond_14

    if-eqz p3, :cond_14

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-eq v0, v1, :cond_16

    .line 83
    :cond_14
    const/4 v0, 0x0

    .line 109
    :goto_15
    return-object v0

    .line 85
    :cond_16
    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/AiExercises;->build(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;ILcom/isaigu/gymapp/ai/AiModel$Plan;IDLjava/util/List;)Lcom/isaigu/gymapp/ai/AiExercises;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_5f

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-object v3, v0

    .line 87
    :goto_25
    if-eqz v3, :cond_62

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->avoid:Ljava/util/Set;

    move-object v1, v0

    .line 88
    :goto_2a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v5

    .line 90
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    .line 91
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->safer(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    .line 92
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 93
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 86
    :cond_5f
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_25

    .line 87
    :cond_62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    goto :goto_2a

    .line 96
    :cond_69
    iget-object v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [[Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    move v2, v0

    :goto_73
    array-length v0, v6

    if-ge v2, v0, :cond_b9

    .line 98
    iget-object v0, p3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 99
    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, v7, :cond_a5

    .line 100
    if-eqz v3, :cond_96

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_96

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->phase:[[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 101
    :goto_90
    aput-object v0, v6, v2

    .line 97
    :cond_92
    :goto_92
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_73

    .line 101
    :cond_96
    const/4 v0, 0x1

    invoke-static {v0, v4, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->warmup(ILjava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_90

    .line 102
    :cond_a5
    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v0, v7, :cond_ad

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v0, v7, :cond_92

    .line 103
    :cond_ad
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v6, v2

    goto :goto_92

    .line 106
    :cond_b9
    new-instance v2, Lcom/isaigu/gymapp/ai/AiExercises;

    new-instance v4, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    const-string v7, "workout"

    if-eqz v3, :cond_d4

    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->level:I

    :goto_c3
    invoke-direct {v4, v7, v0, v6, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;-><init>(Ljava/lang/String;I[[Ljava/lang/String;Ljava/util/Set;)V

    invoke-direct {v2, v4}, Lcom/isaigu/gymapp/ai/AiExercises;-><init>(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V

    .line 107
    iput-object v5, v2, Lcom/isaigu/gymapp/ai/AiExercises;->workout:Lcom/isaigu/gymapp/ai/Workout;

    .line 108
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/Workout;->sequence()[[I

    move-result-object v0

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AiExercises;->seq:[[I

    move-object v0, v2

    .line 109
    goto/16 :goto_15

    .line 106
    :cond_d4
    const/4 v0, 0x1

    goto :goto_c3
.end method

.method private list(Lcom/isaigu/gymapp/ai/AiEngine;)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v0

    .line 164
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

    .line 182
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

    .line 190
    :cond_1c
    :goto_1c
    return v0

    .line 185
    :cond_1d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v2

    const-wide v4, 0x3feff7ced916872bL    # 0.999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_1c

    .line 188
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v2

    .line 190
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
    .line 295
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
    .line 307
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->cycleStartMs:J

    return-wide v0
.end method

.method public getOffS()I
    .registers 2

    .prologue
    .line 315
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->offS:I

    return v0
.end method

.method public getOnS()I
    .registers 2

    .prologue
    .line 311
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->onS:I

    return v0
.end method

.method public getRepsDone()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->repsDone:I

    return v0
.end method

.method public getRepsTarget()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiExercises;->set()[I

    move-result-object v1

    .line 137
    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->workout:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    aget v0, v1, v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    :cond_15
    return v0
.end method

.method public getRound()I
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->workout:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setComplete:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    if-ltz v0, :cond_15

    .line 143
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->seq:[[I

    array-length v1, v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 145
    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->workout:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    if-ltz v0, :cond_26

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->seq:[[I

    array-length v1, v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_26
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    return-object v0
.end method

.method public getSetIndex()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    return v0
.end method

.method public getWorkout()Lcom/isaigu/gymapp/ai/Workout;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->workout:Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method public isEasier()Z
    .registers 2

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->easier:Z

    return v0
.end method

.method public isSetComplete()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setComplete:Z

    return v0
.end method

.method public next()Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->next:Ljava/lang/String;

    return-object v0
.end method

.method public onCycle(JLcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;)V
    .registers 14

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 195
    if-eqz p3, :cond_e

    if-eqz p4, :cond_e

    iget-wide v2, p4, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->frac:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_f

    .line 253
    :cond_e
    :goto_e
    return-void

    .line 198
    :cond_f
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->cycleStartMs:J

    .line 199
    iget v0, p4, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->onS:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->onS:I

    .line 200
    iget v0, p4, Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;->offS:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->offS:I

    .line 201
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/ai/AiExercises;->list(Lcom/isaigu/gymapp/ai/AiEngine;)[Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 203
    if-eqz v3, :cond_30

    array-length v0, v3

    if-eqz v0, :cond_30

    if-nez v2, :cond_34

    .line 204
    :cond_30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->current:Ljava/lang/String;

    goto :goto_e

    .line 207
    :cond_34
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->workout:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_c2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiExercises;->blocky(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 208
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    if-gez v0, :cond_ab

    .line 209
    iput v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    .line 210
    iput v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->repsDone:I

    .line 216
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->seq:[[I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiExercises;->seq:[[I

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v2, v0, v2

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->workout:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    aget v3, v2, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    .line 218
    const v3, 0xf4240

    iget v4, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    add-int/2addr v3, v4

    .line 219
    iget v4, p0, Lcom/isaigu/gymapp/ai/AiExercises;->stationKey:I

    if-eq v3, v4, :cond_6c

    .line 220
    iput v3, p0, Lcom/isaigu/gymapp/ai/AiExercises;->stationKey:I

    .line 221
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->easier:Z

    .line 223
    :cond_6c
    invoke-static {p3}, Lcom/isaigu/gymapp/ai/AiExercises;->tired(Lcom/isaigu/gymapp/ai/AiEngine;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 224
    iput-boolean v8, p0, Lcom/isaigu/gymapp/ai/AiExercises;->easier:Z

    .line 226
    :cond_74
    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/AiExercises;->easier:Z

    if-eqz v3, :cond_80

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->avoid:Ljava/util/Set;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->easier(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    :cond_80
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->current:Ljava/lang/String;

    .line 227
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setComplete:Z

    if-nez v0, :cond_e

    .line 228
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->repsDone:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->repsDone:I

    .line 229
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiExercises;->repsDone:I

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->workout:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    aget v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    if-lt v3, v0, :cond_e

    .line 230
    iput-boolean v8, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setComplete:Z

    .line 231
    invoke-static {p3}, Lcom/isaigu/gymapp/ai/AiExercises;->blocksAll(Lcom/isaigu/gymapp/ai/AiEngine;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->blocksAtComplete:I

    .line 232
    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->endSet()V

    goto/16 :goto_e

    .line 211
    :cond_ab
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setComplete:Z

    if-eqz v0, :cond_46

    invoke-static {p3}, Lcom/isaigu/gymapp/ai/AiExercises;->blocksAll(Lcom/isaigu/gymapp/ai/AiEngine;)I

    move-result v0

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->blocksAtComplete:I

    if-le v0, v2, :cond_46

    .line 212
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    .line 213
    iput v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->repsDone:I

    .line 214
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setComplete:Z

    goto :goto_46

    .line 238
    :cond_c2
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiExercises;->blocky(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 239
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/ai/AiExercises;->blocksIn(Lcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    array-length v4, v3

    rem-int/2addr v0, v4

    .line 244
    :goto_d0
    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiExercises;->blocky(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v5

    if-eqz v5, :cond_11f

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {p3, v2}, Lcom/isaigu/gymapp/ai/AiExercises;->blocksIn(Lcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    :goto_e5
    add-int/2addr v2, v4

    .line 245
    iget v4, p0, Lcom/isaigu/gymapp/ai/AiExercises;->stationKey:I

    if-eq v2, v4, :cond_ee

    .line 246
    iput v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->stationKey:I

    .line 247
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->easier:Z

    .line 249
    :cond_ee
    invoke-static {p3}, Lcom/isaigu/gymapp/ai/AiExercises;->tired(Lcom/isaigu/gymapp/ai/AiEngine;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 250
    iput-boolean v8, p0, Lcom/isaigu/gymapp/ai/AiExercises;->easier:Z

    .line 252
    :cond_f6
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->easier:Z

    if-eqz v1, :cond_121

    aget-object v0, v3, v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->avoid:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->easier(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    :goto_104
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->current:Ljava/lang/String;

    goto/16 :goto_e

    .line 241
    :cond_108
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v4

    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v6

    iget v5, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v0, v4, v6, v7, v5}, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->at(IDI)Lcom/isaigu/gymapp/ai/AutoTemplates$At;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_11d

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->index:I

    goto :goto_d0

    :cond_11d
    move v0, v1

    goto :goto_d0

    :cond_11f
    move v2, v1

    .line 244
    goto :goto_e5

    .line 252
    :cond_121
    aget-object v0, v3, v0

    goto :goto_104
.end method

.method public outcome(Lcom/isaigu/gymapp/ai/AiEngine;)Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;
    .registers 12

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    .line 320
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    if-lez v0, :cond_36

    .line 321
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 322
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

    .line 321
    goto :goto_22
.end method

.method public set()[I
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->workout:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    if-ltz v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->seq:[[I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->seq:[[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public tick(JLcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 15

    .prologue
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    .line 257
    if-nez p3, :cond_6

    .line 291
    :cond_5
    :goto_5
    return-void

    .line 260
    :cond_6
    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 261
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->minUser:D

    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->minUser:D

    .line 262
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_1d

    .line 263
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->hrPause:Z

    .line 265
    :cond_1d
    iput-object v6, p0, Lcom/isaigu/gymapp/ai/AiExercises;->next:Ljava/lang/String;

    .line 266
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/ai/AiExercises;->list(Lcom/isaigu/gymapp/ai/AiEngine;)[Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {p3}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 268
    if-eqz v1, :cond_2e

    array-length v3, v1

    if-eqz v3, :cond_2e

    if-nez v2, :cond_35

    .line 269
    :cond_2e
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v0, v1, :cond_5

    .line 270
    iput-object v6, p0, Lcom/isaigu/gymapp/ai/AiExercises;->current:Ljava/lang/String;

    goto :goto_5

    .line 274
    :cond_35
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiExercises;->workout:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v3, :cond_6c

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiExercises;->blocky(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 275
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    if-ltz v0, :cond_5

    .line 277
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setComplete:Z

    if-eqz v0, :cond_69

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 278
    :goto_4f
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiExercises;->workout:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiExercises;->seq:[[I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiExercises;->seq:[[I

    array-length v3, v3

    rem-int/2addr v0, v3

    aget-object v0, v2, v0

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->next:Ljava/lang/String;

    goto :goto_5

    .line 277
    :cond_69
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->setIndex:I

    goto :goto_4f

    .line 280
    :cond_6c
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiExercises;->blocky(Lcom/isaigu/gymapp/ai/AiModel$Phase;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 281
    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v3, :cond_5

    .line 282
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/ai/AiExercises;->blocksIn(Lcom/isaigu/gymapp/ai/AiEngine;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->next:Ljava/lang/String;

    goto :goto_5

    .line 284
    :cond_83
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_5

    .line 285
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->cycleStartMs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 286
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

    .line 287
    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->next:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->remainingS:D

    sub-double v0, v4, v0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_5

    .line 288
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoTemplates$At;->next:Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiExercises;->next:Ljava/lang/String;

    goto/16 :goto_5
.end method
