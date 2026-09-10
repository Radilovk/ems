.class Lcom/isaigu/gymapp/fragment/TrainFragment$15;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 542
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$15;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V
    .locals 2
    .param p1, "menuBridge"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    .line 546
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->closeMenu()V

    .line 548
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$15;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->removeUser(I)V

    .line 549
    return-void
.end method
