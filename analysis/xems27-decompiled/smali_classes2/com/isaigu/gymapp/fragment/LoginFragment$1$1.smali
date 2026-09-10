.class Lcom/isaigu/gymapp/fragment/LoginFragment$1$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/LoginFragment$1;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/LoginFragment$1;

.field final synthetic val$fragment1:Lcom/isaigu/gymapp/BaseFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/LoginFragment$1;Lcom/isaigu/gymapp/BaseFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/LoginFragment$1;

    .line 122
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/LoginFragment$1;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1$1;->val$fragment1:Lcom/isaigu/gymapp/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 124
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/LoginFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1$1;->val$fragment1:Lcom/isaigu/gymapp/BaseFragment;

    const v2, 0x7f0900a4

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    .line 126
    return-void
.end method
