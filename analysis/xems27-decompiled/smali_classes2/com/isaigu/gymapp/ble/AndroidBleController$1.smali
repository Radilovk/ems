.class Lcom/isaigu/gymapp/ble/AndroidBleController$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidBleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ble/AndroidBleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 67
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$1;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 69
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    const/4 v0, -0x1

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event ==== BluetoothAdapter.STATE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsolet(Ljava/lang/String;)V

    .line 72
    const/16 v1, 0xc

    if-ne v1, v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$1;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->init()Z

    .line 74
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$1;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$1;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBleStateChange(I)V

    .line 77
    :cond_0
    const-string v1, "event ==== BluetoothAdapter.STATE_ON"

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsolet(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    const/16 v1, 0xa

    if-ne v1, v0, :cond_3

    .line 79
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$1;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V

    .line 80
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$1;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 81
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$1;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$1;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBleStateChange(I)V

    .line 84
    :cond_2
    const-string v1, "event ==== BluetoothAdapter.BLE_CLOSED"

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsolet(Ljava/lang/String;)V

    .line 87
    .end local v0    # "state":I
    :cond_3
    :goto_0
    return-void
.end method
