.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;
.super Ljava/lang/Object;
.source "XiaomiBandRfcommPort.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort$Write;
    }
.end annotation


# static fields
.field static final SPP_UUID:Ljava/util/UUID;

.field private static final main:Landroid/os/Handler;


# instance fields
.field private final client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

.field private volatile closed:Z

.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private volatile out:Ljava/io/OutputStream;

.field private volatile socket:Landroid/bluetooth/BluetoothSocket;

.field private writer:Landroid/os/Handler;

.field private writerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    const-string v0, "00001101-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->SPP_UUID:Ljava/util/UUID;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    .line 33
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->device:Landroid/bluetooth/BluetoothDevice;

    .line 34
    return-void
.end method

.method private open()Landroid/bluetooth/BluetoothSocket;
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 79
    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_b

    .line 81
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b} :catch_a1

    .line 85
    :cond_b
    :goto_b
    const-string v5, ""

    .line 86
    const/4 v0, 0x0

    move v8, v0

    :goto_f
    if-ge v8, v10, :cond_5b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v0, :cond_5b

    .line 89
    if-nez v8, :cond_33

    :try_start_17
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->device:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->SPP_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_1e} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1e} :catch_70

    move-result-object v7

    .line 91
    :goto_1f
    :try_start_1f
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 92
    iput-object v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 93
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->out:Ljava/io/OutputStream;

    .line 94
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-eqz v0, :cond_3c

    .line 95
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->quietClose(Landroid/bluetooth/BluetoothSocket;)V
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_31} :catch_9f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_31} :catch_9d

    move-object v0, v6

    .line 113
    :goto_32
    return-object v0

    .line 90
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->device:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->SPP_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_3a} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3a} :catch_70

    move-result-object v7

    goto :goto_1f

    .line 98
    :cond_3c
    :try_start_3c
    sget-object v9, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 99
    if-nez v8, :cond_51

    const-string v5, "secure"

    :goto_48
    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    .line 98
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v7

    .line 100
    goto :goto_32

    .line 99
    :cond_51
    const-string v5, "insecure"
    :try_end_53
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_53} :catch_9f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_53} :catch_9d

    goto :goto_48

    .line 101
    :catch_54
    move-exception v0

    move-object v7, v6

    .line 102
    :goto_56
    const-string v5, "permission"

    .line 103
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->quietClose(Landroid/bluetooth/BluetoothSocket;)V

    .line 110
    :cond_5b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v0, :cond_6e

    .line 111
    sget-object v7, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    move v2, v10

    move-object v3, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6e
    move-object v0, v6

    .line 113
    goto :goto_32

    .line 105
    :catch_70
    move-exception v0

    move-object v7, v6

    .line 106
    :goto_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->quietClose(Landroid/bluetooth/BluetoothSocket;)V

    .line 86
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_f

    .line 105
    :catch_9d
    move-exception v0

    goto :goto_72

    .line 101
    :catch_9f
    move-exception v0

    goto :goto_56

    .line 83
    :catch_a1
    move-exception v0

    goto/16 :goto_b
.end method

.method private static quietClose(Landroid/bluetooth/BluetoothSocket;)V
    .registers 2

    .prologue
    .line 159
    if-nez p0, :cond_3

    .line 166
    :goto_2
    return-void

    .line 163
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 164
    :catch_7
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->quietClose(Landroid/bluetooth/BluetoothSocket;)V

    .line 145
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 146
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->out:Ljava/io/OutputStream;

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writerThread:Landroid/os/HandlerThread;

    .line 148
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writerThread:Landroid/os/HandlerThread;

    .line 149
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writer:Landroid/os/Handler;

    .line 150
    if-eqz v0, :cond_18

    .line 152
    :try_start_15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    .line 156
    :cond_18
    :goto_18
    return-void

    .line 153
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 47
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->open()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 48
    if-nez v0, :cond_9

    .line 74
    :cond_8
    :goto_8
    return-void

    .line 51
    :cond_9
    const/16 v1, 0x800

    new-array v6, v1, [B

    .line 53
    :try_start_d
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 54
    :cond_11
    :goto_11
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v0, :cond_1b

    .line 55
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 56
    if-gez v0, :cond_6a

    .line 65
    :cond_1b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v0, :cond_8

    .line 66
    sget-object v6, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/4 v2, 0x4

    const/4 v4, 0x0

    const-string v5, "eof"

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_30} :catch_31

    goto :goto_8

    .line 68
    :catch_31
    move-exception v0

    move-object v2, v0

    .line 69
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v0, :cond_8

    .line 70
    sget-object v6, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, v10

    move-object v3, p0

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    .line 70
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 59
    :cond_6a
    if-lez v0, :cond_11

    .line 60
    :try_start_6c
    new-array v4, v0, [B

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    sget-object v8, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_82} :catch_31

    goto :goto_11
.end method

.method start()V
    .registers 3

    .prologue
    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "xems-spp-write"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writerThread:Landroid/os/HandlerThread;

    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writer:Landroid/os/Handler;

    .line 40
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "xems-spp-read"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    return-void
.end method

.method public write([B)V
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writer:Landroid/os/Handler;

    .line 119
    if-eqz v0, :cond_a

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v1, :cond_a

    if-nez p1, :cond_b

    .line 123
    :cond_a
    :goto_a
    return-void

    .line 122
    :cond_b
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort$Write;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort$Write;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method writeNow([B)V
    .registers 10

    .prologue
    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->out:Ljava/io/OutputStream;

    .line 127
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-eqz v1, :cond_9

    .line 139
    :cond_8
    :goto_8
    return-void

    .line 131
    :cond_9
    :try_start_9
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 132
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_8

    .line 133
    :catch_10
    move-exception v0

    move-object v3, v0

    .line 134
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v0, :cond_8

    .line 135
    sget-object v6, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/4 v2, 0x4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 136
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    .line 135
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method
