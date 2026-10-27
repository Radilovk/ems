.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Found;
.super Ljava/lang/Object;
.source "MastogoScan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Found"
.end annotation


# instance fields
.field final device:Landroid/bluetooth/BluetoothDevice;

.field final name:Ljava/lang/String;

.field final scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Found;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    .line 112
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Found;->device:Landroid/bluetooth/BluetoothDevice;

    .line 113
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Found;->name:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Found;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->cb:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;

    if-eqz v0, :cond_11

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Found;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->listener:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Found;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Found;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Listener;->onUnit(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 121
    :cond_11
    return-void
.end method
