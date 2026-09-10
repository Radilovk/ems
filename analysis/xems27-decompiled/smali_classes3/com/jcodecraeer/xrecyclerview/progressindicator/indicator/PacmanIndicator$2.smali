.class Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$2;
.super Ljava/lang/Object;
.source "PacmanIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->createAnimation()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;


# direct methods
.method constructor <init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;

    .line 80
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$2;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 83
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$2;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->access$102(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;I)I

    .line 84
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$2;->this$0:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->postInvalidate()V

    .line 85
    return-void
.end method
