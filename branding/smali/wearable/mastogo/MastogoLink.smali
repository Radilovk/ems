.class public final Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;
.super Ljava/lang/Object;
.source "MastogoLink.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Listener;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Retry;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Pump;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Event;
    }
.end annotation


# static fields
.field static final CCCD:Ljava/util/UUID;

.field public static final CONNECTING:I = 0x1

.field static final GAP_MS:J = 0xfL

.field public static final LOST:I = 0x3

.field static final MTU:I = 0x14

.field public static final NOTIFY:Ljava/util/UUID;

.field static final OP_TIMEOUT_MS:J = 0x5dcL

.field public static final READY:I = 0x2

.field static final RETRY_MS:J = 0x9c4L

.field public static final SERVICE:Ljava/util/UUID;

.field public static final WRITE:Ljava/util/UUID;


# instance fields
.field final app:Landroid/content/Context;

.field busy:Z

.field closed:Z

.field public final device:Landroid/bluetooth/BluetoothDevice;

.field gatt:Landroid/bluetooth/BluetoothGatt;

.field final listener:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Listener;

.field public final mac:Ljava/lang/String;

.field final main:Landroid/os/Handler;

.field public final name:Ljava/lang/String;

.field nt:Landroid/bluetooth/BluetoothGattCharacteristic;

.field opToken:I

.field final out:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

.field public state:I

.field wr:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "0000fff0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->SERVICE:Ljava/util/UUID;

    .line 36
    const-string v0, "0000fff5-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->WRITE:Ljava/util/UUID;

    .line 37
    const-string v0, "0000fff4-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->NOTIFY:Ljava/util/UUID;

    .line 38
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->CCCD:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Listener;)V
    .registers 8

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->out:Ljava/util/List;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->app:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->device:Landroid/bluetooth/BluetoothDevice;

    .line 64
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->mac:Ljava/lang/String;

    .line 65
    if-eqz p3, :cond_31

    :goto_25
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->name:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->listener:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Listener;

    .line 67
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-direct {v0, p0, p4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 68
    return-void

    .line 65
    :cond_31
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->mac:Ljava/lang/String;

    goto :goto_25
.end method

.method static log(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 71
    const-string v0, "mastogo"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->closed:Z

    .line 95
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->close()V

    .line 96
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->closeGatt()V

    .line 98
    return-void
.end method

.method closeGatt()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 102
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 103
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 104
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->nt:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 105
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->out:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->busy:Z

    .line 107
    if-eqz v0, :cond_19

    .line 109
    :try_start_13
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_1a

    .line 113
    :goto_16
    :try_start_16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_1c

    .line 117
    :cond_19
    :goto_19
    return-void

    .line 110
    :catch_1a
    move-exception v1

    goto :goto_16

    .line 114
    :catch_1c
    move-exception v0

    goto :goto_19
.end method

.method public connect()V
    .registers 6

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->closed:Z

    if-eqz v0, :cond_5

    .line 91
    :goto_4
    return-void

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->closeGatt()V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->setState(I)V

    .line 81
    :try_start_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_57

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->app:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;)V

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_23} :catch_24

    goto :goto_4

    .line 86
    :catch_24
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->log(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 84
    :cond_57
    :try_start_57
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->app:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Gatt;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_67} :catch_24

    goto :goto_4
.end method

.method public later(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    return-void
.end method

.method public now()J
    .registers 3

    .prologue
    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method onConnection(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 8

    .prologue
    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq p1, v0, :cond_5

    .line 148
    :cond_4
    :goto_4
    return-void

    .line 132
    :cond_5
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3c

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->log(Ljava/lang/String;)V

    .line 135
    :try_start_20
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_4

    .line 136
    :catch_24
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 139
    :cond_3c
    if-nez p3, :cond_4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->log(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->closeGatt()V

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setStopped()V

    .line 143
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->setState(I)V

    .line 144
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->closed:Z

    if-nez v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method onReady()V
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->setState(I)V

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hello()V

    .line 187
    return-void
.end method

.method onServices(Landroid/bluetooth/BluetoothGatt;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq p1, v1, :cond_6

    .line 182
    :goto_5
    return-void

    .line 154
    :cond_6
    sget-object v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->SERVICE:Ljava/util/UUID;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_40

    sget-object v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->WRITE:Ljava/util/UUID;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 156
    :goto_14
    if-eqz v2, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->NOTIFY:Ljava/util/UUID;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 157
    :cond_1c
    if-eqz v1, :cond_20

    if-nez v0, :cond_42

    .line 158
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no FFF0/FFF5/FFF4 on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->log(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->closeGatt()V

    .line 160
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->setState(I)V

    goto :goto_5

    :cond_40
    move-object v1, v0

    .line 155
    goto :goto_14

    .line 163
    :cond_42
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 164
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->nt:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FFF5 props 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FFF4 props 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->log(Ljava/lang/String;)V

    .line 168
    const/4 v1, 0x1

    :try_start_77
    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 169
    sget-object v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->CCCD:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_bb

    .line 171
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 172
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->busy:Z

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->opToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->opToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_a2} :catch_a4

    goto/16 :goto_5

    .line 178
    :catch_a4
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->log(Ljava/lang/String;)V

    .line 181
    :cond_bb
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->onReady()V

    goto/16 :goto_5
.end method

.method onWriteDone()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->state:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_22

    move v0, v1

    .line 191
    :goto_8
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->busy:Z

    .line 192
    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->opToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->opToken:I

    .line 193
    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->state:I

    if-ne v0, v1, :cond_24

    .line 194
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->onReady()V

    .line 198
    :goto_21
    return-void

    :cond_22
    move v0, v2

    .line 190
    goto :goto_8

    .line 197
    :cond_24
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Pump;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Pump;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;)V

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21
.end method

.method pump()V
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 224
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->busy:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->state:I

    if-eq v0, v3, :cond_36

    .line 246
    :cond_13
    :goto_13
    return-void

    .line 244
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write refused, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->out:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " left"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->log(Ljava/lang/String;)V

    .line 227
    :cond_36
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->out:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->out:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 231
    :try_start_46
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7d

    move v2, v4

    .line 232
    :goto_51
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_7f

    move v2, v3

    :goto_56
    invoke-virtual {v5, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 234
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_65} :catch_81

    move-result v0

    .line 239
    :goto_66
    if-eqz v0, :cond_14

    .line 240
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->busy:Z

    .line 241
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->opToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->opToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_13

    :cond_7d
    move v2, v1

    .line 231
    goto :goto_51

    :cond_7f
    move v2, v4

    .line 233
    goto :goto_56

    .line 236
    :catch_81
    move-exception v0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->log(Ljava/lang/String;)V

    move v0, v1

    goto :goto_66
.end method

.method public send([B)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 204
    move v0, v1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_1a

    .line 205
    const/16 v2, 0x14

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 206
    new-array v3, v2, [B

    .line 207
    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->out:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v0, v0, 0x14

    goto :goto_2

    .line 210
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->pump()V

    .line 211
    return-void
.end method

.method setState(I)V
    .registers 3

    .prologue
    .line 120
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->state:I

    if-eq v0, p1, :cond_b

    .line 121
    iput p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->state:I

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->listener:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Listener;

    invoke-interface {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Listener;->onLinkState(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;I)V

    .line 124
    :cond_b
    return-void
.end method
