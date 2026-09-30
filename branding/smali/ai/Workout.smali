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

.field public static final REPS_MAX:I = 0x28

.field public static final REPS_MIN:I = 0x3

.field static final REP_S:I = 0x18

.field public static final REST_MAX_S:I = 0xb4

.field public static final REST_MIN_S:I = 0xa


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

.field public updatedAt:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 103
    const-string v0, "tone"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    return-void
.end method

.method static clamp(III)I
    .registers 4

    .prologue
    .line 112
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static forExercise(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 14

    .prologue
    const/16 v7, 0x64

    const/16 v8, 0x55

    const/16 v2, 0x8

    const/4 v5, 0x6

    const/4 v6, 0x4

    .line 140
    if-eqz p1, :cond_20

    .line 141
    :goto_a
    if-nez p2, :cond_14

    const-string v0, "core_static"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 142
    :cond_14
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/4 v2, 0x5

    const/16 v3, 0x46

    const/16 v4, 0x12c

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 153
    :goto_1f
    return-object v0

    .line 140
    :cond_20
    const-string p1, ""

    goto :goto_a

    .line 144
    :cond_23
    const-string v0, "cardio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "plyo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 145
    :cond_33
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v3, 0x28

    const/16 v4, 0x12c

    const/4 v5, 0x3

    const/4 v6, 0x3

    move-object v1, p0

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    goto :goto_1f

    .line 147
    :cond_41
    const-string v0, "stretch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 148
    new-instance v3, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v6, 0xa

    const/16 v7, 0xfa

    const/4 v9, 0x2

    const/16 v10, 0x3c

    move-object v4, p0

    move v8, v5

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    move-object v0, v3

    goto :goto_1f

    .line 150
    :cond_59
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/Workout;->isSmall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 151
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v4, 0x12c

    move-object v1, p0

    move v3, v8

    move v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    goto :goto_1f

    .line 153
    :cond_6a
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/16 v4, 0x15e

    move-object v1, p0

    move v3, v8

    move v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    goto :goto_1f
.end method

.method static isSmall(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 157
    const-string v0, "biceps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "triceps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "lat_raise"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "rear_delt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "front_raise"

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "fly"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "shrug"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "forearm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "calf"

    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "abductor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "adductor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "knee_flex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "knee_ext"

    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "pullover"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "core_flex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "core_rot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "core_hip"

    .line 161
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "back_ext"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    :cond_90
    const/4 v0, 0x1

    .line 157
    :goto_91
    return v0

    .line 161
    :cond_92
    const/4 v0, 0x0

    goto :goto_91
.end method

.method static patternOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v0

    .line 177
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
    .line 310
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 311
    const/4 v2, 0x0

    :goto_6
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_f8

    .line 312
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    aget-object v4, v3, v2

    .line 313
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

    .line 315
    :goto_20
    if-nez v6, :cond_2e

    .line 311
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 314
    :cond_25
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v5, 0x2

    aget-object v3, v3, v5

    move-object v6, v3

    goto :goto_20

    .line 318
    :cond_2e
    new-instance v7, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v7}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 319
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

    .line 320
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    .line 321
    if-eqz v3, :cond_c7

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v3

    :goto_52
    iput-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 322
    const-string v3, "cardio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    const-string v3, "fat"

    :goto_5e
    iput-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 323
    const-string v3, "glutes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 324
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "glutes"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_6f
    :goto_6f
    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/Workout;->sessionMinutes()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/lit16 v3, v3, -0x168

    div-int/lit8 v3, v3, 0x18

    .line 331
    array-length v4, v6

    div-int/2addr v3, v4

    const/4 v4, 0x3

    const/16 v5, 0x8

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v5

    .line 332
    const/4 v3, 0x0

    :goto_83
    array-length v4, v6

    if-ge v3, v4, :cond_f0

    .line 333
    aget-object v8, v6, v3

    .line 334
    const-string v4, "plank"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    const-string v4, "side-plank"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    const-string v4, "elliptical"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    :cond_a0
    const/4 v4, 0x1

    .line 335
    :goto_a1
    invoke-static {v8}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/isaigu/gymapp/ai/Workout;->forExercise(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v8

    .line 336
    if-eqz v4, :cond_ee

    const/4 v4, 0x3

    add-int/lit8 v9, v5, -0x2

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_b2
    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 337
    if-lez v3, :cond_bf

    .line 338
    iget-object v4, v7, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->rest()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_bf
    iget-object v4, v7, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    :cond_c7
    move-object v3, v4

    .line 321
    goto :goto_52

    .line 322
    :cond_c9
    const-string v3, "tone"

    goto :goto_5e

    .line 325
    :cond_cc
    const-string v3, "core"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 326
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "abs"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 327
    :cond_dc
    const-string v3, "back_active"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 328
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v4, "back"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 334
    :cond_ec
    const/4 v4, 0x0

    goto :goto_a1

    :cond_ee
    move v4, v5

    .line 336
    goto :goto_b2

    .line 342
    :cond_f0
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 343
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 345
    :cond_f8
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoCatalog;->all()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_100
    :goto_100
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 346
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v3

    if-nez v3, :cond_100

    .line 350
    :try_start_112
    new-instance v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    .line 351
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 352
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 353
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iput-object v3, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 354
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    :goto_12e
    if-ge v3, v6, :cond_14c

    aget-object v7, v5, v3

    .line 355
    iget-object v8, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_20b

    iget-object v8, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20b

    .line 356
    iput-object v7, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 360
    :cond_14c
    const/16 v3, 0x44

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/AutoPlanner;->build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v3

    .line 361
    if-eqz v3, :cond_100

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    if-eqz v4, :cond_100

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iget-object v5, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 364
    new-instance v13, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v13}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 365
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

    iput-object v4, v13, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 366
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 367
    const-string v2, "passive"

    iput-object v2, v13, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 368
    iget-object v2, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_190
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-object v10, v0

    .line 369
    const/4 v2, 0x1

    iget-object v3, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 370
    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1af
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_190

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-object v9, v0

    .line 371
    const/4 v2, 0x1

    iget v3, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v4, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 372
    new-instance v2, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/4 v3, 0x0

    const/4 v5, 0x3

    iget v6, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    div-int/2addr v6, v15

    div-int v4, v6, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iget v6, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    const/4 v7, 0x1

    iget v8, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 373
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    const-wide v18, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    iget-wide v0, v9, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

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

    .line 374
    iget-object v3, v13, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1af

    .line 381
    :catch_208
    move-exception v2

    goto/16 :goto_100

    .line 354
    :cond_20b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12e

    .line 377
    :cond_20f
    iget-object v2, v13, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_100

    .line 378
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 379
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21d
    .catch Ljava/lang/RuntimeException; {:try_start_112 .. :try_end_21d} :catch_208

    goto/16 :goto_100

    .line 385
    :cond_21f
    return-object v11
.end method

.method public static rest()Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 8

    .prologue
    const/4 v5, 0x4

    .line 166
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


# virtual methods
.method public aiGoal()Lcom/isaigu/gymapp/ai/AiModel$Goal;
    .registers 3

    .prologue
    .line 281
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
    .line 265
    const/16 v0, 0x168

    .line 266
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

    .line 267
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 268
    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    mul-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v1

    :goto_20
    move v1, v0

    .line 270
    goto :goto_9

    .line 271
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
    .line 201
    const-wide/16 v2, 0x0

    .line 202
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    int-to-double v4, v0

    add-double/2addr v2, v4

    .line 204
    cmpg-double v0, p1, v2

    if-gez v0, :cond_1f

    .line 208
    :goto_1e
    return v1

    .line 202
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 208
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

    .line 171
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
    .line 120
    new-instance v1, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 121
    iput-object p1, v1, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 122
    iput-object p2, v1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 124
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
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

    .line 126
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->copy()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 128
    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/Workout;->updatedAt:J

    .line 129
    return-object v1
.end method

.method public distinctExercises()I
    .registers 5

    .prologue
    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
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

    .line 225
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 226
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 229
    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public exerciseBlocks()I
    .registers 4

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
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

    .line 215
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 216
    add-int/lit8 v0, v1, 0x1

    :goto_1c
    move v1, v0

    .line 218
    goto :goto_8

    .line 219
    :cond_1e
    return v1

    :cond_1f
    move v0, v1

    goto :goto_1c
.end method

.method public isPassive()Z
    .registers 3

    .prologue
    .line 116
    const-string v0, "passive"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public longerThanSession()Z
    .registers 3

    .prologue
    .line 290
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
    .line 260
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
    .line 276
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
    .line 295
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

    .line 300
    :cond_16
    :goto_16
    return-void

    .line 298
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 299
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_16
.end method

.method public sequence()[[I
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 237
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 238
    :goto_7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_65

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 240
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-nez v1, :cond_21

    .line 238
    :goto_1d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_21
    move v4, v3

    move v5, v3

    move v6, v3

    .line 245
    :goto_24
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_56

    .line 246
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

    .line 247
    add-int/lit8 v5, v5, 0x1

    .line 248
    if-gt v4, v2, :cond_52

    .line 249
    add-int/lit8 v6, v6, 0x1

    .line 245
    :cond_52
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_24

    .line 253
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

    .line 255
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
    .line 285
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

    .line 192
    move v1, v0

    move v2, v0

    .line 193
    :goto_3
    if-ge v1, p1, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v2, v0

    .line 193
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 196
    :cond_1e
    return v2
.end method

.method public totalSeconds()I
    .registers 4

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
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

    .line 185
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 186
    goto :goto_8

    .line 187
    :cond_1b
    return v1
.end method
