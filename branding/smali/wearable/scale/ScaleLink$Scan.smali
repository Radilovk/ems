.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;
.super Ljava/lang/Object;
.source "ScaleLink.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Scan"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V
    .registers 2

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 733
    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 7

    .prologue
    .line 738
    if-eqz p1, :cond_18

    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0, p1, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->isScale(Landroid/bluetooth/BluetoothDevice;[B)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 739
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Found;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-direct {v1, v2, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Found;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_18} :catch_19

    .line 743
    :cond_18
    :goto_18
    return-void

    .line 741
    :catch_19
    move-exception v0

    goto :goto_18
.end method
