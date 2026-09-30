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
.field public ex:Ljava/lang/String;

.field public hz:I

.field public off:I

.field public on:I

.field public pw:I

.field public rel:I

.field public reps:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 13

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 57
    const/16 v0, 0x78

    invoke-static {p3, v3, v0}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    .line 58
    const/16 v0, 0x190

    invoke-static {p4, v4, v0}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    .line 59
    invoke-static {p5, v3, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    .line 60
    invoke-static {p6, v2, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    .line 61
    invoke-static {p7, v2, v4}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 62
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0xb4

    invoke-static {p2, v1, v0}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    :goto_39
    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 63
    return-void

    .line 62
    :cond_3c
    const/4 v0, 0x3

    const/16 v1, 0x28

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    goto :goto_39
.end method


# virtual methods
.method public clampAll()V
    .registers 7

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xa

    .line 92
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    const/16 v1, 0x78

    invoke-static {v0, v4, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    .line 93
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    const/16 v1, 0x190

    invoke-static {v0, v5, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    .line 94
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v0, v4, v2}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    .line 95
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v0, v3, v2}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    .line 96
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 97
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_43

    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    const/16 v1, 0xb4

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    :goto_40
    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 98
    return-void

    .line 97
    :cond_43
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    const/4 v1, 0x3

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    goto :goto_40
.end method

.method public copy()Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 3

    .prologue
    .line 79
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 81
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 82
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    .line 83
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    .line 84
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    .line 85
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    .line 86
    iget v1, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 87
    return-object v0
.end method

.method public hasExercise()Z
    .registers 2

    .prologue
    .line 70
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
    .line 66
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public seconds()I
    .registers 5

    .prologue
    .line 75
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
