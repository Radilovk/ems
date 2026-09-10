.class Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator$2;
.super Ljava/lang/Object;
.source "BallScaleRippleIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator;->createAnimation()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator;


# direct methods
.method constructor <init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator;

    .line 45
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator$2;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 48
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator$2;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator;->alpha:I

    .line 49
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator$2;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleIndicator;->postInvalidate()V

    .line 50
    return-void
.end method
