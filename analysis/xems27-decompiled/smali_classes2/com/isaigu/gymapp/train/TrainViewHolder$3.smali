.class Lcom/isaigu/gymapp/train/TrainViewHolder$3;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder;->setDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 152
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$3;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeLeft()V
    .locals 3

    .line 155
    const-string v0, "www"

    const-string v1, "\u5de6\u5212"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$3;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->deleteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$3;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->deleteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$3;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTranslationX(F)V

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$3;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 162
    return-void
.end method

.method public onSwipeRight()V
    .locals 3

    .line 166
    const-string v0, "www"

    const-string v1, "\u53f3\u5212"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$3;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$3;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$3$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$3$1;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder$3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 175
    return-void
.end method
