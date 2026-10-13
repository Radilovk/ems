.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;
.super Ljava/lang/Object;
.source "BluetensScan.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cb"
.end annotation


# instance fields
.field final scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;)V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 58
    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 8

    .prologue
    .line 63
    if-nez p1, :cond_3

    .line 77
    :cond_2
    :goto_2
    return-void

    .line 66
    :cond_3
    const/4 v0, 0x0

    .line 68
    :try_start_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_1f

    move-result-object v0

    .line 71
    :goto_8
    :try_start_8
    invoke-static {v0, p3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensAdvert;->classify(Ljava/lang/String;[B)I

    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->main:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Found;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-direct {v2, v3, p1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Found;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1c} :catch_1d

    goto :goto_2

    .line 75
    :catch_1d
    move-exception v0

    goto :goto_2

    .line 69
    :catch_1f
    move-exception v1

    goto :goto_8
.end method
