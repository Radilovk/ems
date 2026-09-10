.class Lcom/isaigu/gymapp/train/model/TrainItem$1;
.super Landroid/os/CountDownTimer;
.source "TrainItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/model/TrainItem;->start()V
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

    .line 78
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$1;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 85
    const-string v0, "www"

    const-string v1, "\u5de5\u4f5c\u7ed3\u675f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$1;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$1;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->saveTrainRecord(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$1;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V

    .line 88
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$1;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v2, v1

    iput v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$1;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->access$000(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 82
    return-void
.end method
