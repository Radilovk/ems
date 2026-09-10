.class Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "SaveProgramDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$000(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    const v4, 0x7f08006d

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 67
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$100(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;Landroid/os/IBinder;)V

    .line 59
    :cond_2
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 60
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$200(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$200(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;->onSaveProgram(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
