.class Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator$1;
.super Ljava/lang/Object;
.source "LineScalePartyIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->createAnimation()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator$1;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;

    iput p2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator$1;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;

    iget-object v1, v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->scaleFloats:[F

    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    .line 54
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator$1;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->postInvalidate()V

    .line 55
    return-void
.end method
