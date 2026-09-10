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

    .prologue
    .line 526
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$14;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;I)V
    .locals 5
    .param p1, "swipeLeftMenu"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    .param p2, "swipeRightMenu"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    .param p3, "viewType"    # I

    .prologue
    const/4 v4, -0x1

    .line 529
    new-instance v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$14;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$14;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f0d0089

    .line 530
    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setBackgroundColor(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$14;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v3, 0x7f080036

    .line 531
    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setText(Ljava/lang/String;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v1

    .line 532
    invoke-virtual {v1, v4}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setTextColor(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v1

    const/16 v2, 0x10

    .line 533
    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setTextSize(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v1

    const/16 v2, 0x64

    .line 534
    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setWidth(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v1

    .line 535
    invoke-virtual {v1, v4}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setHeight(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    .line 536
    .local v0, "deleteItem":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;
    invoke-virtual {p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->addMenuItem(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;)V

    .line 537
    return-void
.end method
