.class Lcom/isaigu/gymapp/fragment/NewTrainFragment$4;
.super Ljava/lang/Object;
.source "NewTrainFragment.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;


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

    .line 251
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$4;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V
    .locals 4
    .param p1, "menuBridge"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    .line 255
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->closeMenu()V

    .line 257
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->getAdapterPosition()I

    move-result v0

    .line 258
    .local v0, "position":I
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$4;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 259
    .local v1, "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$4;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->removeTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 260
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$4;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 261
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v3, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/mgr/DataMgr;->removeTrainingUser(Ljava/lang/String;)V

    .line 262
    return-void
.end method
