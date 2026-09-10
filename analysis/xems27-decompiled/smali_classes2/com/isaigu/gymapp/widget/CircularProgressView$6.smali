.class Lcom/isaigu/gymapp/widget/CircularProgressView$6;
.super Ljava/lang/Object;
.source "CircularProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/CircularProgressView;->createIndeterminateAnimator(F)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/CircularProgressView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/CircularProgressView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/CircularProgressView;

    .line 437
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$6;->this$0:Lcom/isaigu/gymapp/widget/CircularProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 440
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$6;->this$0:Lcom/isaigu/gymapp/widget/CircularProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/CircularProgressView;->access$302(Lcom/isaigu/gymapp/widget/CircularProgressView;F)F

    .line 441
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$6;->this$0:Lcom/isaigu/gymapp/widget/CircularProgressView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->invalidate()V

    .line 442
    return-void
.end method
