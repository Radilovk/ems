.class Lcom/isaigu/gymapp/train/model/TrainItem$2;
.super Landroid/os/CountDownTimer;
.source "TrainItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/model/TrainItem;->startPulse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/train/model/TrainItem;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .line 104
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->access$000(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->access$100(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 121
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    long-to-int v1, p1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->access$000(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 109
    return-void
.end method
