.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->addListener(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

.field final synthetic val$position:I

.field final synthetic val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

.field final synthetic val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .line 1424
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iput p4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmountChange(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "amount"    # I

    .line 1426
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1427
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1428
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1429
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1500(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1430
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->firstUpdatePulseContinue(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1434
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iput p2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1435
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-static {v1, v2, v3, v0, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1200(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    .line 1436
    return-void
.end method
