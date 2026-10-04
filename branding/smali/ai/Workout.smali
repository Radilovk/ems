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

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public preset:Z

.field public sex:Ljava/lang/String;

.field public updatedAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 235
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

    return-void
.end method

.method static audience(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 438
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
    .line 151
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static forExercise(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 4

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/Workout;->forExercise(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    return-object v0
.end method

.method public static forExercise(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 7

    .prologue
    .line 185
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoDynamics;->move(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    .line 186
    invoke-static {p1, p3}, Lcom/isaigu/gymapp/ai/AutoDynamics;->patIn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/Workout;->forExercise0(Ljava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v1

    .line 187
    iput-object p1, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->pat:Ljava/lang/String;

    .line 188
    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    .line 189
    return-object v1

    .line 188
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

    .line 193
    if-eqz p2, :cond_18

    .line 194
    :goto_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    .line 195
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/4 v2, 0x5

    const/16 v3, 0x46

    const/16 v7, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 212
    :goto_17
    return-object v0

    .line 193
    :cond_18
    const-string p2, ""

    goto :goto_9

    .line 197
    :cond_1b
    if-ne p1, v8, :cond_2e

    .line 198
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v3, 0x28

    const/16 v7, 0x55

    move-object v1, p0

    move v5, v8

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 199
    iput v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    .line 200
    iput v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    goto :goto_17

    .line 203
    :cond_2e
    if-ne p1, v6, :cond_48

    .line 204
    new-instance v3, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v6, 0xa

    const/16 v7, 0xfa

    const/4 v9, 0x2

    const/16 v10, 0x3c

    move-object v4, p0

    move v8, v5

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 205
    const/16 v0, 0x3e8

    iput v0, v3, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    .line 206
    const/16 v0, 0x3e8

    iput v0, v3, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    move-object v0, v3

    .line 207
    goto :goto_17

    .line 209
    :cond_48
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/Workout;->isSmall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 210
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v3, 0x55

    const/16 v7, 0x64

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    goto :goto_17

    .line 212
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
    .line 216
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->isSmall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static patternOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 304
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v0

    .line 305
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
    .line 442
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 443
    const/4 v2, 0x0

    :goto_6
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_116

    .line 444
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    aget-object v4, v3, v2

    .line 445
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

    .line 447
    :goto_20
    if-nez v6, :cond_2e

    .line 443
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 446
    :cond_25
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v5, 0x2

    aget-object v3, v3, v5

    move-object v6, v3

    goto :goto_20

    .line 450
    :cond_2e
    new-instance v7, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v7}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 451
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

    .line 452
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v5

    .line 453
    if-eqz v5, :cond_cd

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v3

    :goto_52
    iput-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 454
    const-string v3, "cardio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    const-string v3, "fat"

    :goto_5e
    iput-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 455
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/Workout;->audience(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    .line 456
    const-string v3, "glutes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 457
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "glutes"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_75
    :goto_75
    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/Workout;->sessionMinutes()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/lit16 v3, v3, -0x168

    div-int/lit8 v3, v3, 0x18

    .line 467
    array-length v4, v6

    div-int/2addr v3, v4

    const/4 v4, 0x3

    const/16 v5, 0x8

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v5

    .line 468
    const/4 v3, 0x0

    :goto_89
    array-length v4, v6

    if-ge v3, v4, :cond_10e

    .line 469
    aget-object v8, v6, v3

    .line 470
    const-string v4, "plank"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a6

    const-string v4, "side-plank"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a6

    const-string v4, "elliptical"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10a

    :cond_a6
    const/4 v4, 0x1

    .line 471
    :goto_a7
    invoke-static {v8}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/isaigu/gymapp/ai/Workout;->forExercise(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v8

    .line 472
    if-eqz v4, :cond_10c

    const/4 v4, 0x3

    add-int/lit8 v9, v5, -0x2

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_b8
    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 473
    if-lez v3, :cond_c5

    .line 474
    iget-object v4, v7, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->rest()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_c5
    iget-object v4, v7, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    :cond_cd
    move-object v3, v4

    .line 453
    goto :goto_52

    .line 454
    :cond_cf
    const-string v3, "tone"

    goto :goto_5e

    .line 458
    :cond_d2
    const-string v3, "core"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 459
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "abs"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 460
    :cond_e2
    const-string v3, "back_active"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 461
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "back"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 462
    :cond_f2
    const-string v3, "upper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 463
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "chest"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "arms"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_75

    .line 470
    :cond_10a
    const/4 v4, 0x0

    goto :goto_a7

    :cond_10c
    move v4, v5

    .line 472
    goto :goto_b8

    .line 478
    :cond_10e
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 479
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 481
    :cond_116
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoCatalog;->all()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_11e
    :goto_11e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_289

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 482
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v3

    if-nez v3, :cond_11e

    .line 486
    :try_start_130
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    .line 487
    iget-boolean v3, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    if-eqz v3, :cond_26f

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_13b
    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 488
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 489
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 490
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 491
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    :goto_154
    if-ge v3, v6, :cond_172

    aget-object v7, v5, v3

    .line 492
    iget-object v8, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_273

    iget-object v8, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_273

    .line 493
    iput-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 497
    :cond_172
    const/16 v3, 0x44

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/AutoPlanner;->build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v3

    .line 498
    if-eqz v3, :cond_11e

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    if-eqz v4, :cond_11e

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iget-object v5, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 501
    new-instance v14, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v14}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 502
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

    .line 503
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 504
    const-string v4, "passive"

    iput-object v4, v14, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 505
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/Workout;->audience(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    .line 506
    iget-object v2, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1bc
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_279

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-object v10, v0

    .line 507
    const/4 v2, 0x1

    iget-object v3, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 508
    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1db
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1bc

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-object v11, v0

    .line 509
    const/4 v2, 0x1

    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 510
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

    .line 511
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

    .line 512
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v3, :cond_277

    iget-wide v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_277

    const/4 v3, 0x1

    :goto_23c
    iput-boolean v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    .line 513
    iget-boolean v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v3, :cond_252

    .line 514
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    .line 515
    iget-wide v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    iput v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    .line 517
    :cond_252
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    if-lez v3, :cond_25a

    .line 518
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    .line 520
    :cond_25a
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    if-lez v3, :cond_262

    .line 521
    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v3, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    .line 523
    :cond_262
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 524
    iget-object v3, v14, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1db

    .line 531
    :catch_26c
    move-exception v2

    goto/16 :goto_11e

    .line 487
    :cond_26f
    iget-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_13b

    .line 491
    :cond_273
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_154

    .line 512
    :cond_277
    const/4 v3, 0x0

    goto :goto_23c

    .line 527
    :cond_279
    iget-object v2, v14, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11e

    .line 528
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 529
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_287
    .catch Ljava/lang/RuntimeException; {:try_start_130 .. :try_end_287} :catch_26c

    goto/16 :goto_11e

    .line 535
    :cond_289
    return-object v12
.end method

.method public static rest()Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 8

    .prologue
    const/4 v5, 0x4

    .line 221
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
    .line 226
    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->rest()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 227
    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_27

    .line 228
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

    .line 230
    :cond_27
    return-object v0
.end method


# virtual methods
.method public aiGoal()Lcom/isaigu/gymapp/ai/AiModel$Goal;
    .registers 3

    .prologue
    .line 409
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
    .line 393
    const/16 v0, 0x168

    .line 394
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

    .line 395
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 396
    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    mul-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v1

    :goto_20
    move v1, v0

    .line 398
    goto :goto_9

    .line 399
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
    .line 329
    const-wide/16 v2, 0x0

    .line 330
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 331
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 332
    cmpg-double v0, p1, v2

    if-gez v0, :cond_1f

    .line 336
    :goto_1e
    return v1

    .line 330
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 336
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

    .line 299
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
    .line 159
    new-instance v1, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 160
    iput-object p1, v1, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 161
    iput-object p2, v1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 163
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 165
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->copy()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 167
    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/Workout;->updatedAt:J

    .line 168
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
    .line 243
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 244
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

    .line 245
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v1

    move-object v3, v1

    .line 246
    :goto_28
    if-eqz v3, :cond_b

    .line 249
    const/4 v1, 0x0

    move v2, v1

    :goto_2c
    array-length v1, v3

    if-ge v2, v1, :cond_b

    sget-object v1, Lcom/isaigu/gymapp/ai/Workout;->ZONE_OF_CHANNEL:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_b

    .line 250
    sget-object v1, Lcom/isaigu/gymapp/ai/Workout;->ZONE_OF_CHANNEL:[Ljava/lang/String;

    aget-object v8, v1, v2

    .line 251
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 252
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

    .line 249
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2c

    .line 245
    :cond_57
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_28

    .line 252
    :cond_5a
    const-wide/16 v4, 0x0

    goto :goto_44

    .line 255
    :cond_5d
    const-wide/16 v0, 0x0

    .line 256
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

    .line 257
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    move-wide v2, v0

    .line 258
    goto :goto_68

    .line 259
    :cond_7e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 260
    :goto_83
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_da

    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_da

    .line 261
    const/4 v6, 0x0

    .line 262
    const-wide/16 v4, 0x0

    .line 263
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

    .line 264
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

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_cf
    move-object v6, v1

    .line 268
    goto :goto_9b

    .line 269
    :cond_d1
    if-eqz v6, :cond_da

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    cmpg-double v0, v4, v0

    if-gez v0, :cond_db

    .line 274
    :cond_da
    return-object v8

    .line 272
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
    .line 351
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
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

    .line 353
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 354
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 357
    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public exerciseBlocks()I
    .registers 4

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
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

    .line 343
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 344
    add-int/lit8 v0, v1, 0x1

    :goto_1c
    move v1, v0

    .line 346
    goto :goto_8

    .line 347
    :cond_1e
    return v1

    :cond_1f
    move v0, v1

    goto :goto_1c
.end method

.method public isPassive()Z
    .registers 3

    .prologue
    .line 155
    const-string v0, "passive"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public longerThanSession()Z
    .registers 3

    .prologue
    .line 418
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
    .line 388
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
    .line 404
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
    .line 423
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

    .line 428
    :cond_16
    :goto_16
    return-void

    .line 426
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 427
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_16
.end method

.method public sequence()[[I
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 365
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 366
    :goto_7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_65

    .line 367
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 368
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-nez v1, :cond_21

    .line 366
    :goto_1d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_21
    move v4, v3

    move v5, v3

    move v6, v3

    .line 373
    :goto_24
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_56

    .line 374
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

    .line 375
    add-int/lit8 v5, v5, 0x1

    .line 376
    if-gt v4, v2, :cond_52

    .line 377
    add-int/lit8 v6, v6, 0x1

    .line 373
    :cond_52
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_24

    .line 381
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

    .line 383
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
    .line 413
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

    .line 320
    move v1, v0

    move v2, v0

    .line 321
    :goto_3
    if-ge v1, p1, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v2, v0

    .line 321
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 324
    :cond_1e
    return v2
.end method

.method public suggestedGoal()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 280
    const-string v0, "passive"

    .line 294
    :goto_9
    return-object v0

    .line 284
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

    .line 285
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 288
    iget v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    add-int/2addr v1, v4

    .line 289
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
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

    .line 291
    :cond_43
    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    add-int/2addr v0, v2

    :goto_46
    move v2, v0

    .line 293
    goto :goto_12

    .line 294
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
    .line 311
    const/4 v0, 0x0

    .line 312
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

    .line 313
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 314
    goto :goto_8

    .line 315
    :cond_1b
    return v1
.end method
