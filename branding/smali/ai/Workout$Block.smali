.class public final Lcom/isaigu/gymapp/ai/Workout$Block;
.super Ljava/lang/Object;
.source "Workout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/Workout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Block"
.end annotation


# instance fields
.field public dbl:Z

.field public ex:Ljava/lang/String;

.field public hz:I

.field public hz2:I

.field public off:I

.field public on:I

.field public pw:I

.field public rampIn:I

.field public rampOut:I

.field public rel:I

.field public reps:I

.field public str2:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x1f4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x7

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    .line 59
    const/16 v0, 0x2d

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    .line 61
    iput v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    .line 62
    iput v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 14

    .prologue
    const/16 v5, 0x1f4

    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x7

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    .line 59
    const/16 v0, 0x2d

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    .line 61
    iput v5, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    .line 62
    iput v5, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    .line 67
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 68
    const/16 v0, 0x78

    invoke-static {p3, v3, v0}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    .line 69
    const/16 v0, 0x190

    invoke-static {p4, v4, v0}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    .line 70
    invoke-static {p5, v3, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    .line 71
    invoke-static {p6, v2, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    .line 72
    invoke-static {p7, v2, v4}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 73
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 v0, 0xb4

    invoke-static {p2, v1, v0}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    :goto_46
    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 74
    return-void

    .line 73
    :cond_49
    const/4 v0, 0x3

    const/16 v1, 0x28

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    goto :goto_46
.end method


# virtual methods
.method public clampAll()V
    .registers 8

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const/16 v5, 0x64

    const/16 v2, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 113
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    const/16 v1, 0x78

    invoke-static {v0, v3, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    .line 114
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    const/16 v1, 0x190

    invoke-static {v0, v5, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    .line 115
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v0, v3, v2}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    .line 116
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v0, v4, v2}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    .line 117
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 118
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_86

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    const/16 v1, 0xb4

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    :goto_42
    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 119
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    const/16 v1, 0x78

    invoke-static {v0, v3, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    .line 120
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    const/4 v1, 0x5

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    .line 121
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    const/16 v1, 0xbb8

    invoke-static {v0, v4, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    .line 122
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    const/16 v1, 0xbb8

    invoke-static {v0, v4, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    .line 123
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_85

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    if-ge v0, v3, :cond_85

    .line 124
    iput v3, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    .line 126
    :cond_85
    return-void

    .line 118
    :cond_86
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    const/4 v1, 0x3

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    goto :goto_42
.end method

.method public copy()Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 3

    .prologue
    .line 90
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 92
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 93
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    .line 94
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    .line 95
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    .line 96
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    .line 97
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 98
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    .line 99
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    .line 100
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    .line 101
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    .line 102
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    .line 103
    return-object v0
.end method

.method public hasExercise()Z
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isRest()Z
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public off2()I
    .registers 3

    .prologue
    .line 108
    const/4 v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public seconds()I
    .registers 5

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    goto :goto_8
.end method
