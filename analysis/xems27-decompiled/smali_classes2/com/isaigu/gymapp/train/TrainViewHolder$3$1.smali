.class Lcom/isaigu/gymapp/train/TrainViewHolder$3$1;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder$3;->onSwipeRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/train/TrainViewHolder$3;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/train/TrainViewHolder$3;

    .line 167
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$3$1;->this$1:Lcom/isaigu/gymapp/train/TrainViewHolder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$3$1;->this$1:Lcom/isaigu/gymapp/train/TrainViewHolder$3;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder$3;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->deleteButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    return-void
.end method
