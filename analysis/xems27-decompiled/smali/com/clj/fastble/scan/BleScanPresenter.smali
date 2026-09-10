.class public abstract Lcom/clj/fastble/scan/BleScanPresenter;
.super Ljava/lang/Object;
.source "BleScanPresenter.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/scan/BleScanPresenter$ScanHandler;
    }
.end annotation


# instance fields
.field private final mBleDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mBleScanPresenterImp:Lcom/clj/fastble/callback/BleScanPresenterImp;

.field private mDeviceMac:Ljava/lang/String;

.field private mDeviceNames:[Ljava/lang/String;

.field private mFuzzy:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHandling:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedConnect:Z

.field private mScanTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/clj/fastble/scan/BleScanPresenter;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/clj/fastble/scan/BleScanPresenter;
    .param p1, "x1"    # Lcom/clj/fastble/data/BleDevice;

    .line 26
    invoke-direct {p0, p1}, Lcom/clj/fastble/scan/BleScanPresenter;->handleResult(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method static synthetic access$100(Lcom/clj/fastble/scan/BleScanPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/clj/fastble/scan/BleScanPresenter;

    .line 26
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    return-object v0
.end method

.method private checkDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 8
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 113
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mDeviceMac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mDeviceNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, v1, :cond_1

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/clj/fastble/scan/BleScanPresenter;->correctDeviceAndNextStep(Lcom/clj/fastble/data/BleDevice;)V

    .line 115
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mDeviceMac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mDeviceMac:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mDeviceNames:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 125
    .local v0, "equal":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mDeviceNames:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    .line 126
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "remoteName":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 128
    const-string v6, ""

    .line 129
    :cond_3
    iget-boolean v7, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mFuzzy:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 130
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "remoteName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_7

    .line 134
    return-void

    .line 138
    .end local v0    # "equal":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_7
    invoke-direct {p0, p1}, Lcom/clj/fastble/scan/BleScanPresenter;->correctDeviceAndNextStep(Lcom/clj/fastble/data/BleDevice;)V

    .line 139
    return-void
.end method

.method private correctDeviceAndNextStep(Lcom/clj/fastble/data/BleDevice;)V
    .locals 6
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 143
    iget-boolean v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mNeedConnect:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "devices detected  ------  name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mac:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Rssi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  scanRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getScanRecord()[B

    move-result-object v1

    invoke-static {v1}, Lcom/clj/fastble/utils/HexUtil;->formatHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/clj/fastble/scan/BleScanPresenter$2;

    invoke-direct {v1, p0}, Lcom/clj/fastble/scan/BleScanPresenter$2;-><init>(Lcom/clj/fastble/scan/BleScanPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 159
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 160
    .local v0, "hasFound":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clj/fastble/data/BleDevice;

    .line 161
    .local v2, "result":Lcom/clj/fastble/data/BleDevice;
    invoke-virtual {v2}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    .end local v2    # "result":Lcom/clj/fastble/data/BleDevice;
    :cond_1
    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device detected  ------  name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Rssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  scanRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getScanRecord()[B

    move-result-object v2

    invoke-static {v2, v3}, Lcom/clj/fastble/utils/HexUtil;->formatHexString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v1, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/clj/fastble/scan/BleScanPresenter$3;

    invoke-direct {v2, p0, p1}, Lcom/clj/fastble/scan/BleScanPresenter$3;-><init>(Lcom/clj/fastble/scan/BleScanPresenter;Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    .end local v0    # "hasFound":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_3
    :goto_1
    return-void
.end method

.method private handleResult(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 66
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/clj/fastble/scan/BleScanPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/clj/fastble/scan/BleScanPresenter$1;-><init>(Lcom/clj/fastble/scan/BleScanPresenter;Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    invoke-direct {p0, p1}, Lcom/clj/fastble/scan/BleScanPresenter;->checkDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getBleScanPresenterImp()Lcom/clj/fastble/callback/BleScanPresenterImp;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mBleScanPresenterImp:Lcom/clj/fastble/callback/BleScanPresenterImp;

    return-object v0
.end method

.method public ismNeedConnect()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mNeedConnect:Z

    return v0
.end method

.method public final notifyScanStarted(Z)V
    .locals 5
    .param p1, "success"    # Z

    .line 184
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    invoke-virtual {p0}, Lcom/clj/fastble/scan/BleScanPresenter;->removeHandlerMsg()V

    .line 188
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mScanTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 189
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/clj/fastble/scan/BleScanPresenter$4;

    invoke-direct {v1, p0}, Lcom/clj/fastble/scan/BleScanPresenter$4;-><init>(Lcom/clj/fastble/scan/BleScanPresenter;)V

    iget-wide v2, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mScanTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/clj/fastble/scan/BleScanPresenter$5;

    invoke-direct {v1, p0, p1}, Lcom/clj/fastble/scan/BleScanPresenter$5;-><init>(Lcom/clj/fastble/scan/BleScanPresenter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method public final notifyScanStopped()V
    .locals 2

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mHandling:Z

    .line 207
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 208
    invoke-virtual {p0}, Lcom/clj/fastble/scan/BleScanPresenter;->removeHandlerMsg()V

    .line 209
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/clj/fastble/scan/BleScanPresenter$6;

    invoke-direct {v1, p0}, Lcom/clj/fastble/scan/BleScanPresenter$6;-><init>(Lcom/clj/fastble/scan/BleScanPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .line 100
    if-nez p1, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mHandling:Z

    if-nez v0, :cond_1

    .line 104
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 108
    new-instance v1, Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public abstract onLeScan(Lcom/clj/fastble/data/BleDevice;)V
.end method

.method public abstract onScanFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onScanStarted(Z)V
.end method

.method public abstract onScanning(Lcom/clj/fastble/data/BleDevice;)V
.end method

.method public prepare([Ljava/lang/String;Ljava/lang/String;ZZJLcom/clj/fastble/callback/BleScanPresenterImp;)V
    .locals 2
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "fuzzy"    # Z
    .param p4, "needConnect"    # Z
    .param p5, "timeOut"    # J
    .param p7, "bleScanPresenterImp"    # Lcom/clj/fastble/callback/BleScanPresenterImp;

    .line 77
    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mDeviceNames:[Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mDeviceMac:Ljava/lang/String;

    .line 79
    iput-boolean p3, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mFuzzy:Z

    .line 80
    iput-boolean p4, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mNeedConnect:Z

    .line 81
    iput-wide p5, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mScanTimeout:J

    .line 82
    iput-object p7, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mBleScanPresenterImp:Lcom/clj/fastble/callback/BleScanPresenterImp;

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/clj/fastble/scan/BleScanPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 85
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Lcom/clj/fastble/scan/BleScanPresenter$ScanHandler;

    iget-object v1, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/clj/fastble/scan/BleScanPresenter$ScanHandler;-><init>(Landroid/os/Looper;Lcom/clj/fastble/scan/BleScanPresenter;)V

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mHandler:Landroid/os/Handler;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mHandling:Z

    .line 88
    return-void
.end method

.method public final removeHandlerMsg()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 220
    return-void
.end method
