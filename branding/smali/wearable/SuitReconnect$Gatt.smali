.class final Lcom/isaigu/gymapp/wearable/SuitReconnect$Gatt;
.super Lcom/clj/fastble/callback/BleGattCallback;
.source "SuitReconnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SuitReconnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Gatt"
.end annotation


# instance fields
.field private final lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;)V
    .registers 2

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleGattCallback;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Gatt;->lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    .line 248
    return-void
.end method


# virtual methods
.method public onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V
    .registers 5

    .prologue
    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Gatt;->lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->connecting:Z

    .line 257
    if-eqz p1, :cond_e

    .line 258
    :try_start_7
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clj/fastble/BleManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_f

    .line 262
    :cond_e
    :goto_e
    return-void

    .line 260
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public onConnectSuccess(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .registers 7

    .prologue
    .line 266
    # getter for: Lcom/isaigu/gymapp/wearable/SuitReconnect;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->access$300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Gatt;->lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    invoke-direct {v1, v2, p1}, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;-><init>(Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method public onDisConnected(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .registers 9

    .prologue
    .line 273
    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;

    invoke-direct {v1, p2}, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    .line 277
    :goto_c
    return-void

    .line 274
    :catch_d
    move-exception v0

    .line 275
    const-string v1, "suit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public onStartConnect()V
    .registers 1

    .prologue
    .line 251
    return-void
.end method
