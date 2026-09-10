.class public Lcom/isaigu/gymapp/mgr/BleMgr;
.super Ljava/lang/Object;
.source "BleMgr.java"


# static fields
.field private static controller:Lcom/isaigu/gymapp/ble/AndroidBleController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getController()Lcom/isaigu/gymapp/ble/AndroidBleController;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->initBle()V

    .line 19
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    return-object v0
.end method

.method public static initBle()V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 26
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    new-instance v1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    const-string v2, "EMS"

    const-string v3, "0001"

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->addFilterBean(Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;)V

    new-instance v1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    const-string v2, "Nord"

    const-string v3, "0001"

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->addFilterBean(Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;)V

    .line 27
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    new-instance v1, Lcom/isaigu/gymapp/mgr/BleMgr$1;

    invoke-direct {v1}, Lcom/isaigu/gymapp/mgr/BleMgr$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->setBluetoothCallback(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;)V

    .line 81
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->init()Z

    goto :goto_0
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->isBleScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V

    .line 98
    const/16 v0, 0x3ed

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 100
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->getBleState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 105
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->requestOpenBle()V

    .line 109
    :cond_0
    return-void
.end method

.method public static unInitBle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectAll()V

    .line 87
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->setBluetoothCallback(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;)V

    .line 88
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->onDestroy()V

    .line 89
    sput-object v1, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 91
    :cond_0
    return-void
.end method
