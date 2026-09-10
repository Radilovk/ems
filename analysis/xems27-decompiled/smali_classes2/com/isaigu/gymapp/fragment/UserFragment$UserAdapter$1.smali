.class Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "UserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    .line 186
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    iput p2, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$1;->val$position:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 188
    new-instance v0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;-><init>()V

    .line 189
    .local v0, "dialog":Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->access$200(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 191
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->setArguments(Landroid/os/Bundle;)V

    .line 192
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->setEditMode(Z)V

    .line 193
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 194
    return-void
.end method
