.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "MastogoLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Gatt"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;)V
    .registers 2

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    .line 255
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 269
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Event;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    const/4 v2, 0x3

    if-eqz v3, :cond_20

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v6, v3

    :goto_17
    move-object v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Event;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;ILandroid/bluetooth/BluetoothGatt;II[B)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void

    .line 270
    :cond_20
    const/4 v6, 0x0

    goto :goto_17
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 12

    .prologue
    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Event;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Event;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;ILandroid/bluetooth/BluetoothGatt;II[B)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 12

    .prologue
    .line 259
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Event;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Event;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;ILandroid/bluetooth/BluetoothGatt;II[B)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 12

    .prologue
    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Event;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Event;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;ILandroid/bluetooth/BluetoothGatt;II[B)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 11

    .prologue
    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Event;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Event;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;ILandroid/bluetooth/BluetoothGatt;II[B)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method
