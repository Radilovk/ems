.class public Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
.super Ljava/lang/Object;
.source "BleInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ble/BleInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterBean"
.end annotation


# instance fields
.field public advertiseDataLength:Ljava/lang/Integer;

.field public deviceName:Ljava/lang/String;

.field public serviceUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "serviceUUID"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->deviceName:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "serviceUUID"    # Ljava/lang/String;
    .param p3, "advertiseDataLength"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->deviceName:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    .line 99
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 104
    if-ne p0, p1, :cond_0

    instance-of v2, p1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    if-nez v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 107
    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    .line 108
    .local v0, "bean":Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->deviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    if-ne v2, v3, :cond_0

    .line 109
    const/4 v1, 0x1

    goto :goto_0
.end method
