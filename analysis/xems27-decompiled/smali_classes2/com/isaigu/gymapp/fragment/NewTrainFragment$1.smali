.class Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;
.super Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;
.source "NewTrainFragment.java"


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

    .line 148
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 151
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$002(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Z)Z

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 157
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 172
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$002(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Z)Z

    .line 165
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 168
    :cond_1
    return-void
.end method
