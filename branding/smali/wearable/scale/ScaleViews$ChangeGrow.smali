.class final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ChangeGrow;
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
    name = "ChangeGrow"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;)V
    .registers 2

    .prologue
    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1243
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ChangeGrow;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    .line 1244
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ChangeGrow;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->grow:F

    .line 1249
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ChangeGrow;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;->invalidate()V

    .line 1250
    return-void
.end method
