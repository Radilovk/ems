.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "UserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    iput p2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 756
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1500(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    iget v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1600(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;Lcom/isaigu/gymapp/bean/TrainUser;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 757
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 758
    .local v1, "select":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 759
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 762
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    iget-object v3, v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1500(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    :goto_2
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1800(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 763
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1900(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    .line 764
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->notifyDataSetChanged()V

    .line 766
    .end local v0    # "i":I
    .end local v1    # "select":Z
    :cond_1
    return-void

    .restart local v0    # "i":I
    .restart local v1    # "select":Z
    :cond_2
    move v2, v3

    .line 761
    goto :goto_1

    .line 762
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method
