.class public final Lcom/isaigu/gymapp/ai/MapClock;
.super Ljava/lang/Object;
.source "MapClock.java"


# static fields
.field static final FALLBACK_S:D = 3.0


# instance fields
.field private blockS:D

.field private cycles:I

.field private done:Z

.field private elapsedS:D

.field private index:I

.field private final map:Lcom/isaigu/gymapp/ai/Workout;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/ai/Workout;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/MapClock;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 21
    if-eqz p1, :cond_f

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_f
    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->done:Z

    .line 22
    return-void

    .line 21
    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private next()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 96
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    .line 99
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/MapClock;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_28

    .line 100
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/MapClock;->done:Z

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    .line 103
    :cond_28
    return v2
.end method


# virtual methods
.method public block()Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 3

    .prologue
    .line 29
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
    .line 38
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    return-wide v0
.end method

.method public getCycles()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    return v0
.end method

.method public getElapsedS()D
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->elapsedS:D

    return-wide v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->done:Z

    return v0
.end method

.method public onCycle()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    move v0, v1

    .line 78
    :cond_f
    :goto_f
    return v0

    .line 69
    :cond_10
    iget v3, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    iget v2, v2, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    if-lt v3, v2, :cond_28

    .line 70
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/MapClock;->next()Z

    .line 71
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_f

    .line 73
    iput v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    goto :goto_f

    .line 77
    :cond_28
    iget v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->cycles:I

    move v0, v1

    .line 78
    goto :goto_f
.end method

.method public position()D
    .registers 8

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->done:Z

    if-eqz v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v0

    int-to-double v0, v0

    .line 57
    :goto_b
    return-wide v0

    .line 55
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    .line 57
    :goto_18
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/MapClock;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget v3, p0, Lcom/isaigu/gymapp/ai/MapClock;->index:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/ai/Workout;->startOf(I)I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    goto :goto_b

    .line 56
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

.method public tick(D)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v1

    .line 84
    if-nez v1, :cond_8

    .line 92
    :cond_7
    :goto_7
    return v0

    .line 87
    :cond_8
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    .line 88
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapClock;->elapsedS:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/MapClock;->elapsedS:D

    .line 89
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    iget v1, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    int-to-double v4, v1

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_7

    .line 90
    :goto_21
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/MapClock;->next()Z

    move-result v0

    goto :goto_7

    .line 89
    :cond_26
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/MapClock;->blockS:D

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    add-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_7

    goto :goto_21
.end method
