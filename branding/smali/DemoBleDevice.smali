.class public Lcom/isaigu/gymapp/utils/DemoBleDevice;
.super Lcom/clj/fastble/data/BleDevice;
.source "DemoBleDevice.java"


# instance fields
.field private demoMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    iput-object p1, p0, Lcom/isaigu/gymapp/utils/DemoBleDevice;->demoMac:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/isaigu/gymapp/utils/DemoBleDevice;->demoMac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "XEMS-DEMO"

    return-object v0
.end method
