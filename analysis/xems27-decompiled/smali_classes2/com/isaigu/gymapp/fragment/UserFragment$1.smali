.class Lcom/isaigu/gymapp/fragment/UserFragment$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "UserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/UserFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/UserFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/UserFragment;

    .line 107
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 109
    new-instance v0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;-><init>()V

    .line 110
    .local v0, "dialog":Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 111
    return-void
.end method
