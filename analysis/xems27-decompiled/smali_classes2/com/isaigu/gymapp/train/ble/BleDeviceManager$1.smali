.class final Lcom/isaigu/gymapp/train/ble/BleDeviceManager$1;
.super Lcom/clj/fastble/callback/BleScanCallback;
.source "BleDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/ble/BleDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "scanResultList":Ljava/util/List;, "Ljava/util/List<Lcom/clj/fastble/data/BleDevice;>;"
    const-string v0, "www"

    const-string v1, "\u626b\u63cf\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-boolean v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->started:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->access$000(Ljava/util/List;)V

    .line 139
    sget v0, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connectCount:I

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->scan()V

    .line 142
    :cond_0
    return-void
.end method

.method public onScanStarted(Z)V
    .locals 0
    .param p1, "success"    # Z

    .line 147
    return-void
.end method

.method public onScanning(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2
    .param p1, "bleDevice"    # Lcom/clj/fastble/data/BleDevice;

    .line 152
    invoke-static {p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->access$100(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/events/DeviceScannedEvent;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/train/events/DeviceScannedEvent;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 155
    :cond_0
    return-void
.end method
