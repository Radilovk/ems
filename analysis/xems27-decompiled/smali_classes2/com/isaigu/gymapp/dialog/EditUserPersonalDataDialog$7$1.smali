.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7$1;
.super Ljava/lang/Object;
.source "EditUserPersonalDataDialog.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;

.field final synthetic val$datePickerDialog:Lcom/isaigu/gymapp/dialog/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;Lcom/isaigu/gymapp/dialog/DatePickerDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;

    .line 500
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7$1;->val$datePickerDialog:Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSelected(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 502
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 503
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->setYear(I)V

    .line 504
    invoke-virtual {v0, p2}, Ljava/util/Date;->setMonth(I)V

    .line 505
    invoke-virtual {v0, p3}, Ljava/util/Date;->setDate(I)V

    .line 506
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    .line 507
    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 508
    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    .line 509
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 510
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    const v3, 0x7f0d004b

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 511
    .local v1, "format":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$1100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;

    iget-object v3, v3, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7$1;->val$datePickerDialog:Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 513
    return-void
.end method
