.class Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "ProgramPlanDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    .line 76
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 79
    return-void
.end method
