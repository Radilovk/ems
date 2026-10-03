.class final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Sweep;
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
    name = "Sweep"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;)V
    .registers 2

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Sweep;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    .line 706
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 710
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Sweep;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->shown:F

    .line 711
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Sweep;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;->invalidate()V

    .line 712
    return-void
.end method
