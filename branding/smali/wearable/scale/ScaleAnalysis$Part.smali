.class final Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Part;
.super Ljava/lang/Object;
.source "ScaleAnalysis.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Part"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;)V
    .registers 2

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Part;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;

    .line 599
    return-void
.end method


# virtual methods
.method public onSegment(I)V
    .registers 7

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 603
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fat"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "water"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "prot"

    aput-object v2, v0, v1

    const-string v1, "bone"

    aput-object v1, v0, v3

    .line 604
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Part;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Part;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focusMetric(I)V

    .line 605
    return-void
.end method
