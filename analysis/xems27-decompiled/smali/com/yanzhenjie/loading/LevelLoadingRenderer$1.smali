.class Lcom/yanzhenjie/loading/LevelLoadingRenderer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LevelLoadingRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/loading/LevelLoadingRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/loading/LevelLoadingRenderer;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/loading/LevelLoadingRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    .line 64
    iput-object p1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$1;->this$0:Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 67
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 68
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$1;->this$0:Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    invoke-static {v0}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->access$000(Lcom/yanzhenjie/loading/LevelLoadingRenderer;)V

    .line 70
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$1;->this$0:Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    invoke-static {v0}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->access$200(Lcom/yanzhenjie/loading/LevelLoadingRenderer;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->access$102(Lcom/yanzhenjie/loading/LevelLoadingRenderer;F)F

    .line 71
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$1;->this$0:Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    invoke-static {v0}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->access$300(Lcom/yanzhenjie/loading/LevelLoadingRenderer;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->access$302(Lcom/yanzhenjie/loading/LevelLoadingRenderer;F)F

    .line 72
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 76
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 77
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$1;->this$0:Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->access$302(Lcom/yanzhenjie/loading/LevelLoadingRenderer;F)F

    .line 78
    return-void
.end method
