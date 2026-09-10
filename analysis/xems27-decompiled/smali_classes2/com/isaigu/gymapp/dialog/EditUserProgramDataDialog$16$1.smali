.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16$1;
.super Ljava/lang/Object;
.source "EditUserProgramDataDialog.java"

# interfaces
.implements Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;->onAmountClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;

    .line 682
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionSelect(Lcom/isaigu/gymapp/bean/PickerViewData;)V
    .locals 2
    .param p1, "pickerViewData"    # Lcom/isaigu/gymapp/bean/PickerViewData;

    .line 684
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$1400(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/PickerViewData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 685
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$16;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/PickerViewData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 686
    return-void
.end method
