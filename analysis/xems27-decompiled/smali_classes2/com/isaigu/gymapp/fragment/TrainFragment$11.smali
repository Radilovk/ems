.class Lcom/isaigu/gymapp/fragment/TrainFragment$11;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceDisConnected(Lcom/isaigu/gymapp/message/DataBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

.field final synthetic val$bundle:Lcom/isaigu/gymapp/message/DataBundle;

.field final synthetic val$model:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 477
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$11;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$11;->val$model:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$11;->val$bundle:Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 479
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$11;->val$model:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v1, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->connectByAddress(Ljava/lang/String;)Z

    move-result v0

    .line 480
    .local v0, "success":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 481
    if-nez v0, :cond_0

    .line 482
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$11;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$11;->val$bundle:Lcom/isaigu/gymapp/message/DataBundle;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$400(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 483
    return-void

    .line 485
    :cond_0
    return-void
.end method
