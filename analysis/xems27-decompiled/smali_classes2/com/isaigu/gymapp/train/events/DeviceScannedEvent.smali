.class public Lcom/isaigu/gymapp/train/events/DeviceScannedEvent;
.super Ljava/lang/Object;
.source "DeviceScannedEvent.java"


# instance fields
.field private device:Lcom/clj/fastble/data/BleDevice;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .param p1, "device"    # Lcom/clj/fastble/data/BleDevice;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/isaigu/gymapp/train/events/DeviceScannedEvent;->device:Lcom/clj/fastble/data/BleDevice;

    .line 10
    return-void
.end method


# virtual methods
.method public getDevice()Lcom/clj/fastble/data/BleDevice;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/isaigu/gymapp/train/events/DeviceScannedEvent;->device:Lcom/clj/fastble/data/BleDevice;

    return-object v0
.end method

.method public setDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .param p1, "device"    # Lcom/clj/fastble/data/BleDevice;

    .line 17
    iput-object p1, p0, Lcom/isaigu/gymapp/train/events/DeviceScannedEvent;->device:Lcom/clj/fastble/data/BleDevice;

    .line 18
    return-void
.end method
