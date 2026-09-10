.class Lcom/isaigu/gymapp/fragment/TrainFragment$14;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;


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

    .line 527
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$14;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;I)V
    .locals 3
    .param p1, "swipeLeftMenu"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    .param p2, "swipeRightMenu"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    .param p3, "viewType"    # I

    .line 530
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$14;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$14;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 531
    const v2, 0x7f0600a0

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setBackgroundColor(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$14;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 532
    const v2, 0x7f0d0043

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setText(Ljava/lang/String;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    .line 533
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setTextColor(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    .line 534
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setTextSize(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    .line 535
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setWidth(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    .line 536
    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setHeight(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    .line 537
    .local v0, "deleteItem":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;
    invoke-virtual {p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->addMenuItem(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;)V

    .line 538
    return-void
.end method
