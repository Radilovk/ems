.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;
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

    .line 408
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 410
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 418
    .local v0, "train":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x55

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 419
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x15e

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 420
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v2, 0x4

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 421
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 422
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x4b0

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 425
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$900(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 426
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$1000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 427
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$1100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 428
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$1200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 429
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$1300(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$7;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 430
    return-void
.end method
