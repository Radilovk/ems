.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12$1;
.super Ljava/lang/Object;
.source "EditUserProgramDataDialog.java"

# interfaces
.implements Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;

    .line 650
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelect(Lcom/isaigu/gymapp/bean/PickerViewData;)V
    .locals 3
    .param p1, "pickerViewData"    # Lcom/isaigu/gymapp/bean/PickerViewData;

    .line 652
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$3000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/PickerViewData;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$12;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/PickerViewData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 654
    return-void
.end method
