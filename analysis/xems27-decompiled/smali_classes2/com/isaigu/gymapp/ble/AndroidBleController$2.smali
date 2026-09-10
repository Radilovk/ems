.class Lcom/isaigu/gymapp/ble/AndroidBleController$2;
.super Ljava/lang/Object;
.source "AndroidBleController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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

    .prologue
    .line 104
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 107
    if-eqz p1, :cond_0

    goto :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {p3}, Lcom/isaigu/gymapp/ble/ScanRecord;->parseFromBytes([B)Lcom/isaigu/gymapp/ble/ScanRecord;

    move-result-object v6

    .line 112
    .local v6, "record":Lcom/isaigu/gymapp/ble/ScanRecord;
    const/4 v7, 0x0

    .line 113
    .local v7, "serviceUUID":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "deviceName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ble/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v8

    if-nez v8, :cond_6

    const/4 v4, 0x0

    .line 116
    .local v4, "manufacturerData":[B
    :goto_1
    if-nez v1, :cond_2

    .line 117
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ble/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_2
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ble/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ble/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 120
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ble/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ble/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  ============scan before==================  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ble/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_name_ok

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    :cond_name_ok
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/isaigu/gymapp/utils/MacUtils;->isKnownServerDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_known_accept

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/isaigu/gymapp/utils/MacUtils;->isEmsBleDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_known_accept

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "accept":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v8, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v8}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$200(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 132
    iget-object v8, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v8}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$200(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    .line 133
    .local v2, "filterBean":Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->deviceName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_uuid_ok

    iget-object v8, v2, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    .line 134
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_uuid_ok

    goto :cond_7

    :cond_uuid_ok

    iget-object v8, v2, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    if-eqz v8, :cond_4

    iget-object v8, v2, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    if-eqz v8, :cond_7

    array-length v8, v4

    iget-object v9, v2, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    .line 136
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 137
    :cond_4
    const/4 v0, 0x1

    .line 142
    .end local v2    # "filterBean":Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
    :cond_5
    if-eqz v0, :cond_0

    goto :cond_after_accept

    :cond_known_accept
    const/4 v0, 0x1

    :cond_after_accept
    if-eqz v0, :cond_0

    .line 146
    iget-object v8, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v8}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 147
    new-instance v5, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v1, v8, v9}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v5, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    iget-object v8, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v8}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v8, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v8}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 151
    iget-object v8, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v8}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v9

    iget-object v8, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v8}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-interface {v9, v8, p2, v7, v4}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceDiscovered(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;ILjava/lang/String;[B)V

    .line 153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===========scan after===================  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ble/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/isaigu/gymapp/utils/Logger;->logConsolet(Ljava/lang/String;)V

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/isaigu/gymapp/utils/Logger;->logConsolet(Ljava/lang/String;)V

    .line 155
    if-eqz v4, :cond_8

    array-length v8, v4

    if-lez v8, :cond_8

    .line 156
    const-string v8, "LOG: "

    invoke-static {v8}, Lcom/isaigu/gymapp/utils/Logger;->logConsolet(Ljava/lang/String;)V

    .line 157
    const/4 v3, 0x0

    :goto_3
    array-length v8, v4

    if-ge v3, v8, :cond_8

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v9, v4, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 114
    .end local v0    # "accept":Z
    .end local v3    # "i":I
    .end local v4    # "manufacturerData":[B
    .end local v5    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :cond_6
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ble/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v8

    const v9, 0xf0f1

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v4, v8

    goto/16 :goto_1

    .line 131
    .restart local v0    # "accept":Z
    .restart local v2    # "filterBean":Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
    .restart local v3    # "i":I
    .restart local v4    # "manufacturerData":[B
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 161
    .end local v2    # "filterBean":Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
    .restart local v5    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :cond_8
    const-string v8, ""

    invoke-static {v8}, Lcom/isaigu/gymapp/utils/Logger;->logConsolet(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .end local v5    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :cond_9
    iget-object v8, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v8}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 165
    iget-object v8, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v8}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v9

    iget-object v8, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v8}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-interface {v9, v8, p2, v7, v4}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceDiscoveredUpdate(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;ILjava/lang/String;[B)V

    goto/16 :goto_0
.end method
