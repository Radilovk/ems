.class Lcom/isaigu/gymapp/widget/CircularProgressView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/CircularProgressView;->resetAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/CircularProgressView;

.field wasCancelled:Z


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/CircularProgressView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/CircularProgressView;

    .line 387
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$5;->this$0:Lcom/isaigu/gymapp/widget/CircularProgressView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$5;->wasCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$5;->wasCancelled:Z

    .line 392
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 396
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$5;->wasCancelled:Z

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$5;->this$0:Lcom/isaigu/gymapp/widget/CircularProgressView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->resetAnimation()V

    .line 398
    :cond_0
    return-void
.end method
