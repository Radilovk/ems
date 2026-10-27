.class public final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;
.super Ljava/lang/Object;
.source "MastogoScan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Listener;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Found;
    }
.end annotation


# static fields
.field public static final PREFIX:Ljava/lang/String; = "MASTOGO H-"


# instance fields
.field adapter:Landroid/bluetooth/BluetoothAdapter;

.field cb:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;

.field final listener:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Listener;

.field final main:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Listener;)V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->main:Landroid/os/Handler;

    .line 24
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->listener:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Listener;

    .line 25
    return-void
.end method

.method static nameOf(Landroid/bluetooth/BluetoothDevice;[B)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 57
    .line 59
    :try_start_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_e

    move-result-object v0

    .line 62
    :goto_5
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 80
    :goto_d
    return-object v0

    .line 60
    :catch_e
    move-exception v0

    move-object v0, v1

    goto :goto_5

    .line 65
    :cond_11
    if-nez p1, :cond_15

    move-object v0, v1

    .line 66
    goto :goto_d

    .line 68
    :cond_15
    const/4 v0, 0x0

    .line 69
    :goto_16
    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    if-ge v2, v3, :cond_26

    .line 70
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    .line 71
    if-eqz v2, :cond_26

    add-int v3, v0, v2

    array-length v4, p1

    if-lt v3, v4, :cond_28

    :cond_26
    move-object v0, v1

    .line 80
    goto :goto_d

    .line 74
    :cond_28
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 75
    const/16 v4, 0x8

    if-eq v3, v4, :cond_36

    const/16 v4, 0x9

    if-ne v3, v4, :cond_41

    .line 76
    :cond_36
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, p1, v0, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v1

    goto :goto_d

    .line 78
    :cond_41
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 79
    goto :goto_16
.end method


# virtual methods
.method public start()Z
    .registers 5

    .prologue
    .line 29
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 30
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 31
    :cond_12
    const/4 v0, 0x0

    .line 42
    :goto_13
    return v0

    .line 33
    :cond_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->stop()V

    .line 35
    :try_start_17
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->cb:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;

    .line 36
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->cb:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 37
    const-string v0, "mastogo"

    const-string v1, "startLeScan refused"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2f} :catch_31

    .line 42
    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    goto :goto_13

    .line 39
    :catch_31
    move-exception v0

    .line 40
    const-string v1, "mastogo"

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
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->cb:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_f

    .line 48
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->cb:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_13

    .line 52
    :cond_f
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->cb:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Cb;

    .line 53
    return-void

    .line 50
    :catch_13
    move-exception v0

    goto :goto_f
.end method
