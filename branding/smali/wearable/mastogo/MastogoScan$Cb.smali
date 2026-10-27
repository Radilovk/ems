.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;
.super Ljava/lang/Object;
.source "MastogoScan.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cb"
.end annotation


# instance fields
.field final scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;)V
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    .line 88
    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 8

    .prologue
    .line 93
    if-nez p1, :cond_3

    .line 102
    :cond_2
    :goto_2
    return-void

    .line 96
    :cond_3
    :try_start_3
    invoke-static {p1, p3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->nameOf(Landroid/bluetooth/BluetoothDevice;[B)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    const-string v1, "MASTOGO H-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->main:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Found;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    invoke-direct {v2, v3, p1, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Found;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1f} :catch_20

    goto :goto_2

    .line 100
    :catch_20
    move-exception v0

    goto :goto_2
.end method
