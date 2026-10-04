.class final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;
.super Ljava/lang/Object;
.source "ScaleViews.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Grow1"
.end annotation


# instance fields
.field final v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;->v:Landroid/view/View;

    .line 1536
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 1540
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1541
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;->v:Landroid/view/View;

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;

    if-eqz v0, :cond_1c

    .line 1542
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;->v:Landroid/view/View;

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;

    iput v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;->grow:F

    .line 1548
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1549
    return-void

    .line 1543
    :cond_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;->v:Landroid/view/View;

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    if-eqz v0, :cond_29

    .line 1544
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;->v:Landroid/view/View;

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;

    iput v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;->grow:F

    goto :goto_16

    .line 1545
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;->v:Landroid/view/View;

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    if-eqz v0, :cond_16

    .line 1546
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;->v:Landroid/view/View;

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;

    iput v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;->grow:F

    goto :goto_16
.end method
