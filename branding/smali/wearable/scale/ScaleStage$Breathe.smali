.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breathe;
.super Ljava/lang/Object;
.source "ScaleStage.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Breathe"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V
    .registers 2

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breathe;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    .line 778
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3c75c28f    # 0.015f

    .line 782
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 783
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breathe;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    mul-float v2, v3, v0

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 784
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breathe;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    mul-float v2, v3, v0

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 785
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breathe;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breathe;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    if-nez v2, :cond_38

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    :goto_34
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 786
    return-void

    .line 785
    :cond_38
    const v2, 0x3f59999a    # 0.85f

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    goto :goto_34
.end method
