.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "EditUserPersonalDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .line 497
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 499
    new-instance v0, Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/DatePickerDialog;-><init>()V

    .line 500
    .local v0, "datePickerDialog":Lcom/isaigu/gymapp/dialog/DatePickerDialog;
    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7$1;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;Lcom/isaigu/gymapp/dialog/DatePickerDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->setCallback(Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;)V

    .line 515
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 516
    return-void
.end method
