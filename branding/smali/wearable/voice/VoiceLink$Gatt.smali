.class final Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Gatt;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "VoiceLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Gatt"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 447
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 460
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    .line 461
    sget-object v6, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;

    const/4 v1, 0x3

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v5, v2

    :goto_13
    move-object v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;-><init>(ILandroid/bluetooth/BluetoothGatt;II[B)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    return-void

    .line 461
    :cond_1c
    const/4 v5, 0x0

    goto :goto_13
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 11

    .prologue
    .line 466
    sget-object v6, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;-><init>(ILandroid/bluetooth/BluetoothGatt;II[B)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 11

    .prologue
    .line 450
    sget-object v6, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;-><init>(ILandroid/bluetooth/BluetoothGatt;II[B)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 11

    .prologue
    .line 471
    sget-object v6, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;-><init>(ILandroid/bluetooth/BluetoothGatt;II[B)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 10

    .prologue
    .line 455
    sget-object v6, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;-><init>(ILandroid/bluetooth/BluetoothGatt;II[B)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    return-void
.end method
