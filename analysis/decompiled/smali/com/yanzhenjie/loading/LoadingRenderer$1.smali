.class Lcom/yanzhenjie/loading/LoadingRenderer$1;
.super Ljava/lang/Object;
.source "LoadingRenderer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/loading/LoadingRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/loading/LoadingRenderer;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/loading/LoadingRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yanzhenjie/loading/LoadingRenderer;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yanzhenjie/loading/LoadingRenderer$1;->this$0:Lcom/yanzhenjie/loading/LoadingRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/yanzhenjie/loading/LoadingRenderer$1;->this$0:Lcom/yanzhenjie/loading/LoadingRenderer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/loading/LoadingRenderer;->computeRender(F)V

    .line 38
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer$1;->this$0:Lcom/yanzhenjie/loading/LoadingRenderer;

    invoke-static {v0}, Lcom/yanzhenjie/loading/LoadingRenderer;->access$000(Lcom/yanzhenjie/loading/LoadingRenderer;)V

    .line 39
    return-void
.end method
