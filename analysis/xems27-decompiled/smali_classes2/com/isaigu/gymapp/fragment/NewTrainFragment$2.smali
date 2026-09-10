.class Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;
.super Ljava/lang/Object;
.source "NewTrainFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/train/listener/OnTrainListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/NewTrainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 175
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteButtonClick(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p1, "item"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 193
    return-void
.end method

.method public onEmptyItemClick(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 2
    .param p1, "item"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 179
    return-void
.end method

.method public onItemChange(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p1, "item"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method

.method public onItemClick(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p1, "item"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setSelected(Z)V

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 187
    :cond_0
    return-void
.end method
