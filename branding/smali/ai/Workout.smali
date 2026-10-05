.class public final Lcom/isaigu/gymapp/ai/Workout;
.super Ljava/lang/Object;
.source "Workout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/Workout$Block;
    }
.end annotation


# static fields
.field static final FRAME_S:I = 0x168

.field public static final GOAL_FAT:Ljava/lang/String; = "fat"

.field public static final GOAL_PASSIVE:Ljava/lang/String; = "passive"

.field public static final GOAL_TONE:Ljava/lang/String; = "tone"

.field public static final HZ_MAX:I = 0x78

.field public static final HZ_MIN:I = 0x1

.field public static final OFF_MAX:I = 0xa

.field public static final ON_MAX:I = 0xa

.field public static final PW_MAX:I = 0x190

.field public static final PW_MIN:I = 0x64

.field public static final RAMP_MAX_MS:I = 0xbb8

.field public static final RAMP_STEP_MS:I = 0x64

.field public static final REPS_MAX:I = 0x28

.field public static final REPS_MIN:I = 0x3

.field static final REP_S:I = 0x18

.field public static final REST_MAX_S:I = 0xb4

.field public static final REST_MIN_S:I = 0xa

.field private static final ZONE_OF_CHANNEL:[Ljava/lang/String;


# instance fields
.field public final blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout$Block;",
            ">;"
        }
    .end annotation
.end field

.field public final focus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public goal:Ljava/lang/String;

.field public final goals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public level:I

.field public name:Ljava/lang/String;

.field public preset:Z

.field public sex:Ljava/lang/String;

.field public updatedAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 246
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "chest"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "abs"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "legs"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "legs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "arms"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "arms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "back"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "back"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "glutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "legs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/Workout;->ZONE_OF_CHANNEL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 140
    const-string v0, "tone"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goals:Ljava/util/Set;

    return-void
.end method

.method static audience(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 479
    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->maleOnly:Z

    if-eqz v1, :cond_b

    const-string v0, "m"

    goto :goto_3

    :cond_b
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    if-eqz v1, :cond_3

    const-string v0, "f"

    goto :goto_3
.end method

.method static clamp(III)I
    .registers 4

    .prologue
    .line 159
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static classify(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)V
    .registers 7

    .prologue
    .line 484
    if-nez p1, :cond_3

    .line 493
    :cond_2
    return-void

    .line 487
    :cond_3
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout;->level:I

    .line 488
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 489
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 490
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Workout;->goals:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static forExercise(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 4

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/Workout;->forExercise(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    return-object v0
.end method

.method public static forExercise(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 7

    .prologue
    .line 196
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoDynamics;->move(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    .line 197
    invoke-static {p1, p3}, Lcom/isaigu/gymapp/ai/AutoDynamics;->patIn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/Workout;->forExercise0(Ljava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v1

    .line 198
    iput-object p1, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->pat:Ljava/lang/String;

    .line 199
    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    .line 200
    return-object v1

    .line 199
    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static forExercise0(Ljava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 14

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x6

    const/4 v8, 0x3

    const/16 v4, 0x12c

    const/4 v6, 0x4

    .line 204
    if-eqz p2, :cond_18

    .line 205
    :goto_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    .line 206
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/4 v2, 0x5

    const/16 v3, 0x46

    const/16 v7, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 223
    :goto_17
    return-object v0

    .line 204
    :cond_18
    const-string p2, ""

    goto :goto_9

    .line 208
    :cond_1b
    if-ne p1, v8, :cond_2e

    .line 209
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v3, 0x28

    const/16 v7, 0x55

    move-object v1, p0

    move v5, v8

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 210
    iput v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    .line 211
    iput v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    goto :goto_17

    .line 214
    :cond_2e
    if-ne p1, v6, :cond_48

    .line 215
    new-instance v3, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v6, 0xa

    const/16 v7, 0xfa

    const/4 v9, 0x2

    const/16 v10, 0x3c

    move-object v4, p0

    move v8, v5

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 216
    const/16 v0, 0x3e8

    iput v0, v3, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    .line 217
    const/16 v0, 0x3e8

    iput v0, v3, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    move-object v0, v3

    .line 218
    goto :goto_17

    .line 220
    :cond_48
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/Workout;->isSmall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 221
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v3, 0x55

    const/16 v7, 0x64

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    goto :goto_17

    .line 223
    :cond_5a
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v3, 0x55

    const/16 v4, 0x15e

    const/16 v7, 0x64

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    goto :goto_17
.end method

.method public static isSmall(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 227
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->isSmall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static patternOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 345
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v0

    .line 346
    if-ltz v0, :cond_b

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PAT:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static presets()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 497
    const/4 v2, 0x0

    :goto_6
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_119

    .line 498
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    aget-object v4, v3, v2

    .line 499
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v5, 0x1

    aget-object v3, v3, v5

    if-eqz v3, :cond_25

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v5, 0x1

    aget-object v3, v3, v5

    move-object v6, v3

    .line 501
    :goto_20
    if-nez v6, :cond_2e

    .line 497
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 500
    :cond_25
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v5, 0x2

    aget-object v3, v3, v5

    move-object v6, v3

    goto :goto_20

    .line 504
    :cond_2e
    new-instance v7, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v7}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preset:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 506
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v5

    .line 507
    if-eqz v5, :cond_d0

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v3

    :goto_52
    iput-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 508
    const-string v3, "cardio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d2

    const-string v3, "fat"

    :goto_5e
    iput-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 509
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/Workout;->audience(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    .line 510
    invoke-static {v7, v5}, Lcom/isaigu/gymapp/ai/Workout;->classify(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)V

    .line 511
    const-string v3, "glutes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 512
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "glutes"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_78
    :goto_78
    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/Workout;->sessionMinutes()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/lit16 v3, v3, -0x168

    div-int/lit8 v3, v3, 0x18

    .line 522
    array-length v4, v6

    div-int/2addr v3, v4

    const/4 v4, 0x3

    const/16 v5, 0x8

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v5

    .line 523
    const/4 v3, 0x0

    :goto_8c
    array-length v4, v6

    if-ge v3, v4, :cond_111

    .line 524
    aget-object v8, v6, v3

    .line 525
    const-string v4, "plank"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a9

    const-string v4, "side-plank"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a9

    const-string v4, "elliptical"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10d

    :cond_a9
    const/4 v4, 0x1

    .line 526
    :goto_aa
    invoke-static {v8}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/isaigu/gymapp/ai/Workout;->forExercise(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v8

    .line 527
    if-eqz v4, :cond_10f

    const/4 v4, 0x3

    add-int/lit8 v9, v5, -0x2

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_bb
    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 528
    if-lez v3, :cond_c8

    .line 529
    iget-object v4, v7, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->rest()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_c8
    iget-object v4, v7, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    :cond_d0
    move-object v3, v4

    .line 507
    goto :goto_52

    .line 508
    :cond_d2
    const-string v3, "tone"

    goto :goto_5e

    .line 513
    :cond_d5
    const-string v3, "core"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 514
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "abs"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 515
    :cond_e5
    const-string v3, "back_active"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 516
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "back"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 517
    :cond_f5
    const-string v3, "upper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 518
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "chest"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "arms"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_78

    .line 525
    :cond_10d
    const/4 v4, 0x0

    goto :goto_aa

    :cond_10f
    move v4, v5

    .line 527
    goto :goto_bb

    .line 533
    :cond_111
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 534
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 536
    :cond_119
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoCatalog;->all()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_121
    :goto_121
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 537
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v3

    if-nez v3, :cond_121

    .line 541
    :try_start_133
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    .line 542
    iget-boolean v3, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    if-eqz v3, :cond_275

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_13e
    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 543
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 544
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 545
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 546
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    :goto_157
    if-ge v3, v6, :cond_175

    aget-object v7, v5, v3

    .line 547
    iget-object v8, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_279

    iget-object v8, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_279

    .line 548
    iput-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 552
    :cond_175
    const/16 v3, 0x44

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/AutoPlanner;->build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v3

    .line 553
    if-eqz v3, :cond_121

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    if-eqz v4, :cond_121

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iget-object v5, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 556
    new-instance v14, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v14}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 558
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 559
    const-string v4, "passive"

    iput-object v4, v14, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 560
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/Workout;->audience(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    .line 561
    invoke-static {v14, v2}, Lcom/isaigu/gymapp/ai/Workout;->classify(Lcom/isaigu/gymapp/ai/Workout;Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)V

    .line 562
    iget-object v2, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1c2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-object v10, v0

    .line 563
    const/4 v2, 0x1

    iget-object v3, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 564
    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1e1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-object v11, v0

    .line 565
    const/4 v2, 0x1

    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 566
    new-instance v2, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/4 v3, 0x0

    const/4 v5, 0x3

    iget v6, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    div-int v6, v6, v16

    div-int v4, v6, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iget v6, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    const/4 v7, 0x1

    iget v8, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 567
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    const-wide v18, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    iget-wide v0, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 568
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v3, :cond_27d

    iget-wide v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_27d

    const/4 v3, 0x1

    :goto_242
    iput-boolean v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    .line 569
    iget-boolean v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v3, :cond_258

    .line 570
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    .line 571
    iget-wide v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    iput v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    .line 573
    :cond_258
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    if-lez v3, :cond_260

    .line 574
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    .line 576
    :cond_260
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    if-lez v3, :cond_268

    .line 577
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    .line 579
    :cond_268
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 580
    iget-object v3, v14, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e1

    .line 587
    :catch_272
    move-exception v2

    goto/16 :goto_121

    .line 542
    :cond_275
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_13e

    .line 546
    :cond_279
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_157

    .line 568
    :cond_27d
    const/4 v3, 0x0

    goto :goto_242

    .line 583
    :cond_27f
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_121

    .line 584
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 585
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28d
    .catch Ljava/lang/RuntimeException; {:try_start_133 .. :try_end_28d} :catch_272

    goto/16 :goto_121

    .line 591
    :cond_28f
    return-object v12
.end method

.method public static rest()Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 8

    .prologue
    const/4 v5, 0x4

    .line 232
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/16 v3, 0x55

    const/16 v4, 0x15e

    const/4 v7, 0x0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    return-object v0
.end method

.method public static restAfter(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 5

    .prologue
    .line 237
    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->rest()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 238
    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_27

    .line 239
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    const/16 v2, 0x14

    const/16 v3, 0x3c

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 241
    :cond_27
    return-object v0
.end method


# virtual methods
.method public aiGoal()Lcom/isaigu/gymapp/ai/AiModel$Goal;
    .registers 3

    .prologue
    .line 450
    const-string v0, "fat"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    goto :goto_c
.end method

.method public aiMinutes()I
    .registers 7

    .prologue
    .line 434
    const/16 v0, 0x168

    .line 435
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 436
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 437
    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    mul-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v1

    :goto_20
    move v1, v0

    .line 439
    goto :goto_9

    .line 440
    :cond_22
    const/4 v0, 0x1

    int-to-double v2, v1

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_31
    move v0, v1

    goto :goto_20
.end method

.method public blockAt(D)I
    .registers 10

    .prologue
    .line 370
    const-wide/16 v2, 0x0

    .line 371
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 372
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 373
    cmpg-double v0, p1, v2

    if-gez v0, :cond_1f

    .line 377
    :goto_1e
    return v1

    .line 371
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 377
    :cond_23
    const/4 v1, -0x1

    goto :goto_1e
.end method

.method public clean()Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x15e

    const/16 v7, 0x64

    const/4 v5, 0x4

    .line 340
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v2, 0x1e

    const/4 v3, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v2, 0x8

    const/16 v3, 0x55

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    goto :goto_16
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;
    .registers 7

    .prologue
    .line 167
    new-instance v1, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 168
    iput-object p1, v1, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 169
    iput-object p2, v1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    .line 172
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout;->level:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/Workout;->level:I

    .line 173
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->goals:Ljava/util/Set;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Workout;->goals:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 176
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->copy()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 178
    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/Workout;->updatedAt:J

    .line 179
    return-object v1
.end method

.method public derivedFocus()Ljava/util/List;
    .registers 15
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
    .line 254
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 256
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v1

    move-object v3, v1

    .line 257
    :goto_28
    if-eqz v3, :cond_b

    .line 260
    const/4 v1, 0x0

    move v2, v1

    :goto_2c
    array-length v1, v3

    if-ge v2, v1, :cond_b

    sget-object v1, Lcom/isaigu/gymapp/ai/Workout;->ZONE_OF_CHANNEL:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_b

    .line 261
    sget-object v1, Lcom/isaigu/gymapp/ai/Workout;->ZONE_OF_CHANNEL:[Ljava/lang/String;

    aget-object v8, v1, v2

    .line 262
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 263
    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_44
    aget v1, v3, v2

    int-to-double v10, v1

    iget v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    int-to-double v12, v1

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2c

    .line 256
    :cond_57
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_28

    .line 263
    :cond_5a
    const-wide/16 v4, 0x0

    goto :goto_44

    .line 266
    :cond_5d
    const-wide/16 v0, 0x0

    .line 267
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 268
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    move-wide v2, v0

    .line 269
    goto :goto_68

    .line 270
    :cond_7e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 271
    :goto_83
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_da

    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_da

    .line 272
    const/4 v6, 0x0

    .line 273
    const-wide/16 v4, 0x0

    .line 274
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_df

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpl-double v1, v10, v4

    if-lez v1, :cond_df

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_cf
    move-object v6, v1

    .line 279
    goto :goto_9b

    .line 280
    :cond_d1
    if-eqz v6, :cond_da

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    cmpg-double v0, v4, v0

    if-gez v0, :cond_db

    .line 285
    :cond_da
    return-object v8

    .line 283
    :cond_db
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_df
    move-object v1, v6

    goto :goto_cf
.end method

.method public distinctExercises()I
    .registers 5

    .prologue
    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 394
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 395
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 398
    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public effectiveGoals()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoModel$Goal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goals:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    :try_start_17
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_b

    .line 315
    :catch_1f
    move-exception v0

    goto :goto_b

    .line 318
    :cond_21
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 319
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 320
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 325
    :cond_38
    :goto_38
    return-object v1

    .line 322
    :cond_39
    const-string v0, "fat"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->suggestedGoal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    :goto_47
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_4b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_47
.end method

.method public effectiveLevel()I
    .registers 3

    .prologue
    .line 330
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout;->level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_d

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout;->level:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x2

    goto :goto_c
.end method

.method public exerciseBlocks()I
    .registers 4

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 383
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 384
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 385
    add-int/lit8 v0, v1, 0x1

    :goto_1c
    move v1, v0

    .line 387
    goto :goto_8

    .line 388
    :cond_1e
    return v1

    :cond_1f
    move v0, v1

    goto :goto_1c
.end method

.method public fits(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v3

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p2, v2, :cond_18

    move v2, v0

    :goto_b
    if-ne v3, v2, :cond_1a

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->effectiveGoals()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :goto_17
    return v0

    :cond_18
    move v2, v1

    goto :goto_b

    :cond_1a
    move v0, v1

    goto :goto_17
.end method

.method public isPassive()Z
    .registers 3

    .prologue
    .line 163
    const-string v0, "passive"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public longerThanSession()Z
    .registers 3

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->aiMinutes()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->sessionMinutes()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public mapMinutes()I
    .registers 7

    .prologue
    .line 429
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public minutes()I
    .registers 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->mapMinutes()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->aiMinutes()I

    move-result v0

    goto :goto_a
.end method

.method public move(II)V
    .registers 5

    .prologue
    .line 464
    if-ltz p1, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_16

    if-ltz p2, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_16

    if-ne p1, p2, :cond_17

    .line 469
    :cond_16
    :goto_16
    return-void

    .line 467
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 468
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_16
.end method

.method public sequence()[[I
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 406
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 407
    :goto_7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_65

    .line 408
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 409
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-nez v1, :cond_21

    .line 407
    :goto_1d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_21
    move v4, v3

    move v5, v3

    move v6, v3

    .line 414
    :goto_24
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_56

    .line 415
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/Workout$Block;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 416
    add-int/lit8 v5, v5, 0x1

    .line 417
    if-gt v4, v2, :cond_52

    .line 418
    add-int/lit8 v6, v6, 0x1

    .line 414
    :cond_52
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_24

    .line 422
    :cond_56
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v2, v0, v3

    const/4 v1, 0x1

    aput v6, v0, v1

    const/4 v1, 0x2

    aput v5, v0, v1

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 424
    :cond_65
    new-array v0, v3, [[I

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    return-object v0
.end method

.method public sessionMinutes()I
    .registers 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->aiGoal()Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public startOf(I)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 361
    move v1, v0

    move v2, v0

    .line 362
    :goto_3
    if-ge v1, p1, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v2, v0

    .line 362
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 365
    :cond_1e
    return v2
.end method

.method public suggestedGoal()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 291
    const-string v0, "passive"

    .line 305
    :goto_9
    return-object v0

    .line 295
    :cond_a
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 296
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 299
    iget v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    add-int/2addr v1, v4

    .line 300
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 301
    const-string v5, "cardio"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    const-string v5, "plyo"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    iget v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    const/16 v5, 0x32

    if-gt v4, v5, :cond_54

    .line 302
    :cond_43
    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    add-int/2addr v0, v2

    :goto_46
    move v2, v0

    .line 304
    goto :goto_12

    .line 305
    :cond_48
    if-lez v1, :cond_51

    mul-int/lit8 v0, v2, 0x2

    if-le v0, v1, :cond_51

    const-string v0, "fat"

    goto :goto_9

    :cond_51
    const-string v0, "tone"

    goto :goto_9

    :cond_54
    move v0, v2

    goto :goto_46
.end method

.method public totalSeconds()I
    .registers 4

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 354
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 355
    goto :goto_8

    .line 356
    :cond_1b
    return v1
.end method
