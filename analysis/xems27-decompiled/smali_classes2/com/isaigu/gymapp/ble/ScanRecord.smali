.class public final Lcom/isaigu/gymapp/ble/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA:I = 0x16

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0
    .param p4, "advertiseFlags"    # I
    .param p5, "txPowerLevel"    # I
    .param p6, "localName"    # Ljava/lang/String;
    .param p7, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 132
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 134
    iput-object p2, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 135
    iput-object p3, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 136
    iput-object p6, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 137
    iput p4, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mAdvertiseFlags:I

    .line 138
    iput p5, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mTxPowerLevel:I

    .line 139
    iput-object p7, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mBytes:[B

    .line 140
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 268
    new-array v0, p2, [B

    .line 269
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    return-object v0
.end method

.method public static parseFromBytes([B)Lcom/isaigu/gymapp/ble/ScanRecord;
    .locals 18
    .param p0, "scanRecord"    # [B

    .line 153
    move-object/from16 v9, p0

    if-nez v9, :cond_0

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 158
    .local v0, "currentPos":I
    const/4 v1, -0x1

    .line 159
    .local v1, "advertiseFlag":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v3, 0x0

    .line 161
    .local v3, "localName":Ljava/lang/String;
    const/high16 v4, -0x80000000

    .line 163
    .local v4, "txPowerLevel":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v10, v5

    .line 164
    .local v10, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v11, v5

    move v12, v1

    move-object v13, v3

    move v14, v4

    move v1, v0

    .line 167
    .end local v0    # "currentPos":I
    .end local v3    # "localName":Ljava/lang/String;
    .end local v4    # "txPowerLevel":I
    .local v1, "currentPos":I
    .local v11, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v12, "advertiseFlag":I
    .local v13, "localName":Ljava/lang/String;
    .local v14, "txPowerLevel":I
    :goto_0
    :try_start_0
    array-length v0, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-ge v1, v0, :cond_4

    .line 169
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "currentPos":I
    .local v3, "currentPos":I
    :try_start_1
    aget-byte v0, v9, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 170
    .local v0, "length":I
    if-nez v0, :cond_1

    .line 171
    move v15, v3

    goto/16 :goto_2

    .line 174
    :cond_1
    add-int/lit8 v4, v0, -0x1

    .line 176
    .local v4, "dataLength":I
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "currentPos":I
    .local v5, "currentPos":I
    :try_start_2
    aget-byte v3, v9, v3

    and-int/2addr v3, v1

    .line 177
    .local v3, "fieldType":I
    const/16 v6, 0x16

    if-eq v3, v6, :cond_3

    if-eq v3, v1, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 202
    :pswitch_0
    aget-byte v1, v9, v5

    .line 203
    .end local v14    # "txPowerLevel":I
    .local v1, "txPowerLevel":I
    move v14, v1

    goto :goto_1

    .line 198
    .end local v1    # "txPowerLevel":I
    .restart local v14    # "txPowerLevel":I
    :pswitch_1
    new-instance v1, Ljava/lang/String;

    .line 199
    invoke-static {v9, v5, v4}, Lcom/isaigu/gymapp/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 200
    .end local v13    # "localName":Ljava/lang/String;
    .local v1, "localName":Ljava/lang/String;
    move-object v13, v1

    goto :goto_1

    .line 193
    .end local v1    # "localName":Ljava/lang/String;
    .restart local v13    # "localName":Ljava/lang/String;
    :pswitch_2
    const/16 v1, 0x10

    invoke-static {v9, v5, v4, v1, v2}, Lcom/isaigu/gymapp/ble/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 195
    goto :goto_1

    .line 188
    :pswitch_3
    const/4 v1, 0x4

    invoke-static {v9, v5, v4, v1, v2}, Lcom/isaigu/gymapp/ble/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 190
    goto :goto_1

    .line 183
    :pswitch_4
    const/4 v1, 0x2

    invoke-static {v9, v5, v4, v1, v2}, Lcom/isaigu/gymapp/ble/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 185
    goto :goto_1

    .line 179
    :pswitch_5
    aget-byte v6, v9, v5

    and-int/2addr v1, v6

    .line 180
    .end local v12    # "advertiseFlag":I
    .local v1, "advertiseFlag":I
    move v12, v1

    goto :goto_1

    .line 219
    .end local v1    # "advertiseFlag":I
    .restart local v12    # "advertiseFlag":I
    :cond_2
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v9, v6

    and-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, v9, v5

    and-int/2addr v1, v7

    add-int/2addr v6, v1

    .line 221
    .local v6, "manufacturerId":I
    add-int/lit8 v1, v5, 0x2

    add-int/lit8 v7, v4, -0x2

    invoke-static {v9, v1, v7}, Lcom/isaigu/gymapp/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v1

    .line 223
    .local v1, "manufacturerDataBytes":[B
    invoke-virtual {v10, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    goto :goto_1

    .line 207
    .end local v1    # "manufacturerDataBytes":[B
    .end local v6    # "manufacturerId":I
    :cond_3
    const/4 v1, 0x2

    .line 208
    .local v1, "serviceUuidLength":I
    invoke-static {v9, v5, v1}, Lcom/isaigu/gymapp/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v6

    .line 210
    .local v6, "serviceDataUuidBytes":[B
    invoke-static {v6}, Lcom/isaigu/gymapp/ble/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v7

    .line 212
    .local v7, "serviceDataUuid":Landroid/os/ParcelUuid;
    add-int v8, v5, v1

    sub-int v15, v4, v1

    invoke-static {v9, v8, v15}, Lcom/isaigu/gymapp/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v8

    .line 214
    .local v8, "serviceDataArray":[B
    invoke-interface {v11, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    nop

    .line 229
    .end local v1    # "serviceUuidLength":I
    .end local v6    # "serviceDataUuidBytes":[B
    .end local v7    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .end local v8    # "serviceDataArray":[B
    :goto_1
    add-int v1, v5, v4

    .line 230
    .end local v0    # "length":I
    .end local v3    # "fieldType":I
    .end local v4    # "dataLength":I
    .end local v5    # "currentPos":I
    .local v1, "currentPos":I
    goto :goto_0

    .line 237
    .end local v1    # "currentPos":I
    .restart local v5    # "currentPos":I
    :catch_0
    move-exception v0

    move-object/from16 v16, v2

    move v15, v5

    goto :goto_4

    .end local v5    # "currentPos":I
    .local v3, "currentPos":I
    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    move v15, v3

    goto :goto_4

    .line 167
    .end local v3    # "currentPos":I
    .restart local v1    # "currentPos":I
    :cond_4
    move v15, v1

    .line 232
    .end local v1    # "currentPos":I
    .local v15, "currentPos":I
    :goto_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_5

    .line 233
    const/4 v2, 0x0

    move-object/from16 v16, v2

    goto :goto_3

    .line 232
    :cond_5
    move-object/from16 v16, v2

    .line 235
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v16, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_3
    :try_start_4
    new-instance v0, Lcom/isaigu/gymapp/ble/ScanRecord;

    move-object v1, v0

    move-object/from16 v2, v16

    move-object v3, v10

    move-object v4, v11

    move v5, v12

    move v6, v14

    move-object v7, v13

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/isaigu/gymapp/ble/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    .line 237
    :catch_2
    move-exception v0

    goto :goto_4

    .end local v16    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catch_3
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_4

    .end local v15    # "currentPos":I
    .restart local v1    # "currentPos":I
    :catch_4
    move-exception v0

    move v15, v1

    move-object/from16 v16, v2

    .line 238
    .end local v1    # "currentPos":I
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v15    # "currentPos":I
    .restart local v16    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse scan record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScanRecord"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v17, Lcom/isaigu/gymapp/ble/ScanRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    move-object/from16 v1, v17

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/isaigu/gymapp/ble/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    return-object v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .line 256
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 257
    invoke-static {p0, p1, p3}, Lcom/isaigu/gymapp/ble/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 259
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Lcom/isaigu/gymapp/ble/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sub-int/2addr p2, p3

    .line 261
    add-int/2addr p1, p3

    .line 262
    .end local v0    # "uuidBytes":[B
    goto :goto_0

    .line 263
    :cond_0
    return p1
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1
    .param p1, "manufacturerId"    # I

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;

    .line 97
    if-nez p1, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 248
    invoke-static {v1}, Lcom/isaigu/gymapp/ble/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 249
    invoke-static {v1}, Lcom/isaigu/gymapp/ble/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    return-object v0
.end method
