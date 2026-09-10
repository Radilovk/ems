.class public Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;
.super Ljava/lang/Object;
.source "DeviceDisConnectedEvent.java"


# instance fields
.field private device:Lcom/clj/fastble/data/BleDevice;

.field private deviceId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .param p1, "device"    # Lcom/clj/fastble/data/BleDevice;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;->device:Lcom/clj/fastble/data/BleDevice;

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/clj/fastble/data/BleDevice;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "device"    # Lcom/clj/fastble/data/BleDevice;
    .param p2, "deviceId"    # Ljava/lang/Integer;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;->device:Lcom/clj/fastble/data/BleDevice;

    .line 14
    iput-object p2, p0, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;->deviceId:Ljava/lang/Integer;

    .line 15
    return-void
.end method


# virtual methods
.method public getDevice()Lcom/clj/fastble/data/BleDevice;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;->device:Lcom/clj/fastble/data/BleDevice;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;->deviceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .param p1, "device"    # Lcom/clj/fastble/data/BleDevice;

    .line 21
    iput-object p1, p0, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;->device:Lcom/clj/fastble/data/BleDevice;

    .line 22
    return-void
.end method

.method public setDeviceId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/Integer;

    .line 29
    iput-object p1, p0, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;->deviceId:Ljava/lang/Integer;

    .line 30
    return-void
.end method
