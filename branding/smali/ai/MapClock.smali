.class public final Lcom/isaigu/gymapp/ai/MapClock;
.super Ljava/lang/Object;
.source "MapClock.java"


# static fields
.field static final FALLBACK_S:D = 3.0


# instance fields
.field private blockS:D

.field private cycleS:D

.field private cycles:I

.field private done:Z

.field private elapsedS:D

.field private index:I

.field private final map:Lcom/isaigu/gymapp/ai/Workout;

.field private restS:D


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/ai/Workout;)V
    .registers 4

    .prologue
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycleS:D

    .line 21
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->restS:D

    .line 24
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/MapClock;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 25
    if-eqz p1, :cond_15

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_15
    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->done:Z

    .line 26
    return-void

    .line 25
    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private next()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 117
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->restS:D

    .line 118
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    .line 121
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapClock;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2c

    .line 122
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/MapClock;->done:Z

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    .line 125
    :cond_2c
    return v2
.end method


# virtual methods
.method public block()Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 3

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->done:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    goto :goto_5
.end method

.method public getBlockS()D
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    return-wide v0
.end method

.method public getCycles()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    return v0
.end method

.method public getElapsedS()D
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->elapsedS:D

    return-wide v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->done:Z

    return v0
.end method

.method public onCycle()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    move v0, v1

    .line 82
    :cond_f
    :goto_f
    return v0

    .line 73
    :cond_10
    iget v3, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    iget v2, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    if-lt v3, v2, :cond_28

    .line 74
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/MapClock;->next()Z

    .line 75
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_f

    .line 77
    iput v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    goto :goto_f

    .line 81
    :cond_28
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    move v0, v1

    .line 82
    goto :goto_f
.end method

.method public position()D
    .registers 8

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->done:Z

    if-eqz v0, :cond_c

    .line 57
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v0

    int-to-double v0, v0

    .line 61
    :goto_b
    return-wide v0

    .line 59
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    .line 61
    :goto_18
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/MapClock;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget v3, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/ai/Workout;->startOf(I)I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    goto :goto_b

    .line 60
    :cond_23
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v1

    int-to-double v2, v1

    iget v1, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    int-to-double v4, v1

    iget v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    const/4 v6, 0x1

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    int-to-double v0, v0

    mul-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_18
.end method

.method public restLength()D
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v2

    .line 113
    if-nez v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/MapClock;->restS:D

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->restS:D

    goto :goto_8

    :cond_12
    iget v0, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    int-to-double v0, v0

    goto :goto_8
.end method

.method public setCycleS(D)V
    .registers 4

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycleS:D

    .line 103
    return-void
.end method

.method public setRestS(D)V
    .registers 4

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/MapClock;->restS:D

    .line 108
    return-void
.end method

.method public tick(D)Z
    .registers 14

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v3

    .line 88
    if-nez v3, :cond_b

    move v0, v2

    .line 97
    :goto_a
    return v0

    .line 91
    :cond_b
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    .line 92
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->elapsedS:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->elapsedS:D

    .line 93
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycleS:D

    cmpl-double v0, v0, v8

    if-lez v0, :cond_43

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    int-to-double v0, v0

    iget v4, v3, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycleS:D

    mul-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 94
    :goto_2a
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->restS:D

    cmpl-double v0, v0, v8

    if-ltz v0, :cond_49

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->restS:D

    :goto_3a
    cmpl-double v0, v4, v0

    if-ltz v0, :cond_56

    .line 95
    :cond_3e
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/MapClock;->next()Z

    move-result v0

    goto :goto_a

    .line 93
    :cond_43
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    int-to-double v0, v0

    goto :goto_2a

    .line 94
    :cond_49
    iget v0, v3, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    int-to-double v0, v0

    goto :goto_3a

    :cond_4d
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    add-double/2addr v0, v6

    cmpl-double v0, v4, v0

    if-gez v0, :cond_3e

    :cond_56
    move v0, v2

    .line 97
    goto :goto_a
.end method
