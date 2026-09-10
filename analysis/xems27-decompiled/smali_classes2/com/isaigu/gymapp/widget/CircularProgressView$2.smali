.class Lcom/isaigu/gymapp/widget/CircularProgressView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/CircularProgressView;->setProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/CircularProgressView;

.field final synthetic val$currentProgress:F


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/CircularProgressView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/CircularProgressView;

    .line 285
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$2;->this$0:Lcom/isaigu/gymapp/widget/CircularProgressView;

    iput p2, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$2;->val$currentProgress:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$2;->this$0:Lcom/isaigu/gymapp/widget/CircularProgressView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->access$100(Lcom/isaigu/gymapp/widget/CircularProgressView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;

    .line 289
    .local v1, "listener":Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;
    iget v2, p0, Lcom/isaigu/gymapp/widget/CircularProgressView$2;->val$currentProgress:F

    invoke-interface {v1, v2}, Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;->onProgressUpdateEnd(F)V

    .line 290
    .end local v1    # "listener":Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;
    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method
