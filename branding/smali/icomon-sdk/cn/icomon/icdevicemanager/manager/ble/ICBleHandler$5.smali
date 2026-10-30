.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->onDiscoverPeripheral(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

.field final synthetic val$local_Name:Ljava/lang/String;

.field final synthetic val$manfactureData:[B

.field final synthetic val$peripheral:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$rssi:Ljava/lang/Integer;

.field final synthetic val$sservices:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/BluetoothDevice;[BLjava/lang/Integer;)V
    .registers 7

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$local_Name:Ljava/lang/String;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$sservices:Ljava/util/List;

    iput-object p4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$peripheral:Landroid/bluetooth/BluetoothDevice;

    iput-object p5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$manfactureData:[B

    iput-object p6, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$rssi:Ljava/lang/Integer;

    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 888
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bleAdapter(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$local_Name:Ljava/lang/String;

    iget-object v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$sservices:Ljava/util/List;

    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 908
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_otaFilterScan:Ljava/util/HashMap;

    iget-object v4, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$peripheral:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "BleHanlder"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_76

    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 909
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_otaFilterScan:Ljava/util/HashMap;

    iget-object v7, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$peripheral:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v7, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 910
    invoke-static {v7}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fgetOTA_FILTER_SCAN_COUNT(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v0, v7, :cond_69

    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filter ota device ,count="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 912
    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_otaFilterScan:Ljava/util/HashMap;

    iget-object v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$peripheral:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_69
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 916
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_otaFilterScan:Ljava/util/HashMap;

    iget-object v7, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$peripheral:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_76
    if-nez v2, :cond_97

    :try_start_78
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$peripheral:Landroid/bluetooth/BluetoothDevice;

    .line 924
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7e} :catch_7f

    goto :goto_97

    :catch_7f
    move-exception v0

    .line 927
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "get name error, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_97
    :goto_97
    if-eqz v2, :cond_9f

    .line 930
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a1

    :cond_9f
    const-string v2, "icomon"

    :cond_a1
    move-object v11, v2

    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$peripheral:Landroid/bluetooth/BluetoothDevice;

    .line 936
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 937
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v7, "wliot."

    .line 942
    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    iget-object v7, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$manfactureData:[B

    .line 945
    invoke-static {v7}, Lcn/icomon/icdevicemanager/common/ICScanRecord;->parse([B)Lcn/icomon/icdevicemanager/common/ICScanRecord;

    move-result-object v7

    .line 954
    iget-object v8, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "0000FFB0-0000-1000-8000-00805F9B34FB"

    const/4 v10, 0x2

    if-ne v8, v10, :cond_d4

    .line 955
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureDatas:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    .line 956
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 957
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d4
    const-string v8, "PPlusOTA"

    .line 970
    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const/16 v12, -0x54

    const/4 v13, 0x5

    const/16 v14, 0xa

    const/4 v15, 0x4

    if-eqz v8, :cond_109

    .line 971
    iget-object v8, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    if-eqz v8, :cond_109

    iget-object v8, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    array-length v8, v8

    if-ne v8, v14, :cond_109

    .line 972
    iget-object v8, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    .line 973
    aget-byte v14, v8, v5

    if-ne v14, v15, :cond_109

    aget-byte v8, v8, v6

    if-ne v8, v13, :cond_109

    .line 974
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    aput-byte v12, v3, v5

    .line 975
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    const/16 v8, 0x60

    aput-byte v8, v3, v6

    .line 976
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 977
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    goto :goto_10a

    :cond_109
    const/4 v8, 0x0

    :goto_10a
    const-string v14, "wliot."

    .line 982
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const/4 v13, 0x6

    if-eqz v14, :cond_136

    iget-object v14, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->serviceDatas:Ljava/util/Map;

    if-eqz v14, :cond_136

    iget-object v14, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->serviceDatas:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    if-lez v14, :cond_136

    .line 983
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->serviceDatas:Ljava/util/Map;

    const-string v14, "FE95"

    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    return-void

    .line 987
    :cond_12a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 988
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v14, 0xf3

    goto/16 :goto_20d

    :cond_136
    const-string v14, "CMB"

    .line 990
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20c

    .line 991
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    if-eqz v3, :cond_20b

    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    array-length v3, v3

    if-gt v3, v13, :cond_149

    goto/16 :goto_20b

    .line 994
    :cond_149
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v3

    new-array v14, v13, [B

    .line 996
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v14, v10}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Read([BLjava/lang/Integer;)I

    new-array v3, v13, [B

    const/4 v10, 0x0

    :goto_15b
    if-ge v10, v13, :cond_166

    rsub-int/lit8 v19, v10, 0x5

    .line 1000
    aget-byte v19, v14, v19

    .line 1001
    aput-byte v19, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_15b

    .line 1005
    :cond_166
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    iput-object v10, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->services:Ljava/util/List;

    .line 1008
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1009
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string v6, "CMB589657"

    const-string v15, "ICWeightScaleV3Worker"

    .line 1011
    invoke-interface {v14, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "CMB589655"

    .line 1012
    invoke-interface {v14, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "CMB590627"

    .line 1013
    invoke-interface {v14, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "CMB590807"

    .line 1014
    invoke-interface {v14, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "CMB589658"

    const-string v15, "ICSkipWorker"

    .line 1016
    invoke-interface {v13, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "CMB589659"

    .line 1017
    invoke-interface {v13, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "CMB589855"

    .line 1018
    invoke-interface {v13, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "CMB589926"

    .line 1019
    invoke-interface {v13, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x28

    .line 1022
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v6

    .line 1023
    invoke-virtual {v6, v12}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 1024
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1bb
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1d8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1025
    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1bb

    const/16 v14, 0x28

    .line 1026
    invoke-virtual {v6, v14}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 1027
    invoke-virtual {v6, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteData([B)I

    .line 1028
    invoke-virtual {v6, v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteInt(I)I

    .line 1033
    :cond_1d8
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1e0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1fa

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1034
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1e0

    const/16 v13, 0x60

    .line 1035
    invoke-virtual {v6, v13}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 1036
    invoke-virtual {v6, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteData([B)I

    .line 1040
    :cond_1fa
    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetSize()I

    move-result v3

    const/16 v13, 0x8

    if-ge v3, v13, :cond_203

    return-void

    .line 1043
    :cond_203
    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object v3

    iput-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    move-object v3, v10

    goto :goto_20c

    :cond_20b
    :goto_20b
    return-void

    :cond_20c
    :goto_20c
    const/4 v14, 0x0

    :goto_20d
    const-string v6, "Shouba"

    .line 1045
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_232

    .line 1046
    iget-object v6, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    array-length v6, v6

    const/16 v10, 0x14

    if-ne v6, v10, :cond_232

    .line 1047
    iget-object v6, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    .line 1048
    aget-byte v10, v6, v5

    const/4 v13, -0x3

    if-ne v10, v13, :cond_232

    const/4 v10, 0x1

    aget-byte v6, v6, v10

    const/4 v10, -0x3

    if-ne v6, v10, :cond_232

    .line 1049
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x6

    :cond_232
    if-nez v3, :cond_236

    .line 1056
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->services:Ljava/util/List;

    :cond_236
    const-string v6, "Mi Smart Band"

    .line 1060
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_246

    const-string v6, "Amazfit"

    .line 1061
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_252

    :cond_246
    if-nez v3, :cond_24d

    .line 1063
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_24d
    const-string v6, "0000180D-0000-1000-8000-00805F9B34FB"

    .line 1065
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    :cond_252
    iget-object v6, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    const/4 v10, 0x7

    if-eqz v6, :cond_2ad

    iget-object v6, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    array-length v6, v6

    if-lt v6, v10, :cond_2ad

    .line 1069
    iget-object v6, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    .line 1070
    iget-object v13, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureDatas:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v15, 0x2

    if-ne v13, v15, :cond_26f

    .line 1071
    iget-object v6, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureDatas:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1073
    :cond_26f
    array-length v13, v6

    if-ge v13, v10, :cond_273

    return-void

    :cond_273
    new-array v13, v10, [B

    .line 1077
    invoke-static {v6, v5, v13, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1079
    invoke-static {v13}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v6

    const-string v13, " "

    const-string v15, ""

    .line 1080
    invoke-virtual {v6, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v13, "7D02010500FFFF"

    .line 1081
    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_299

    if-nez v3, :cond_293

    .line 1083
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    :cond_293
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v14, 0xf1

    goto :goto_2ad

    :cond_299
    const-string v13, "7D0201040500FF"

    .line 1088
    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2ad

    if-nez v3, :cond_2a8

    .line 1090
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    :cond_2a8
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v14, 0xf2

    :cond_2ad
    :goto_2ad
    move-object v9, v3

    const/16 v6, 0x10

    if-eqz v9, :cond_344

    .line 1096
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_344

    .line 1097
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v13

    invoke-virtual {v13}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getServices()Ljava/util/List;

    move-result-object v13

    .line 1098
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :goto_2c5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_334

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v3, v20

    check-cast v3, Ljava/lang/String;

    .line 1099
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2d7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_32b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v10, v21

    check-cast v10, Ljava/lang/String;

    .line 1100
    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_329

    const-string v10, "FFB0"

    .line 1103
    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_327

    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    if-eqz v3, :cond_327

    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    array-length v3, v3

    if-ne v3, v6, :cond_327

    new-array v3, v6, [B

    .line 1105
    iget-object v10, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    const/16 v15, 0xe

    aget-byte v10, v10, v15

    if-ne v10, v12, :cond_327

    iget-object v10, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    const/16 v15, 0xf

    aget-byte v10, v10, v15

    const/16 v15, 0x26

    if-ne v10, v15, :cond_327

    .line 1106
    iget-object v10, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    const/16 v15, 0xe

    const/4 v6, 0x2

    invoke-static {v10, v15, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    iget-object v10, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    const/4 v12, 0x6

    const/16 v15, 0x8

    invoke-static {v10, v15, v3, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1108
    iget-object v6, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    invoke-static {v6, v5, v3, v15, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1109
    iput-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    :cond_327
    const/4 v15, 0x1

    goto :goto_32b

    :cond_329
    const/4 v10, 0x7

    goto :goto_2d7

    :cond_32b
    :goto_32b
    if-eqz v15, :cond_32e

    goto :goto_334

    :cond_32e
    const/16 v6, 0x10

    const/4 v10, 0x7

    const/16 v12, -0x54

    goto :goto_2c5

    :cond_334
    :goto_334
    const-string v3, "InBody"

    .line 1131
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33f

    const/16 v14, 0x64

    const/4 v15, 0x1

    :cond_33f
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto/16 :goto_401

    .line 1137
    :cond_344
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    if-eqz v3, :cond_3fd

    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    array-length v3, v3

    const/4 v6, 0x5

    if-le v3, v6, :cond_3fd

    .line 1138
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    aget-byte v3, v3, v5

    const/16 v6, -0x44

    if-ne v3, v6, :cond_377

    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    const/4 v6, 0x1

    aget-byte v3, v3, v6

    if-ne v3, v6, :cond_377

    iget-object v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$local_Name:Ljava/lang/String;

    const-string v6, "MGV2060"

    .line 1140
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_371

    iget-object v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$local_Name:Ljava/lang/String;

    const-string v6, "MGV2070"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_377

    :cond_371
    const/4 v3, 0x1

    :goto_372
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v15, 0x1

    goto/16 :goto_401

    .line 1144
    :cond_377
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    aget-byte v3, v3, v5

    const/16 v6, -0x44

    if-ne v3, v6, :cond_3d2

    if-eqz v9, :cond_387

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3d2

    :cond_387
    iget-object v3, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 1145
    invoke-static {v3}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bm15Protocol(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v3

    iget-object v6, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    invoke-virtual {v3, v6}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object v3

    .line 1146
    iget-object v6, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v10, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v6, v10, :cond_3cc

    iget-object v6, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 1147
    invoke-static {v6}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_bm15Protocol(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v6

    iget-object v3, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v3, v10}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3cc

    .line 1148
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3cc

    .line 1149
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "temp"

    .line 1150
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3c7

    const/4 v3, 0x1

    goto :goto_3c8

    :cond_3c7
    const/4 v3, 0x0

    :goto_3c8
    move v10, v3

    const/4 v3, 0x1

    const/4 v6, 0x1

    goto :goto_3cf

    :cond_3cc
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    :goto_3cf
    move v15, v3

    const/4 v3, 0x0

    goto :goto_401

    .line 1156
    :cond_3d2
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    aget-byte v3, v3, v5

    const/16 v6, -0x54

    if-eq v3, v6, :cond_3e2

    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    aget-byte v3, v3, v5

    const/16 v6, -0x36

    if-ne v3, v6, :cond_3fd

    :cond_3e2
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    const/4 v6, 0x1

    aget-byte v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3, v12}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_3fd

    const/4 v3, 0x0

    goto/16 :goto_372

    :cond_3fd
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v15, 0x0

    :goto_401
    if-nez v15, :cond_404

    return-void

    .line 1166
    :cond_404
    new-instance v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    invoke-direct {v15}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;-><init>()V

    .line 1167
    iput-object v11, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->broadcastName:Ljava/lang/String;

    iget-object v12, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$rssi:Ljava/lang/Integer;

    .line 1168
    iput-object v12, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->rssi:Ljava/lang/Integer;

    .line 1169
    iput-object v9, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->services:Ljava/util/List;

    .line 1170
    iget-object v12, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    iput-object v12, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    .line 1171
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_419
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_43b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v5, "00001530-0000-1000-8000-00805f9b34fb"

    .line 1172
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42f

    const/4 v8, 0x1

    goto :goto_439

    :cond_42f
    const-string v5, "0000180D-0000-1000-8000-00805F9B34FB"

    .line 1175
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_439

    const/16 v14, 0x180d

    :cond_439
    :goto_439
    const/4 v5, 0x0

    goto :goto_419

    :cond_43b
    const/16 v5, 0xf3

    const/4 v12, 0x3

    if-ne v14, v5, :cond_47b

    .line 1181
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->serviceDatas:Ljava/util/Map;

    const-string v5, "FE95"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1182
    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v5

    const/4 v6, 0x0

    .line 1183
    invoke-virtual {v5, v6}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 1184
    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    .line 1185
    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v6

    .line 1186
    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    .line 1188
    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    .line 1189
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getMIDeviceByProductId(I)Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;

    move-result-object v3

    if-nez v3, :cond_469

    return-void

    .line 1193
    :cond_469
    iget-object v5, v3, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 1194
    iget-object v5, v3, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->communicationType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    .line 1195
    iget v5, v3, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->subType:I

    iput v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    .line 1196
    iget v3, v3, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->otherFlag:I

    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    goto/16 :goto_8c8

    :cond_47b
    const/16 v5, 0xf2

    const v13, -0x10000001

    if-ne v14, v5, :cond_4a1

    const-string v3, "-"

    .line 1199
    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1200
    array-length v3, v3

    if-eq v3, v12, :cond_48c

    return-void

    .line 1204
    :cond_48c
    iput v13, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    const-string v3, "iCOMON-S2P-"

    .line 1206
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_497

    return-void

    .line 1209
    :cond_497
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    .line 1210
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeSkip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    :cond_4a1
    const/16 v5, 0xf1

    const v13, 0xffff

    if-ne v14, v5, :cond_53e

    const-string v3, "-"

    .line 1213
    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1214
    array-length v3, v3

    if-eq v3, v12, :cond_4b2

    return-void

    :cond_4b2
    const v3, -0x10000001

    .line 1221
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    const-string v3, "iCOMON-S2S-"

    .line 1223
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_534

    .line 1225
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcn/icomon/icdevicemanager/common/ICConfigManager;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    sget-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;->ICSDKModeCompetitive:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    if-ne v3, v5, :cond_4ce

    const v3, -0x10000003

    .line 1226
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    .line 1228
    :cond_4ce
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureDatas:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1229
    iget-object v6, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v10, 0x2

    if-lt v6, v10, :cond_532

    .line 1230
    iget-object v6, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureDatas:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1232
    aget-byte v10, v6, v5

    const/16 v5, -0x54

    if-ne v10, v5, :cond_52f

    aget-byte v5, v6, v7

    const/16 v6, 0x66

    if-ne v5, v6, :cond_52f

    .line 1233
    array-length v5, v3

    const/16 v6, 0xa

    if-le v5, v6, :cond_52e

    const/4 v5, 0x7

    .line 1236
    aget-byte v6, v3, v5

    and-int/lit16 v5, v6, 0xff

    const/16 v6, 0x8

    .line 1237
    aget-byte v7, v3, v6

    and-int/lit16 v7, v7, 0xff

    const/16 v10, 0x9

    .line 1238
    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v14, 0x10

    shl-int/2addr v5, v14

    shl-int/2addr v7, v6

    or-int/2addr v5, v7

    or-int/2addr v5, v10

    .line 1243
    iput v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->st_no:I

    const/16 v5, 0xa

    .line 1244
    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    const/4 v5, -0x1

    if-ne v3, v5, :cond_51d

    goto :goto_51e

    :cond_51d
    move v13, v3

    .line 1248
    :goto_51e
    iput v13, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    .line 1250
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcn/icomon/icdevicemanager/common/ICConfigManager;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    sget-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;->ICSDKModeCompetitive:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    if-ne v3, v5, :cond_534

    const/4 v3, 0x6

    .line 1251
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    goto :goto_534

    :cond_52e
    return-void

    .line 1259
    :cond_52f
    iput v13, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    goto :goto_534

    .line 1263
    :cond_532
    iput v13, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    .line 1266
    :cond_534
    :goto_534
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    .line 1267
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeSkip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    :cond_53e
    const/4 v5, 0x6

    if-ne v14, v5, :cond_54d

    .line 1280
    iput v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    .line 1281
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    .line 1282
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    :cond_54d
    const/16 v5, 0x180d

    if-ne v14, v5, :cond_561

    .line 1286
    iput v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    .line 1287
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    .line 1288
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeHR:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 1289
    iput v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    .line 1290
    iput-object v2, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    goto/16 :goto_8c8

    :cond_561
    const/16 v5, 0x64

    if-ne v14, v5, :cond_574

    .line 1295
    iput v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    .line 1296
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    .line 1297
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const/4 v3, 0x4

    .line 1298
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    goto/16 :goto_8c8

    :cond_574
    if-eqz v3, :cond_582

    .line 1301
    iput v12, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    .line 1302
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    .line 1303
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    :cond_582
    if-nez v6, :cond_8b6

    .line 1306
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    if-eqz v3, :cond_8b5

    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    array-length v3, v3

    if-nez v3, :cond_58f

    goto/16 :goto_8b5

    .line 1309
    :cond_58f
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v3

    .line 1311
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v5

    const/16 v6, 0xac

    if-eq v5, v6, :cond_5a2

    const/16 v6, 0xca

    if-eq v5, v6, :cond_5a2

    return-void

    .line 1317
    :cond_5a2
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v5

    and-int/lit16 v6, v5, 0xff

    .line 1319
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v13}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/lit8 v13, v5, 0x70

    const/4 v14, 0x4

    shr-int/2addr v13, v14

    and-int/lit8 v5, v5, 0xf

    if-nez v13, :cond_619

    const/4 v14, 0x0

    .line 1325
    iput v14, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    const/16 v5, 0xa

    if-ne v6, v5, :cond_5cb

    .line 1328
    invoke-virtual {v3, v12}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Skip(I)V

    :cond_5cb
    if-eqz v6, :cond_5e2

    const/4 v3, 0x1

    if-ne v6, v3, :cond_5d1

    goto :goto_5e2

    :cond_5d1
    const/4 v3, 0x2

    if-eq v6, v3, :cond_5dc

    if-ne v6, v12, :cond_5d7

    goto :goto_5dc

    .line 1338
    :cond_5d7
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    goto :goto_5e0

    .line 1335
    :cond_5dc
    :goto_5dc
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    :goto_5e0
    const/4 v3, 0x2

    goto :goto_5e9

    .line 1331
    :cond_5e2
    :goto_5e2
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    const/4 v3, 0x2

    .line 1332
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    :goto_5e9
    if-eqz v6, :cond_613

    if-ne v6, v3, :cond_5ee

    goto :goto_613

    :cond_5ee
    const/4 v3, 0x1

    if-eq v6, v3, :cond_60d

    if-ne v6, v12, :cond_5f4

    goto :goto_60d

    :cond_5f4
    const/16 v3, 0xa

    if-ne v6, v3, :cond_5fe

    .line 1347
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeRuler:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    :cond_5fe
    const/4 v3, 0x4

    if-ne v6, v3, :cond_607

    .line 1350
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeKitchenScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    .line 1353
    :cond_607
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeUnKnown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    .line 1344
    :cond_60d
    :goto_60d
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScaleWithTemperature:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    .line 1341
    :cond_613
    :goto_613
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    .line 1357
    :cond_619
    sget-object v6, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->IC_STREAM_BUFFER_SEEK_BEGIN:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    const/16 v14, 0x8

    invoke-virtual {v3, v6, v14}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Seek(Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;I)I

    if-nez v10, :cond_627

    .line 1360
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v6, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    goto :goto_62b

    .line 1363
    :cond_627
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v6, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    .line 1366
    :goto_62b
    iput v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-nez v5, :cond_635

    const/4 v6, 0x2

    if-ne v13, v6, :cond_635

    const/4 v6, 0x4

    .line 1369
    iput v6, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    :cond_635
    const/16 v6, 0xc

    packed-switch v13, :pswitch_data_9a4

    .line 1525
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeUnKnown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    .line 1463
    :pswitch_640
    sget-object v10, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeSkip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v10, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const/4 v10, 0x5

    if-eq v5, v10, :cond_64d

    const/4 v10, 0x6

    if-ne v5, v10, :cond_64b

    goto :goto_64d

    :cond_64b
    :goto_64b
    const/4 v3, 0x6

    goto :goto_68f

    .line 1467
    :cond_64d
    :goto_64d
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v10

    .line 1468
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v13

    .line 1469
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v3

    const/16 v14, 0x10

    shl-int/2addr v10, v14

    const/16 v14, 0x8

    shl-int/2addr v13, v14

    or-int/2addr v10, v13

    or-int/2addr v3, v10

    .line 1474
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->st_no:I

    const-string v3, "_"

    .line 1476
    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1477
    array-length v10, v3

    const/4 v13, 0x2

    if-ne v10, v13, :cond_6c7

    const/4 v10, 0x1

    .line 1478
    aget-object v3, v3, v10

    .line 1479
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v13, 0x4

    if-eq v10, v13, :cond_678

    return-void

    :cond_678
    const/16 v10, 0x10

    .line 1482
    invoke-static {v3, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    .line 1484
    iget v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    const v10, 0xffff

    if-ne v3, v10, :cond_68b

    const/4 v3, -0x1

    .line 1485
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    goto :goto_64b

    :cond_68b
    const/4 v3, -0x2

    .line 1488
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    goto :goto_64b

    :goto_68f
    if-ne v5, v3, :cond_6a3

    .line 1500
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v5

    iget-object v5, v5, Lcn/icomon/icdevicemanager/common/ICConfigManager;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    sget-object v10, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;->ICSDKModeCompetitive:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    if-ne v5, v10, :cond_69e

    .line 1501
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    goto :goto_6a3

    :cond_69e
    const v3, -0x10000001

    .line 1504
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    :cond_6a3
    :goto_6a3
    if-nez v8, :cond_6a6

    const/4 v8, 0x2

    .line 1511
    :cond_6a6
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    array-length v3, v3

    if-ne v3, v6, :cond_6c4

    .line 1512
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v3

    const/4 v5, 0x1

    .line 1513
    invoke-virtual {v3, v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 1514
    sget-object v6, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->IC_STREAM_BUFFER_SEEK_BEGIN:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    const/16 v7, 0x8

    invoke-virtual {v3, v6, v7}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Seek(Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;I)I

    .line 1515
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadInt()I

    move-result v3

    .line 1516
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceFlag:I

    goto/16 :goto_8c8

    :cond_6c4
    const/4 v5, 0x1

    goto/16 :goto_8c8

    :cond_6c7
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v11, v0, v2

    const-string v2, "base station rope broadcast name error, %s"

    .line 1492
    invoke-static {v4, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1460
    :pswitch_6d3
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeRuler:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    .line 1454
    :pswitch_6d9
    iget v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-nez v3, :cond_6e0

    const/4 v3, 0x2

    .line 1455
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    .line 1457
    :cond_6e0
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeKitchenScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    .line 1451
    :pswitch_6e6
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeBalance:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    .line 1377
    :pswitch_6ec
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const/4 v3, 0x1

    if-ne v5, v3, :cond_6f9

    .line 1379
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScaleWithTemperature:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto/16 :goto_8c8

    :cond_6f9
    const/16 v3, 0x8

    if-eq v5, v3, :cond_72e

    const/16 v3, 0xb

    if-eq v5, v3, :cond_72e

    if-ne v5, v6, :cond_704

    goto :goto_72e

    :cond_704
    const/4 v3, 0x7

    if-ne v5, v3, :cond_8c8

    const/4 v3, 0x0

    .line 1440
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->protocol_ver:I

    .line 1441
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    if-eqz v3, :cond_8c8

    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    array-length v3, v3

    const/16 v5, 0x9

    if-ne v3, v5, :cond_8c8

    .line 1442
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v3

    const/4 v5, 0x1

    .line 1443
    invoke-virtual {v3, v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 1444
    sget-object v5, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->IC_STREAM_BUFFER_SEEK_BEGIN:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    const/16 v6, 0x8

    invoke-virtual {v3, v5, v6}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Seek(Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;I)I

    .line 1445
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v3

    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->protocol_ver:I

    goto/16 :goto_8c8

    .line 1386
    :cond_72e
    :goto_72e
    iget-object v3, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v3

    const/4 v10, 0x1

    .line 1387
    invoke-virtual {v3, v10}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 1388
    sget-object v10, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->IC_STREAM_BUFFER_SEEK_BEGIN:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    const/16 v13, 0x8

    invoke-virtual {v3, v10, v13}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Seek(Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;I)I

    .line 1389
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadInt()I

    move-result v10

    .line 1390
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v14, 0xb

    if-eq v5, v14, :cond_74e

    if-ne v5, v6, :cond_781

    .line 1394
    :cond_74e
    iget-object v5, v7, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    array-length v5, v5

    const/16 v7, 0x13

    if-ne v5, v7, :cond_781

    .line 1395
    sget-object v5, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->IC_STREAM_BUFFER_SEEK_END:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    const/4 v7, -0x4

    invoke-virtual {v3, v5, v7}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Seek(Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;I)I

    .line 1396
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadInt()I

    move-result v3

    const/4 v5, 0x0

    :goto_760
    const/16 v7, 0x20

    if-ge v5, v7, :cond_781

    .line 1398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v7, v14}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v14, 0x1

    if-ne v7, v14, :cond_77e

    .line 1399
    invoke-static {v5}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_77e
    add-int/lit8 v5, v5, 0x1

    goto :goto_760

    .line 1411
    :cond_781
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1412
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1413
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1414
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1415
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1416
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1417
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1420
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1421
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1422
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1423
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1424
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v5, 0xe000000

    and-int/2addr v5, v10

    shr-int/lit8 v5, v5, 0x19

    .line 1426
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x1c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1427
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x1d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1428
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1429
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x1f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/icomon/icdevicemanager/common/ICCommon;->GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v3, :cond_898

    const/4 v3, 0x4

    goto :goto_89a

    :cond_898
    const/16 v3, 0x8

    .line 1431
    :goto_89a
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->pole:I

    .line 1432
    iget v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->pole:I

    const/16 v7, 0x8

    if-ne v3, v7, :cond_8a7

    .line 1433
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->ICDeviceFunctionEightElectrode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8a7
    const/4 v3, 0x1

    add-int/2addr v5, v3

    .line 1435
    iput v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->freqCount:I

    .line 1436
    iput v6, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->protocol_ver:I

    .line 1437
    iput-object v13, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceFuns:Ljava/util/List;

    goto :goto_8c8

    .line 1373
    :pswitch_8b0
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeWeightScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto :goto_8c8

    :cond_8b5
    :goto_8b5
    return-void

    :cond_8b6
    const/4 v3, 0x1

    .line 1531
    iput v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    .line 1532
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-eqz v10, :cond_8c4

    .line 1534
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScaleWithTemperature:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    goto :goto_8c8

    .line 1537
    :cond_8c4
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 1558
    :cond_8c8
    :goto_8c8
    iget-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-eqz v3, :cond_987

    iget-object v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeUnKnown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v3, v5, :cond_8d4

    goto/16 :goto_987

    .line 1562
    :cond_8d4
    iput-object v2, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    .line 1563
    iput v8, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->otaType:I

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v3, v5

    const/4 v5, 0x1

    aput-object v0, v3, v5

    .line 1570
    iget-object v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const/4 v6, 0x2

    aput-object v5, v3, v6

    iget-object v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    aput-object v5, v3, v12

    iget-object v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->rssi:Ljava/lang/Integer;

    const/4 v6, 0x4

    aput-object v5, v3, v6

    iget-object v5, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$manfactureData:[B

    invoke-static {v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v3, v6

    invoke-static {v9}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v3, v6

    iget v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v3, v6

    const-string v5, "scan result, name=%s,mac=%s,type=%s,com_type=%s,rssi=%d, manfacture=%s, services=%s, bm15=%d"

    invoke-static {v4, v5, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v8, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$peripheral:Landroid/bluetooth/BluetoothDevice;

    .line 1573
    iget-object v12, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iget-object v13, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iget v14, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->subType:I

    iget v3, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    iget v5, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceFlag:I

    iget v6, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->protocol_ver:I

    iget v10, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    move/from16 v18, v10

    move-object v10, v0

    move-object/from16 v19, v4

    move-object v4, v15

    move v15, v3

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-static/range {v7 .. v18}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$maddPeripheral(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;IIIII)Ljava/lang/String;

    move-result-object v3

    .line 1575
    iput-object v3, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->identifier:Ljava/lang/String;

    iget-object v5, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 1577
    invoke-static {v5}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_searchMacList(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_93b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_97c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1578
    invoke-static {v2, v6}, Lcn/icomon/icdevicemanager/common/ICCommon;->isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_93b

    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 1579
    invoke-static {v2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_searchMacList(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const-string v0, "already search device:%s"

    move-object/from16 v6, v19

    .line 1580
    invoke-static {v6, v0, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 1581
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->stopScan(Ljava/util/List;)V

    .line 1582
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeSearch:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    iget-object v2, v4, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->identifier:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 1583
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    .line 1588
    :cond_97c
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeScanDevice:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    const/4 v2, 0x0

    invoke-static {v0, v3, v4, v2}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    move-result-object v0

    .line 1589
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void

    :cond_987
    :goto_987
    move-object v6, v4

    new-array v0, v12, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v11, v0, v2

    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$5;->val$manfactureData:[B

    .line 1559
    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v9}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "scan result[unknown], name=%s, manfacture=%s, services=%s"

    invoke-static {v6, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_9a4
    .packed-switch 0x1
        :pswitch_8b0
        :pswitch_6ec
        :pswitch_6e6
        :pswitch_6d9
        :pswitch_6d3
        :pswitch_640
    .end packed-switch
.end method
