.class public Lcom/isaigu/gymapp/train/model/TrainItem;
.super Ljava/lang/Object;
.source "TrainItem.java"


# instance fields
.field commandListener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

.field public data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

.field device:Lcom/clj/fastble/data/BleDevice;

.field private handler:Landroid/os/Handler;

.field private isEmpty:Z

.field private maSelected:Z

.field public partsControl:[Z

.field public partsDisabled:[Z

.field pulseCountDown:Landroid/os/CountDownTimer;

.field receiver:Lcom/isaigu/gymapp/train/model/CommandReceiver;

.field recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

.field private selected:Z

.field sender:Lcom/isaigu/gymapp/train/model/CommandSender;

.field private trainItemListener:Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;

.field workCountDown:Landroid/os/CountDownTimer;

.field public workLength:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isEmpty"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->handler:Landroid/os/Handler;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    .line 40
    iput v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 68
    new-instance v1, Lcom/isaigu/gymapp/train/model/-$$Lambda$TrainItem$pHZLHK-EZShsuUNsWimNlakhxAo;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/model/-$$Lambda$TrainItem$pHZLHK-EZShsuUNsWimNlakhxAo;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->commandListener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

    .line 31
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty:Z

    .line 32
    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->selected:Z

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 17
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 17
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->startPulse()V

    return-void
.end method

.method private onTrainItemChange()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->trainItemListener:Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;->onTrainItemChange()V

    .line 215
    :cond_0
    return-void
.end method

.method private sendPulse()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    iget v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    .line 143
    :goto_0
    return-void
.end method

.method private declared-synchronized startPulse()V
    .locals 7

    monitor-enter p0

    .line 98
    nop

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    if-lez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 104
    .end local p0    # "this":Lcom/isaigu/gymapp/train/model/TrainItem;
    :cond_0
    new-instance v0, Lcom/isaigu/gymapp/train/model/TrainItem$2;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    const-wide/16 v5, 0x64

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/train/model/TrainItem$2;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;JJ)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pulseCountDown:Landroid/os/CountDownTimer;

    .line 123
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 124
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pulseCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addAllPartValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V

    .line 177
    return-void
.end method

.method public addAllPartValue(IZ)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "ignoreControl"    # Z

    .line 180
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 181
    .local v0, "buwei":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 182
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 183
    goto :goto_1

    .line 185
    :cond_0
    aget v2, v0, v1

    add-int/2addr v2, p1

    .line 186
    .local v2, "partValue":I
    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    .line 187
    const/16 v2, 0x64

    .line 189
    :cond_1
    if-gez v2, :cond_2

    .line 190
    const/4 v2, 0x0

    .line 192
    :cond_2
    aput v2, v0, v1

    .line 181
    .end local v2    # "partValue":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 195
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 196
    return-void
.end method

.method public addStrenth(I)V
    .locals 2
    .param p1, "value"    # I

    .line 199
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    add-int/2addr v0, p1

    .line 200
    .local v0, "strenth":I
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 201
    const/16 v0, 0x64

    .line 203
    :cond_0
    if-gez v0, :cond_1

    .line 204
    const/4 v0, 0x0

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 207
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 208
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 209
    return-void
.end method

.method public close()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->receiver:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandReceiver;->close()V

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/isaigu/gymapp/train/model/-$$Lambda$TrainItem$jyFjnZtUdFj7kY3DVWn4aFNTzCs;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/model/-$$Lambda$TrainItem$jyFjnZtUdFj7kY3DVWn4aFNTzCs;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->removeTrainRecord(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    return-object v0
.end method

.method public init([Z[Z)V
    .locals 4
    .param p1, "partsDisabled"    # [Z
    .param p2, "partsControl"    # [Z

    .line 51
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 52
    iput-object p2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    .line 53
    new-instance v0, Lcom/isaigu/gymapp/train/model/CommandSender;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/train/model/CommandSender;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    .line 54
    new-instance v1, Lcom/isaigu/gymapp/train/model/CommandReceiver;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:Lcom/clj/fastble/data/BleDevice;

    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->commandListener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/isaigu/gymapp/train/model/CommandReceiver;-><init>(Lcom/clj/fastble/data/BleDevice;Lcom/isaigu/gymapp/train/model/CommandSender;Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->receiver:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendStop()V

    .line 56
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V

    .line 57
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty:Z

    return v0
.end method

.method public isMaSelected()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->selected:Z

    return v0
.end method

.method public synthetic lambda$close$1$TrainItem()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:Lcom/clj/fastble/data/BleDevice;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method public synthetic lambda$new$0$TrainItem(I)V
    .locals 1
    .param p1, "batteryValue"    # I

    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput p1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    .line 70
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 71
    return-void
.end method

.method public onParamsChange()V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->updateRecordValue(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 132
    return-void
.end method

.method public reset()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 61
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 62
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 65
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 66
    return-void
.end method

.method public setDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .param p1, "device"    # Lcom/clj/fastble/data/BleDevice;

    .line 243
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:Lcom/clj/fastble/data/BleDevice;

    .line 244
    return-void
.end method

.method public setMaSelected(Z)V
    .locals 0
    .param p1, "maSelected"    # Z

    .line 239
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    .line 240
    return-void
.end method

.method public setRecordManager(Lcom/isaigu/gymapp/train/utils/TrainRecordManager;)V
    .locals 0
    .param p1, "recordManager"    # Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    .line 48
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    .line 49
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 231
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->selected:Z

    .line 232
    return-void
.end method

.method public setTrainItemListener(Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;)V
    .locals 0
    .param p1, "trainItemListener"    # Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;

    .line 218
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->trainItemListener:Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;

    .line 219
    return-void
.end method

.method public setTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 1
    .param p1, "trainProgram"    # Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 248
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V

    .line 249
    return-void
.end method

.method public setUserType(I)V
    .locals 1
    .param p1, "userType"    # I

    .line 145
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iput p1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 146
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 148
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 149
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 150
    return-void
.end method

.method public start()V
    .locals 8

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 78
    new-instance v0, Lcom/isaigu/gymapp/train/model/TrainItem$1;

    iget v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    const-wide/16 v6, 0x64

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/isaigu/gymapp/train/model/TrainItem$1;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;JJ)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workCountDown:Landroid/os/CountDownTimer;

    .line 90
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendStart()V

    .line 92
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->startPulse()V

    .line 93
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->addTrainRecord(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 94
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 95
    return-void

    .line 75
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pulseCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendStop()V

    .line 160
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 153
    .end local p0    # "this":Lcom/isaigu/gymapp/train/model/TrainItem;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
