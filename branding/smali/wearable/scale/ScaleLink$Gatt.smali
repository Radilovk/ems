.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "ScaleLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Gatt"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V
    .registers 2

    .prologue
    .line 787
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 788
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 789
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 803
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    .line 804
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    const/4 v2, 0x3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    if-eqz v3, :cond_24

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v7, v3

    :goto_1b
    move-object v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;ILandroid/bluetooth/BluetoothGatt;IILjava/util/UUID;[B)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 805
    return-void

    .line 804
    :cond_24
    const/4 v7, 0x0

    goto :goto_1b
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 13

    .prologue
    const/4 v6, 0x0

    .line 809
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p3

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;ILandroid/bluetooth/BluetoothGatt;IILjava/util/UUID;[B)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 13

    .prologue
    const/4 v6, 0x0

    .line 793
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    const/4 v2, 0x1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;ILandroid/bluetooth/BluetoothGatt;IILjava/util/UUID;[B)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 794
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 13

    .prologue
    const/4 v6, 0x0

    .line 814
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p3

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;ILandroid/bluetooth/BluetoothGatt;IILjava/util/UUID;[B)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 815
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 798
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;ILandroid/bluetooth/BluetoothGatt;IILjava/util/UUID;[B)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    return-void
.end method
