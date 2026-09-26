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

    .line 79
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_9

    .line 81
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 84
    :cond_9
    goto :goto_b

    .line 83
    :catchall_a
    move-exception v0

    .line 85
    :goto_b
    nop

    .line 86
    const/4 v0, 0x0

    const-string v1, ""

    :goto_f
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_8e

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v2, :cond_8e

    .line 87
    nop

    .line 89
    if-nez v0, :cond_23

    :try_start_1a
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->device:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->SPP_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    goto :goto_2b

    .line 90
    :cond_23
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->device:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->SPP_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_2b} :catch_84
    .catchall {:try_start_1a .. :try_end_2b} :catchall_5d

    .line 91
    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 92
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 93
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->out:Ljava/io/OutputStream;

    .line 94
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-eqz v2, :cond_3e

    .line 95
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->quietClose(Landroid/bluetooth/BluetoothSocket;)V

    .line 96
    return-object v3

    .line 98
    :cond_3e
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 99
    if-nez v0, :cond_4b

    const-string v4, "secure"

    goto :goto_4d

    :cond_4b
    const-string v4, "insecure"

    :goto_4d
    move-object v9, v4

    move-object v4, v10

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    .line 98
    invoke-virtual {v2, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_56
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_56} :catch_5b
    .catchall {:try_start_2b .. :try_end_56} :catchall_57

    .line 100
    return-object v1

    .line 105
    :catchall_57
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_5e

    .line 101
    :catch_5b
    move-exception v0

    goto :goto_86

    .line 105
    :catchall_5d
    move-exception v1

    .line 106
    :goto_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->quietClose(Landroid/bluetooth/BluetoothSocket;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 101
    :catch_84
    move-exception v0

    move-object v1, v3

    .line 102
    :goto_86
    nop

    .line 103
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->quietClose(Landroid/bluetooth/BluetoothSocket;)V

    .line 104
    const-string v1, "permission"

    move-object v9, v1

    goto :goto_8f

    .line 110
    :cond_8e
    move-object v9, v1

    :goto_8f
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v0, :cond_a3

    .line 111
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/4 v6, 0x2

    const/4 v8, 0x0

    move-object v4, v1

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    :cond_a3
    return-object v3
.end method

.method private static quietClose(Landroid/bluetooth/BluetoothSocket;)V
    .registers 1

    .line 159
    if-nez p0, :cond_3

    .line 160
    return-void

    .line 163
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 165
    goto :goto_8

    .line 164
    :catchall_7
    move-exception p0

    .line 166
    :goto_8
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->quietClose(Landroid/bluetooth/BluetoothSocket;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 146
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->out:Ljava/io/OutputStream;

    .line 147
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writerThread:Landroid/os/HandlerThread;

    .line 148
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writerThread:Landroid/os/HandlerThread;

    .line 149
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writer:Landroid/os/Handler;

    .line 150
    if-eqz v1, :cond_1a

    .line 152
    :try_start_15
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    .line 154
    goto :goto_1a

    .line 153
    :catchall_19
    move-exception v0

    .line 156
    :cond_1a
    :goto_1a
    return-void
.end method

.method public run()V
    .registers 11

    .line 47
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->open()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 48
    if-nez v0, :cond_7

    .line 49
    return-void

    .line 51
    :cond_7
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 53
    :try_start_b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 54
    :goto_f
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v2, :cond_33

    .line 55
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 56
    if-gez v2, :cond_1a

    .line 57
    goto :goto_33

    .line 59
    :cond_1a
    if-lez v2, :cond_32

    .line 60
    new-array v7, v2, [B

    .line 61
    const/4 v3, 0x0

    invoke-static {v1, v3, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v9, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/4 v5, 0x3

    const/4 v8, 0x0

    move-object v3, v9

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    :cond_32
    goto :goto_f

    .line 65
    :cond_33
    :goto_33
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v0, :cond_49

    .line 66
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v7, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/4 v3, 0x4

    const/4 v5, 0x0

    const-string v6, "eof"

    move-object v1, v7

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_4a

    .line 73
    :cond_49
    goto :goto_7f

    .line 68
    :catchall_4a
    move-exception v0

    .line 69
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v1, :cond_7f

    .line 70
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v8, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/4 v4, 0x4

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    .line 70
    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    :cond_7f
    :goto_7f
    return-void
.end method

.method start()V
    .registers 3

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "xems-spp-write"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writerThread:Landroid/os/HandlerThread;

    .line 38
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

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->writer:Landroid/os/Handler;

    .line 119
    if-eqz v0, :cond_14

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v1, :cond_14

    if-nez p1, :cond_b

    goto :goto_14

    .line 122
    :cond_b
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort$Write;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort$Write;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void

    .line 120
    :cond_14
    :goto_14
    return-void
.end method

.method writeNow([B)V
    .registers 10

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->out:Ljava/io/OutputStream;

    .line 127
    if-eqz v0, :cond_3b

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-eqz v1, :cond_9

    goto :goto_3b

    .line 131
    :cond_9
    :try_start_9
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 132
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    .line 138
    goto :goto_3a

    .line 133
    :catchall_10
    move-exception p1

    .line 134
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->closed:Z

    if-nez v0, :cond_3a

    .line 135
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->main:Landroid/os/Handler;

    new-instance v7, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/4 v3, 0x4

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    .line 135
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :cond_3a
    :goto_3a
    return-void

    .line 128
    :cond_3b
    :goto_3b
    return-void
.end method
