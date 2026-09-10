.class Lcom/isaigu/gymapp/ble/AndroidBleController$5;
.super Ljava/lang/Object;
.source "AndroidBleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ble/AndroidBleController;->requestCloseBle()V
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

    .line 745
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$5;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$5;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$700(Lcom/isaigu/gymapp/ble/AndroidBleController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$5;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$702(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$5;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$700(Lcom/isaigu/gymapp/ble/AndroidBleController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$5;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$700(Lcom/isaigu/gymapp/ble/AndroidBleController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$5;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$700(Lcom/isaigu/gymapp/ble/AndroidBleController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 753
    :cond_1
    return-void
.end method
