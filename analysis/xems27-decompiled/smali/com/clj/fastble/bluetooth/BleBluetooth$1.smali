.class Lcom/clj/fastble/bluetooth/BleBluetooth$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/bluetooth/BleBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;


# direct methods
.method constructor <init>(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 0
    .param p1, "this$0"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 358
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 419
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 421
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1000(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 422
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 424
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 425
    .local v2, "callback":Ljava/lang/Object;
    instance-of v3, v2, Lcom/clj/fastble/callback/BleNotifyCallback;

    if-eqz v3, :cond_0

    .line 426
    move-object v3, v2

    check-cast v3, Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 427
    .local v3, "bleNotifyCallback":Lcom/clj/fastble/callback/BleNotifyCallback;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleNotifyCallback;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleNotifyCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 429
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_0

    .line 430
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 431
    .local v5, "message":Landroid/os/Message;
    const/16 v6, 0x13

    iput v6, v5, Landroid/os/Message;->what:I

    .line 432
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v7

    const-string v8, "notify_value"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 435
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 436
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 440
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "callback":Ljava/lang/Object;
    .end local v3    # "bleNotifyCallback":Lcom/clj/fastble/callback/BleNotifyCallback;
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1100(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 443
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 444
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 445
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 446
    .restart local v2    # "callback":Ljava/lang/Object;
    instance-of v3, v2, Lcom/clj/fastble/callback/BleIndicateCallback;

    if-eqz v3, :cond_2

    .line 447
    move-object v3, v2

    check-cast v3, Lcom/clj/fastble/callback/BleIndicateCallback;

    .line 448
    .local v3, "bleIndicateCallback":Lcom/clj/fastble/callback/BleIndicateCallback;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleIndicateCallback;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 449
    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleIndicateCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 450
    .restart local v4    # "handler":Landroid/os/Handler;
    if-eqz v4, :cond_2

    .line 451
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 452
    .restart local v5    # "message":Landroid/os/Message;
    const/16 v6, 0x23

    iput v6, v5, Landroid/os/Message;->what:I

    .line 453
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 454
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 455
    .restart local v6    # "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v7

    const-string v8, "indicate_value"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 456
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 457
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 461
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "callback":Ljava/lang/Object;
    .end local v3    # "bleIndicateCallback":Lcom/clj/fastble/callback/BleIndicateCallback;
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_2
    goto :goto_1

    .line 462
    :cond_3
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .line 540
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 542
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1300(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 543
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 545
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 546
    .local v2, "callback":Ljava/lang/Object;
    instance-of v3, v2, Lcom/clj/fastble/callback/BleReadCallback;

    if-eqz v3, :cond_0

    .line 547
    move-object v3, v2

    check-cast v3, Lcom/clj/fastble/callback/BleReadCallback;

    .line 548
    .local v3, "bleReadCallback":Lcom/clj/fastble/callback/BleReadCallback;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleReadCallback;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 549
    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleReadCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 550
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_0

    .line 551
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 552
    .local v5, "message":Landroid/os/Message;
    const/16 v6, 0x42

    iput v6, v5, Landroid/os/Message;->what:I

    .line 553
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 554
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 555
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v7, "read_status"

    invoke-virtual {v6, v7, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v7

    const-string v8, "read_value"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 557
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 558
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 562
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "callback":Ljava/lang/Object;
    .end local v3    # "bleReadCallback":Lcom/clj/fastble/callback/BleReadCallback;
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 563
    :cond_1
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .line 513
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 515
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1200(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 516
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 518
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 519
    .local v2, "callback":Ljava/lang/Object;
    instance-of v3, v2, Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v3, :cond_0

    .line 520
    move-object v3, v2

    check-cast v3, Lcom/clj/fastble/callback/BleWriteCallback;

    .line 521
    .local v3, "bleWriteCallback":Lcom/clj/fastble/callback/BleWriteCallback;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleWriteCallback;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 522
    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleWriteCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 523
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_0

    .line 524
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 525
    .local v5, "message":Landroid/os/Message;
    const/16 v6, 0x32

    iput v6, v5, Landroid/os/Message;->what:I

    .line 526
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 528
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v7, "write_status"

    invoke-virtual {v6, v7, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v7

    const-string v8, "write_value"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 530
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 531
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 535
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "callback":Ljava/lang/Object;
    .end local v3    # "bleWriteCallback":Lcom/clj/fastble/callback/BleWriteCallback;
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 536
    :cond_1
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .line 362
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothGattCallback\uff1aonConnectionStateChange \nstatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "newState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "currentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0, p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$802(Lcom/clj/fastble/bluetooth/BleBluetooth;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 370
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->removeMessages(I)V

    .line 372
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 374
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 375
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "message":Landroid/os/Message;
    goto :goto_1

    .line 377
    :cond_0
    if-nez p3, :cond_3

    .line 378
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    move-result-object v1

    sget-object v2, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTING:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    if-ne v1, v2, :cond_1

    .line 379
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 380
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 381
    new-instance v1, Lcom/clj/fastble/data/BleConnectStateParameter;

    invoke-direct {v1, p2}, Lcom/clj/fastble/data/BleConnectStateParameter;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    move-result-object v1

    sget-object v2, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTED:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    if-ne v1, v2, :cond_2

    .line 385
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 386
    .local v1, "message":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 387
    new-instance v0, Lcom/clj/fastble/data/BleConnectStateParameter;

    invoke-direct {v0, p2}, Lcom/clj/fastble/data/BleConnectStateParameter;-><init>(I)V

    .line 388
    .local v0, "para":Lcom/clj/fastble/data/BleConnectStateParameter;
    iget-object v2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$900(Lcom/clj/fastble/bluetooth/BleBluetooth;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/clj/fastble/data/BleConnectStateParameter;->setActive(Z)V

    .line 389
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    iget-object v2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 384
    .end local v0    # "para":Lcom/clj/fastble/data/BleConnectStateParameter;
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    :goto_0
    goto :goto_2

    .line 377
    :cond_3
    :goto_1
    nop

    .line 393
    :goto_2
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .line 466
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 468
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1000(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 469
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 471
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 472
    .local v2, "callback":Ljava/lang/Object;
    instance-of v3, v2, Lcom/clj/fastble/callback/BleNotifyCallback;

    if-eqz v3, :cond_0

    .line 473
    move-object v3, v2

    check-cast v3, Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 474
    .local v3, "bleNotifyCallback":Lcom/clj/fastble/callback/BleNotifyCallback;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleNotifyCallback;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleNotifyCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 476
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_0

    .line 477
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 478
    .local v5, "message":Landroid/os/Message;
    const/16 v6, 0x12

    iput v6, v5, Landroid/os/Message;->what:I

    .line 479
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 480
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 481
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v7, "notify_status"

    invoke-virtual {v6, v7, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 483
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "callback":Ljava/lang/Object;
    .end local v3    # "bleNotifyCallback":Lcom/clj/fastble/callback/BleNotifyCallback;
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1100(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 490
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 492
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 493
    .restart local v2    # "callback":Ljava/lang/Object;
    instance-of v3, v2, Lcom/clj/fastble/callback/BleIndicateCallback;

    if-eqz v3, :cond_2

    .line 494
    move-object v3, v2

    check-cast v3, Lcom/clj/fastble/callback/BleIndicateCallback;

    .line 495
    .local v3, "bleIndicateCallback":Lcom/clj/fastble/callback/BleIndicateCallback;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleIndicateCallback;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    invoke-virtual {v3}, Lcom/clj/fastble/callback/BleIndicateCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 497
    .restart local v4    # "handler":Landroid/os/Handler;
    if-eqz v4, :cond_2

    .line 498
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 499
    .restart local v5    # "message":Landroid/os/Message;
    const/16 v6, 0x22

    iput v6, v5, Landroid/os/Message;->what:I

    .line 500
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 502
    .restart local v6    # "bundle":Landroid/os/Bundle;
    const-string v7, "indicate_status"

    invoke-virtual {v6, v7, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 504
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "callback":Ljava/lang/Object;
    .end local v3    # "bleIndicateCallback":Lcom/clj/fastble/callback/BleIndicateCallback;
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_2
    goto :goto_1

    .line 509
    :cond_3
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .line 586
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 588
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleMtuChangedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleMtuChangedCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleMtuChangedCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 590
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 592
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x62

    iput v2, v1, Landroid/os/Message;->what:I

    .line 593
    iget-object v2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleMtuChangedCallback;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 594
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 595
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "mtu_status"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 596
    const-string v3, "mtu_value"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 597
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 598
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 601
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .line 567
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 569
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleRssiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleRssiCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleRssiCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 571
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 573
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x52

    iput v2, v1, Landroid/os/Message;->what:I

    .line 574
    iget-object v2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleRssiCallback;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 575
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 576
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "rssi_status"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 577
    const-string v3, "rssi_value"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 579
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 582
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 397
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothGattCallback\uff1aonServicesDiscovered \nstatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "currentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0, p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$802(Lcom/clj/fastble/bluetooth/BleBluetooth;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 404
    if-nez p2, :cond_0

    .line 405
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 406
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 407
    new-instance v1, Lcom/clj/fastble/data/BleConnectStateParameter;

    invoke-direct {v1, p2}, Lcom/clj/fastble/data/BleConnectStateParameter;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 412
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 413
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method
