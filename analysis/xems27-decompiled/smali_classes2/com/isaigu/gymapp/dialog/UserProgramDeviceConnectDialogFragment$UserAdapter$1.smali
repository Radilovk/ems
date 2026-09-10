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

    .line 754
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    iput p2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 756
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1500(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1600(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;Lcom/isaigu/gymapp/bean/TrainUser;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 758
    .local v0, "select":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 759
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 758
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 762
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->access$1500(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1800(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 763
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1900(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    .line 764
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->notifyDataSetChanged()V

    .line 766
    .end local v0    # "select":Z
    :cond_2
    return-void
.end method
