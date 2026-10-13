.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;
.super Ljava/lang/Object;
.source "BluetensScan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Found;
    }
.end annotation


# instance fields
.field adapter:Landroid/bluetooth/BluetoothAdapter;

.field cb:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;

.field final listener:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;

.field final main:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->main:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->listener:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;

    .line 23
    return-void
.end method


# virtual methods
.method public start()Z
    .registers 5

    .prologue
    .line 27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 28
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 29
    :cond_12
    const/4 v0, 0x0

    .line 40
    :goto_13
    return v0

    .line 31
    :cond_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->stop()V

    .line 33
    :try_start_17
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->cb:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;

    .line 34
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->cb:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 35
    const-string v0, "bluetens"

    const-string v1, "startLeScan refused"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2f} :catch_31

    .line 40
    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    goto :goto_13

    .line 37
    :catch_31
    move-exception v0

    .line 38
    const-string v1, "bluetens"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->cb:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_f

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->cb:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_13

    .line 50
    :cond_f
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->cb:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;

    .line 51
    return-void

    .line 48
    :catch_13
    move-exception v0

    goto :goto_f
.end method
