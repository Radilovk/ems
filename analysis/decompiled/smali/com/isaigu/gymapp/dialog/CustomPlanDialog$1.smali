.class Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "CustomPlanDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/CustomPlanDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/CustomPlanDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->access$000(Lcom/isaigu/gymapp/dialog/CustomPlanDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    const v4, 0x7f08006d

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->access$100(Lcom/isaigu/gymapp/dialog/CustomPlanDialog;Landroid/os/IBinder;)V

    .line 55
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 56
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->access$200(Lcom/isaigu/gymapp/dialog/CustomPlanDialog;)Lcom/isaigu/gymapp/dialog/CustomPlanDialog$SaveProgramListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->access$200(Lcom/isaigu/gymapp/dialog/CustomPlanDialog;)Lcom/isaigu/gymapp/dialog/CustomPlanDialog$SaveProgramListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$SaveProgramListener;->onSaveProgram(Ljava/lang/String;)V

    goto :goto_0
.end method
