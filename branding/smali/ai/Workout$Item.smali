.class public final Lcom/isaigu/gymapp/ai/Workout$Item;
.super Ljava/lang/Object;
.source "Workout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/Workout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field public ex:Ljava/lang/String;

.field public reps:I

.field public sets:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 6

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    .line 34
    const/4 v0, 0x3

    const/16 v1, 0x1e

    invoke-static {p3, v0, v1}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    .line 35
    return-void
.end method


# virtual methods
.method public copy()Lcom/isaigu/gymapp/ai/Workout$Item;
    .registers 5

    .prologue
    .line 38
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    iget v3, p0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/Workout$Item;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
