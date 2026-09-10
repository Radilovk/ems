.class public Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
.super Ljava/lang/Object;
.source "BleDeviceConfig.java"


# instance fields
.field private prefixName:Ljava/lang/String;

.field private readUuid:Ljava/lang/String;

.field private serviceUuid:Ljava/lang/String;

.field private writeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefixName"    # Ljava/lang/String;
    .param p2, "serviceUuid"    # Ljava/lang/String;
    .param p3, "readUuid"    # Ljava/lang/String;
    .param p4, "writeUuid"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->prefixName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->serviceUuid:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->readUuid:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->writeUuid:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getPrefixName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->prefixName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadUuid()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->readUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceUuid()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->serviceUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteUuid()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->writeUuid:Ljava/lang/String;

    return-object v0
.end method

.method public setPrefixName(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefixName"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->prefixName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setReadUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "readUuid"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->readUuid:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setServiceUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceUuid"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->serviceUuid:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setWriteUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "writeUuid"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;->writeUuid:Ljava/lang/String;

    .line 46
    return-void
.end method
