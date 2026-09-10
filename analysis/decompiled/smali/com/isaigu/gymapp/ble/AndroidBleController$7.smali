.class Lcom/isaigu/gymapp/ble/AndroidBleController$7;
.super Ljava/lang/Object;
.source "AndroidBleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

.field final synthetic val$model:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ble/AndroidBleController;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;)V
    .locals 0

    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$7;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    iput-object p2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$7;->val$model:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$7;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    iget-object v0, v0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$7;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    iget-object v0, v0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$7;->val$model:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceConnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;)V

    :cond_0
    return-void
.end method
