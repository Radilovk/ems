.class Lcom/clj/fastble/bluetooth/BleConnector$1;
.super Landroid/os/Handler;
.source "BleConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clj/fastble/bluetooth/BleConnector;-><init>(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clj/fastble/bluetooth/BleConnector;


# direct methods
.method constructor <init>(Lcom/clj/fastble/bluetooth/BleConnector;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/clj/fastble/bluetooth/BleConnector;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 45
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector$1;->this$0:Lcom/clj/fastble/bluetooth/BleConnector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_d

    const/16 v1, 0x32

    if-eq v0, v1, :cond_b

    const/16 v1, 0x41

    if-eq v0, v1, :cond_a

    const/16 v1, 0x42

    if-eq v0, v1, :cond_8

    const/16 v1, 0x51

    if-eq v0, v1, :cond_7

    const/16 v1, 0x52

    if-eq v0, v1, :cond_5

    const/16 v1, 0x61

    if-eq v0, v1, :cond_4

    const/16 v1, 0x62

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 108
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleIndicateCallback;

    .line 109
    .local v0, "indicateCallback":Lcom/clj/fastble/callback/BleIndicateCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 110
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "indicate_value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 111
    .local v2, "value":[B
    if-eqz v0, :cond_e

    .line 112
    invoke-virtual {v0, v2}, Lcom/clj/fastble/callback/BleIndicateCallback;->onCharacteristicChanged([B)V

    goto/16 :goto_0

    .line 92
    .end local v0    # "indicateCallback":Lcom/clj/fastble/callback/BleIndicateCallback;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "value":[B
    :pswitch_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector$1;->this$0:Lcom/clj/fastble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleConnector;->indicateMsgInit()V

    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleIndicateCallback;

    .line 95
    .restart local v0    # "indicateCallback":Lcom/clj/fastble/callback/BleIndicateCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 96
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v2, "indicate_status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, "status":I
    if-eqz v0, :cond_e

    .line 98
    if-nez v2, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleIndicateCallback;->onIndicateSuccess()V

    goto/16 :goto_0

    .line 101
    :cond_0
    new-instance v3, Lcom/clj/fastble/exception/GattException;

    invoke-direct {v3, v2}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/clj/fastble/callback/BleIndicateCallback;->onIndicateFailure(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 85
    .end local v0    # "indicateCallback":Lcom/clj/fastble/callback/BleIndicateCallback;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "status":I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleIndicateCallback;

    .line 86
    .restart local v0    # "indicateCallback":Lcom/clj/fastble/callback/BleIndicateCallback;
    if-eqz v0, :cond_e

    .line 87
    new-instance v1, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v1}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/clj/fastble/callback/BleIndicateCallback;->onIndicateFailure(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 75
    .end local v0    # "indicateCallback":Lcom/clj/fastble/callback/BleIndicateCallback;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 76
    .local v0, "notifyCallback":Lcom/clj/fastble/callback/BleNotifyCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v2, "notify_value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 78
    .local v2, "value":[B
    if-eqz v0, :cond_e

    .line 79
    invoke-virtual {v0, v2}, Lcom/clj/fastble/callback/BleNotifyCallback;->onCharacteristicChanged([B)V

    goto/16 :goto_0

    .line 59
    .end local v0    # "notifyCallback":Lcom/clj/fastble/callback/BleNotifyCallback;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "value":[B
    :pswitch_4
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector$1;->this$0:Lcom/clj/fastble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleConnector;->notifyMsgInit()V

    .line 61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 62
    .restart local v0    # "notifyCallback":Lcom/clj/fastble/callback/BleNotifyCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v2, "notify_status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 64
    .local v2, "status":I
    if-eqz v0, :cond_e

    .line 65
    if-nez v2, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleNotifyCallback;->onNotifySuccess()V

    goto/16 :goto_0

    .line 68
    :cond_1
    new-instance v3, Lcom/clj/fastble/exception/GattException;

    invoke-direct {v3, v2}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/clj/fastble/callback/BleNotifyCallback;->onNotifyFailure(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 52
    .end local v0    # "notifyCallback":Lcom/clj/fastble/callback/BleNotifyCallback;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "status":I
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 53
    .restart local v0    # "notifyCallback":Lcom/clj/fastble/callback/BleNotifyCallback;
    if-eqz v0, :cond_e

    .line 54
    new-instance v1, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v1}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/clj/fastble/callback/BleNotifyCallback;->onNotifyFailure(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 198
    .end local v0    # "notifyCallback":Lcom/clj/fastble/callback/BleNotifyCallback;
    :cond_2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector$1;->this$0:Lcom/clj/fastble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleConnector;->mtuChangedMsgInit()V

    .line 200
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleMtuChangedCallback;

    .line 201
    .local v0, "mtuChangedCallback":Lcom/clj/fastble/callback/BleMtuChangedCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 202
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v2, "mtu_status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 203
    .restart local v2    # "status":I
    const-string v3, "mtu_value"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 204
    .local v3, "value":I
    if-eqz v0, :cond_e

    .line 205
    if-nez v2, :cond_3

    .line 206
    invoke-virtual {v0, v3}, Lcom/clj/fastble/callback/BleMtuChangedCallback;->onMtuChanged(I)V

    goto/16 :goto_0

    .line 208
    :cond_3
    new-instance v4, Lcom/clj/fastble/exception/GattException;

    invoke-direct {v4, v2}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/clj/fastble/callback/BleMtuChangedCallback;->onSetMTUFailure(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 191
    .end local v0    # "mtuChangedCallback":Lcom/clj/fastble/callback/BleMtuChangedCallback;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "status":I
    .end local v3    # "value":I
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleMtuChangedCallback;

    .line 192
    .restart local v0    # "mtuChangedCallback":Lcom/clj/fastble/callback/BleMtuChangedCallback;
    if-eqz v0, :cond_e

    .line 193
    new-instance v1, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v1}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/clj/fastble/callback/BleMtuChangedCallback;->onSetMTUFailure(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "mtuChangedCallback":Lcom/clj/fastble/callback/BleMtuChangedCallback;
    :cond_5
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector$1;->this$0:Lcom/clj/fastble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleConnector;->rssiMsgInit()V

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleRssiCallback;

    .line 177
    .local v0, "rssiCallback":Lcom/clj/fastble/callback/BleRssiCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 178
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v2, "rssi_status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 179
    .restart local v2    # "status":I
    const-string v3, "rssi_value"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 180
    .restart local v3    # "value":I
    if-eqz v0, :cond_e

    .line 181
    if-nez v2, :cond_6

    .line 182
    invoke-virtual {v0, v3}, Lcom/clj/fastble/callback/BleRssiCallback;->onRssiSuccess(I)V

    goto/16 :goto_0

    .line 184
    :cond_6
    new-instance v4, Lcom/clj/fastble/exception/GattException;

    invoke-direct {v4, v2}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/clj/fastble/callback/BleRssiCallback;->onRssiFailure(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 167
    .end local v0    # "rssiCallback":Lcom/clj/fastble/callback/BleRssiCallback;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "status":I
    .end local v3    # "value":I
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleRssiCallback;

    .line 168
    .restart local v0    # "rssiCallback":Lcom/clj/fastble/callback/BleRssiCallback;
    if-eqz v0, :cond_e

    .line 169
    new-instance v1, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v1}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/clj/fastble/callback/BleRssiCallback;->onRssiFailure(Lcom/clj/fastble/exception/BleException;)V

    goto/16 :goto_0

    .line 150
    .end local v0    # "rssiCallback":Lcom/clj/fastble/callback/BleRssiCallback;
    :cond_8
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector$1;->this$0:Lcom/clj/fastble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleConnector;->readMsgInit()V

    .line 152
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleReadCallback;

    .line 153
    .local v0, "readCallback":Lcom/clj/fastble/callback/BleReadCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 154
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v2, "read_status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 155
    .restart local v2    # "status":I
    const-string v3, "read_value"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 156
    .local v3, "value":[B
    if-eqz v0, :cond_e

    .line 157
    if-nez v2, :cond_9

    .line 158
    invoke-virtual {v0, v3}, Lcom/clj/fastble/callback/BleReadCallback;->onReadSuccess([B)V

    goto :goto_0

    .line 160
    :cond_9
    new-instance v4, Lcom/clj/fastble/exception/GattException;

    invoke-direct {v4, v2}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/clj/fastble/callback/BleReadCallback;->onReadFailure(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 143
    .end local v0    # "readCallback":Lcom/clj/fastble/callback/BleReadCallback;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "status":I
    .end local v3    # "value":[B
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleReadCallback;

    .line 144
    .restart local v0    # "readCallback":Lcom/clj/fastble/callback/BleReadCallback;
    if-eqz v0, :cond_e

    .line 145
    new-instance v1, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v1}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/clj/fastble/callback/BleReadCallback;->onReadFailure(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 126
    .end local v0    # "readCallback":Lcom/clj/fastble/callback/BleReadCallback;
    :cond_b
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector$1;->this$0:Lcom/clj/fastble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleConnector;->writeMsgInit()V

    .line 128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleWriteCallback;

    .line 129
    .local v0, "writeCallback":Lcom/clj/fastble/callback/BleWriteCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 130
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v2, "write_status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 131
    .restart local v2    # "status":I
    const-string v3, "write_value"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 132
    .restart local v3    # "value":[B
    if-eqz v0, :cond_e

    .line 133
    if-nez v2, :cond_c

    .line 134
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v4, v3}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteSuccess(II[B)V

    goto :goto_0

    .line 136
    :cond_c
    new-instance v4, Lcom/clj/fastble/exception/GattException;

    invoke-direct {v4, v2}, Lcom/clj/fastble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 118
    .end local v0    # "writeCallback":Lcom/clj/fastble/callback/BleWriteCallback;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "status":I
    .end local v3    # "value":[B
    :cond_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/clj/fastble/callback/BleWriteCallback;

    .line 119
    .restart local v0    # "writeCallback":Lcom/clj/fastble/callback/BleWriteCallback;
    if-eqz v0, :cond_e

    .line 120
    new-instance v1, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v1}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    .line 214
    .end local v0    # "writeCallback":Lcom/clj/fastble/callback/BleWriteCallback;
    :cond_e
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
