.class Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator$3;
.super Ljava/lang/Object;
.source "BallClipRotatePulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator;->createAnimation()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator;


# direct methods
.method constructor <init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator;

    .line 79
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator$3;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 82
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator$3;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator;->degrees:F

    .line 83
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator$3;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotatePulseIndicator;->postInvalidate()V

    .line 84
    return-void
.end method
