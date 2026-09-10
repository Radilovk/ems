.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "EditUserProgramDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 455
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 457
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 466
    .local v0, "train":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v2, 0x5

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 467
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x15e

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 468
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v2, 0x4

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 469
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v2, 0x0

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 470
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x4b0

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 471
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v2, 0x2

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 473
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$1900(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 474
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 475
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 476
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 477
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2300(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 478
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2400(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$9;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 479
    return-void
.end method
