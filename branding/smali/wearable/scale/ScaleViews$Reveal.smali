.class final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reveal;
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
    name = "Reveal"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;)V
    .registers 2

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reveal;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    .line 398
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 402
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reveal;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->reveal:F

    .line 403
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reveal;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->invalidate()V

    .line 404
    return-void
.end method
