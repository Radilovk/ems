.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "UserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    .line 1008
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iput p2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->val$position:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1010
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2300(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2300(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1011
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2800(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1012
    .local v0, "select":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2800(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1013
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2800(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1012
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1015
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2800(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->val$position:I

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1016
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2800(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2300(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$2900(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/bean/DeviceBean;)V

    .line 1017
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1900(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    .line 1018
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->notifyDataSetChanged()V

    .line 1020
    .end local v0    # "select":Z
    :cond_2
    return-void
.end method
