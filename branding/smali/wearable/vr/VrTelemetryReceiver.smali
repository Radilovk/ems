.class public final Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;
.super Ljava/lang/Object;
.source "VrTelemetryReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_MAX_STALE_MS:I = 0x3c

.field public static final LINK_TIMEOUT_MS:I = 0x1388

.field public static final PING_INTERVAL_MS:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "XemsVr"


# instance fields
.field private final clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

.field private final context:Landroid/content/Context;

.field private haveSeq:Z

.field private lastRxNs:J

.field private lastSeq:I

.field private final maxStaleNs:J

.field private mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private nextPingNs:J

.field private peerAddr:Ljava/net/InetAddress;

.field private peerApp:Ljava/lang/String;

.field private peerPort:I

.field private peerSession:I

.field private peerUp:Z

.field private final port:I

.field private volatile running:Z

.field private final rx:[B

.field private final rxb:Ljava/nio/ByteBuffer;

.field private final rxp:Ljava/net/DatagramPacket;

.field private final sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

.field private volatile socket:Ljava/net/DatagramSocket;

.field private volatile statHaptics:J

.field private volatile statLastLatencyNs:J

.field private volatile statReordered:J

.field private volatile statRttNs:J

.field private volatile statStale:J

.field private thread:Ljava/lang/Thread;

.field private final tx:[B

.field private txSeq:I

.field private final txb:Ljava/nio/ByteBuffer;

.field private final txp:Ljava/net/DatagramPacket;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;)V
    .registers 5

    .prologue
    .line 71
    const v0, 0xbab8

    const/16 v1, 0x3c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;II)V
    .registers 11

    .prologue
    const-wide/16 v4, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    .line 37
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    .line 39
    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    .line 40
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    .line 41
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxp:Ljava/net/DatagramPacket;

    .line 42
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txp:Ljava/net/DatagramPacket;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    .line 66
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statLastLatencyNs:J

    .line 67
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statRttNs:J

    .line 75
    if-nez p1, :cond_65

    const/4 v0, 0x0

    :goto_57
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->context:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    .line 77
    iput p3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->port:I

    .line 78
    int-to-long v0, p4

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->maxStaleNs:J

    .line 79
    return-void

    .line 75
    :cond_65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_57
.end method

.method private acquireWifi()V
    .registers 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->context:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 313
    :cond_4
    :goto_4
    return-void

    .line 300
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->context:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 301
    if-eqz v0, :cond_4

    .line 302
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_48

    const/4 v1, 0x4

    .line 304
    :goto_18
    const-string v2, "xems-vr"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 305
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 306
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 307
    const-string v1, "xems-vr"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3e} :catch_3f

    goto :goto_4

    .line 310
    :catch_3f
    move-exception v0

    .line 311
    const-string v1, "XemsVr"

    const-string v2, "wifi locks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 303
    :cond_48
    const/4 v1, 0x3

    goto :goto_18
.end method

.method private adopt(Ljava/net/InetAddress;II)V
    .registers 8

    .prologue
    const-wide/16 v2, -0x1

    .line 263
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->linkDown()V

    .line 264
    :cond_9
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerAddr:Ljava/net/InetAddress;

    .line 265
    iput p2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerPort:I

    .line 266
    iput p3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerSession:I

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->haveSeq:Z

    .line 268
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->reset()V

    .line 269
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statRttNs:J

    .line 270
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statLastLatencyNs:J

    .line 271
    return-void
.end method

.method private handle(Ljava/net/DatagramSocket;IJ)V
    .registers 16

    .prologue
    .line 173
    const/16 v0, 0x18

    if-ge p2, v0, :cond_5

    .line 226
    :cond_4
    :goto_4
    return-void

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v1, 0x48525658    # 215385.38f

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxp:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxp:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    .line 182
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v0, :cond_7d

    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerSession:I

    if-ne v2, v0, :cond_7d

    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerPort:I

    if-ne v4, v0, :cond_7d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    .line 183
    :goto_5b
    if-nez v0, :cond_67

    .line 185
    const/4 v8, 0x3

    if-ne v1, v8, :cond_4

    const/16 v8, 0x78

    if-lt p2, v8, :cond_4

    .line 186
    invoke-direct {p0, v3, v4, v2}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->adopt(Ljava/net/InetAddress;II)V

    .line 188
    :cond_67
    iput-wide p3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->lastRxNs:J

    .line 190
    packed-switch v1, :pswitch_data_178

    goto :goto_4

    .line 210
    :pswitch_6d
    const/16 v0, 0x28

    if-lt p2, v0, :cond_4

    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->inOrder(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v4, p0

    move-wide v8, p3

    .line 211
    invoke-direct/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->onHaptic(IJJ)V

    goto :goto_4

    .line 182
    :cond_7d
    const/4 v0, 0x0

    goto :goto_5b

    .line 192
    :pswitch_7f
    if-nez v0, :cond_dd

    .line 193
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v2, 0x1a

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x5d

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 194
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v6, 0x1b

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v2, v5, v6, v1, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    .line 196
    const-string v1, "XemsVr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "link up "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " @"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrLink(ZLjava/lang/String;)V

    .line 199
    :cond_dd
    const/16 v1, 0x81

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sendSmall(Ljava/net/DatagramSocket;IJ)V

    .line 200
    if-nez v0, :cond_4

    .line 201
    const/16 v0, 0x82

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sendSmall(Ljava/net/DatagramSocket;IJ)V

    .line 202
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xee6b280

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->nextPingNs:J

    goto/16 :goto_4

    .line 206
    :pswitch_f9
    const/16 v0, 0x28

    if-lt p2, v0, :cond_4

    .line 207
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    move-wide v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->add(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->rttNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statRttNs:J

    goto/16 :goto_4

    .line 214
    :pswitch_120
    const/16 v0, 0x1c

    if-lt p2, v0, :cond_4

    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->inOrder(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 217
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v3, 0x18

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->synced()Z

    move-result v3

    if-eqz v3, :cond_14a

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    invoke-virtual {v3, v6, v7}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->toTablet(J)J

    move-result-wide p3

    :cond_14a
    invoke-interface {v1, v2, v0, p3, p4}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrStop(IIJ)V

    .line 218
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    .line 220
    const-string v0, "XemsVr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "link closed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrLink(ZLjava/lang/String;)V

    goto/16 :goto_4

    .line 190
    nop

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_120
        :pswitch_7f
        :pswitch_f9
    .end packed-switch
.end method

.method private inOrder(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 253
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->haveSeq:Z

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->lastSeq:I

    sub-int v1, p1, v1

    if-gtz v1, :cond_14

    .line 254
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statReordered:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statReordered:J

    .line 255
    const/4 v0, 0x0

    .line 259
    :goto_13
    return v0

    .line 257
    :cond_14
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->haveSeq:Z

    .line 258
    iput p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->lastSeq:I

    goto :goto_13
.end method

.method private linkDown()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 274
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    .line 275
    const-string v0, "XemsVr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "link down "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrStop(IIJ)V

    .line 277
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrLink(ZLjava/lang/String;)V

    .line 278
    return-void
.end method

.method private onHaptic(IJJ)V
    .registers 24

    .prologue
    .line 229
    .line 230
    const-wide/16 v12, -0x1

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->synced()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->toTablet(J)J

    move-result-wide v10

    .line 233
    const-wide/16 v2, 0x0

    sub-long v4, p4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 234
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->maxStaleNs:J

    cmp-long v2, v12, v2

    if-lez v2, :cond_34

    .line 235
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statStale:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statStale:J

    .line 249
    :goto_31
    return-void

    :cond_32
    move-wide/from16 v10, p4

    .line 239
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v3, 0x18

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0xff

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v4, 0x19

    aget-byte v2, v2, v4

    and-int/lit16 v8, v2, 0xff

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v4, 0x1c

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v4

    .line 242
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_97

    const/4 v4, 0x0

    .line 244
    :cond_58
    :goto_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v6, v2

    const-wide v14, 0xffffffffL

    and-long v5, v6, v14

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v7, 0x24

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    .line 246
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statLastLatencyNs:J

    .line 247
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statHaptics:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statHaptics:J

    .line 248
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    move/from16 v9, p1

    invoke-direct/range {v2 .. v14}, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;-><init>(IFJFIIJJLjava/lang/String;)V

    invoke-interface {v15, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrHaptic(Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;)V

    goto :goto_31

    .line 243
    :cond_97
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_58

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_58
.end method

.method private releaseWifi()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 317
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 318
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_23} :catch_28

    .line 321
    :cond_23
    :goto_23
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 322
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 323
    return-void

    .line 319
    :catch_28
    move-exception v0

    goto :goto_23
.end method

.method private sendSmall(Ljava/net/DatagramSocket;IJ)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    const v1, 0x48525658    # 215385.38f

    invoke-virtual {v0, v3, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    const/4 v1, 0x5

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 285
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    iget v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerSession:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 286
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    iget v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txSeq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txSeq:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p3, p4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txp:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txp:Ljava/net/DatagramPacket;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerPort:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 291
    :try_start_46
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txp:Ljava/net/DatagramPacket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4b} :catch_4c

    .line 295
    :cond_4b
    :goto_4b
    return-void

    .line 292
    :catch_4c
    move-exception v0

    .line 293
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z

    if-eqz v1, :cond_4b

    const-string v1, "XemsVr"

    const-string v2, "send"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b
.end method


# virtual methods
.method public droppedReordered()J
    .registers 3

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statReordered:J

    return-wide v0
.end method

.method public droppedStale()J
    .registers 3

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statStale:J

    return-wide v0
.end method

.method public haptics()J
    .registers 3

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statHaptics:J

    return-wide v0
.end method

.method public isLinked()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    return v0
.end method

.method public lastLatencyNs()J
    .registers 3

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statLastLatencyNs:J

    return-wide v0
.end method

.method public rttNs()J
    .registers 3

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statRttNs:J

    return-wide v0
.end method

.method public run()V
    .registers 9

    .prologue
    .line 141
    const/16 v0, -0x13

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_8d

    .line 144
    :goto_5
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->socket:Ljava/net/DatagramSocket;

    .line 145
    :goto_7
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z

    if-eqz v0, :cond_85

    .line 146
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 147
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v3, :cond_23

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->lastRxNs:J

    sub-long v4, v0, v4

    const-wide v6, 0x12a05f200L

    cmp-long v3, v4, v6

    if-lez v3, :cond_23

    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->linkDown()V

    .line 148
    :cond_23
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v3, :cond_38

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->nextPingNs:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_38

    .line 149
    const/16 v3, 0x82

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sendSmall(Ljava/net/DatagramSocket;IJ)V

    .line 150
    const-wide/32 v4, 0xee6b280

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->nextPingNs:J

    .line 152
    :cond_38
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v0, :cond_75

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->nextPingNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 154
    :goto_43
    const-wide/16 v4, 0x1

    const-wide/32 v6, 0xf4240

    :try_start_48
    div-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxp:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxp:Ljava/net/DatagramPacket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_5e
    .catch Ljava/net/SocketTimeoutException; {:try_start_48 .. :try_end_5e} :catch_90
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5e} :catch_79

    .line 164
    :try_start_5e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxp:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->handle(Ljava/net/DatagramSocket;IJ)V
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_6b} :catch_6c

    goto :goto_7

    .line 165
    :catch_6c
    move-exception v0

    .line 166
    const-string v1, "XemsVr"

    const-string v3, "dispatch"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 152
    :cond_75
    const-wide/32 v0, 0x3b9aca00

    goto :goto_43

    .line 159
    :catch_79
    move-exception v0

    .line 160
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z

    if-eqz v1, :cond_85

    const-string v1, "XemsVr"

    const-string v2, "receive"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :cond_85
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v0, :cond_8c

    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->linkDown()V

    .line 170
    :cond_8c
    return-void

    .line 142
    :catch_8d
    move-exception v0

    goto/16 :goto_5

    .line 157
    :catch_90
    move-exception v0

    goto/16 :goto_7
.end method

.method public declared-synchronized start()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_40

    if-eqz v0, :cond_7

    .line 97
    :goto_5
    monitor-exit p0

    return-void

    .line 83
    :cond_7
    :try_start_7
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 86
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_40

    .line 88
    const/16 v1, 0xb8

    :try_start_1c
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setTrafficClass(I)V
    :try_end_1f
    .catch Ljava/net/SocketException; {:try_start_1c .. :try_end_1f} :catch_43
    .catchall {:try_start_1c .. :try_end_1f} :catchall_40

    .line 91
    :goto_1f
    :try_start_1f
    new-instance v1, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->port:I

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 92
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->socket:Ljava/net/DatagramSocket;

    .line 93
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->acquireWifi()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z

    .line 95
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "xems-vr-rx"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->thread:Ljava/lang/Thread;

    .line 96
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3f
    .catchall {:try_start_1f .. :try_end_3f} :catchall_40

    goto :goto_5

    .line 82
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :catch_43
    move-exception v1

    goto :goto_1f
.end method

.method public declared-synchronized stop()V
    .registers 5

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez v0, :cond_7

    .line 111
    :goto_5
    monitor-exit p0

    return-void

    .line 101
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->socket:Ljava/net/DatagramSocket;

    .line 103
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_23

    .line 105
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->thread:Ljava/lang/Thread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1c} :catch_26
    .catchall {:try_start_11 .. :try_end_1c} :catchall_23

    .line 109
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    :try_start_1d
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->thread:Ljava/lang/Thread;

    .line 110
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->releaseWifi()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_23

    goto :goto_5

    .line 100
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    .line 106
    :catch_26
    move-exception v0

    .line 107
    :try_start_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_23

    goto :goto_1c
.end method
