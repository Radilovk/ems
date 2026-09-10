.class Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$2;
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

.field final synthetic val$user:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    .line 218
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$2;->val$user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 220
    new-instance v0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;-><init>()V

    .line 221
    .local v0, "dialog":Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$2;->val$user:Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v3, "user"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 223
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->setArguments(Landroid/os/Bundle;)V

    .line 224
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 225
    return-void
.end method
