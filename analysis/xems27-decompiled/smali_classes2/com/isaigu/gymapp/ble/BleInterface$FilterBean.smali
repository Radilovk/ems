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

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->deviceName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "serviceUUID"    # Ljava/lang/String;
    .param p3, "advertiseDataLength"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->deviceName:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    .line 102
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    .line 103
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    instance-of v1, p1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    if-nez v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    .line 111
    .local v1, "bean":Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
    iget-object v2, v1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->deviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    if-ne v2, v3, :cond_1

    .line 112
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_1
    return v0

    .line 108
    .end local v1    # "bean":Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
    :cond_2
    :goto_0
    return v0
.end method
