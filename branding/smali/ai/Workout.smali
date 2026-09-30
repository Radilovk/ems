.class public final Lcom/isaigu/gymapp/ai/Workout;
.super Ljava/lang/Object;
.source "Workout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/Workout$Item;
    }
.end annotation


# static fields
.field static final FRAME_S:I = 0x168

.field public static final GOAL_FAT:Ljava/lang/String; = "fat"

.field public static final GOAL_TONE:Ljava/lang/String; = "tone"

.field public static final REPS_MAX:I = 0x1e

.field public static final REPS_MIN:I = 0x3

.field static final REP_S:I = 0x18

.field public static final SETS_MAX:I = 0x8

.field public static final SETS_MIN:I = 0x1


# instance fields
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

.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout$Item;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public preset:Z

.field public updatedAt:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 44
    const-string v0, "tone"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    return-void
.end method

.method static clamp(III)I
    .registers 4

    .prologue
    .line 53
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static presets()Ljava/util/List;
    .registers 14
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
    const/4 v13, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 139
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 140
    :goto_9
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_e7

    .line 141
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    aget-object v3, v2, v0

    .line 142
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    if-eqz v2, :cond_26

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    move-object v6, v2

    .line 144
    :goto_21
    if-nez v6, :cond_2f

    .line 140
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 143
    :cond_26
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v5, 0x2

    aget-object v2, v2, v5

    move-object v6, v2

    goto :goto_21

    .line 147
    :cond_2f
    new-instance v8, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v8}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preset:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 149
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v2

    .line 150
    if-eqz v2, :cond_b7

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v2

    :goto_53
    iput-object v2, v8, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 151
    const-string v2, "cardio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    const-string v2, "fat"

    :goto_5f
    iput-object v2, v8, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 152
    const-string v2, "glutes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 153
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v3, "glutes"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_70
    :goto_70
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/Workout;->sessionMinutes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/lit16 v2, v2, -0x168

    div-int/lit8 v2, v2, 0x18

    .line 160
    array-length v3, v6

    div-int/2addr v2, v3

    const/16 v3, 0x8

    invoke-static {v2, v13, v3}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v3

    .line 161
    array-length v9, v6

    move v5, v1

    :goto_84
    if-ge v5, v9, :cond_e0

    aget-object v10, v6, v5

    .line 162
    const-string v2, "plank"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a0

    const-string v2, "side-plank"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a0

    const-string v2, "elliptical"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    :cond_a0
    move v2, v4

    .line 163
    :goto_a1
    iget-object v11, v8, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    new-instance v12, Lcom/isaigu/gymapp/ai/Workout$Item;

    if-eqz v2, :cond_de

    add-int/lit8 v2, v3, -0x2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_ad
    invoke-direct {v12, v10, v4, v2}, Lcom/isaigu/gymapp/ai/Workout$Item;-><init>(Ljava/lang/String;II)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_84

    :cond_b7
    move-object v2, v3

    .line 150
    goto :goto_53

    .line 151
    :cond_b9
    const-string v2, "tone"

    goto :goto_5f

    .line 154
    :cond_bc
    const-string v2, "core"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 155
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v3, "abs"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 156
    :cond_cc
    const-string v2, "back_active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 157
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    const-string v3, "back"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_dc
    move v2, v1

    .line 162
    goto :goto_a1

    :cond_de
    move v2, v3

    .line 163
    goto :goto_ad

    .line 165
    :cond_e0
    iput-boolean v4, v8, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 166
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 168
    :cond_e7
    return-object v7
.end method


# virtual methods
.method public aiGoal()Lcom/isaigu/gymapp/ai/AiModel$Goal;
    .registers 3

    .prologue
    .line 98
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

.method public copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;
    .registers 7

    .prologue
    .line 57
    new-instance v1, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 58
    iput-object p1, v1, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 59
    iput-object p2, v1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 61
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    .line 63
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Item;->copy()Lcom/isaigu/gymapp/ai/Workout$Item;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 65
    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/Workout;->updatedAt:J

    .line 66
    return-object v1
.end method

.method public longerThanSession()Z
    .registers 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->minutes()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->sessionMinutes()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public minutes()I
    .registers 7

    .prologue
    .line 79
    const/16 v0, 0x168

    .line 80
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    .line 81
    iget v3, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v1

    move v1, v0

    .line 82
    goto :goto_9

    .line 83
    :cond_1f
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
.end method

.method public move(II)V
    .registers 5

    .prologue
    .line 124
    if-ltz p1, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_16

    if-ltz p2, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_16

    if-ne p1, p2, :cond_17

    .line 129
    :cond_16
    :goto_16
    return-void

    .line 127
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    .line 128
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_16
.end method

.method public sequence()[[I
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    .line 110
    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 111
    goto :goto_e

    :cond_22
    move v4, v5

    .line 112
    :goto_23
    if-gt v4, v1, :cond_4c

    move v3, v2

    .line 113
    :goto_26
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_48

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    if-lt v0, v4, :cond_44

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v4, v0, v5

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_44
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_26

    .line 112
    :cond_48
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_23

    .line 119
    :cond_4c
    new-array v0, v2, [[I

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    return-object v0
.end method

.method public sessionMinutes()I
    .registers 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->aiGoal()Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public totalSets()I
    .registers 4

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    .line 72
    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    add-int/2addr v0, v1

    move v1, v0

    .line 73
    goto :goto_8

    .line 74
    :cond_19
    return v1
.end method
