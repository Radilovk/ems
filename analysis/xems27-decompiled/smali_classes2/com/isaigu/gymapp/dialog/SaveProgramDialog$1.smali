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

    .line 48
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$000(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    const v3, 0x7f0d007b

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 54
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$100(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;Landroid/os/IBinder;)V

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 60
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$200(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$200(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;->onSaveProgram(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
