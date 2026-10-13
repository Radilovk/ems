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

.field private volatile control:Lcom/isaigu/gymapp/wearable/vr/VrControlSink;

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

.field private final stx:[B

.field private final stxb:Ljava/nio/ByteBuffer;

.field private final stxp:Ljava/net/DatagramPacket;

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
    .line 76
    const v0, 0xbab8

    const/16 v1, 0x3c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;II)V
    .registers 11

    .prologue
    const-wide/16 v4, -0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    .line 38
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    .line 39
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    .line 40
    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    .line 41
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    .line 42
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxp:Ljava/net/DatagramPacket;

    .line 43
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txp:Ljava/net/DatagramPacket;

    .line 44
    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stx:[B

    .line 45
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stx:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stxb:Ljava/nio/ByteBuffer;

    .line 46
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stx:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stx:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stxp:Ljava/net/DatagramPacket;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    .line 71
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statLastLatencyNs:J

    .line 72
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statRttNs:J

    .line 80
    if-nez p1, :cond_85

    const/4 v0, 0x0

    :goto_77
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->context:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    .line 82
    iput p3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->port:I

    .line 83
    int-to-long v0, p4

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->maxStaleNs:J

    .line 84
    return-void

    .line 80
    :cond_85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_77
.end method

.method private acquireWifi()V
    .registers 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->context:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 350
    :cond_4
    :goto_4
    return-void

    .line 337
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->context:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 338
    if-eqz v0, :cond_4

    .line 339
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_48

    const/4 v1, 0x4

    .line 341
    :goto_18
    const-string v2, "xems-vr"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 342
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 343
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 344
    const-string v1, "xems-vr"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 346
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3e} :catch_3f

    goto :goto_4

    .line 347
    :catch_3f
    move-exception v0

    .line 348
    const-string v1, "XemsVr"

    const-string v2, "wifi locks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 340
    :cond_48
    const/4 v1, 0x3

    goto :goto_18
.end method

.method private adopt(Ljava/net/InetAddress;II)V
    .registers 8

    .prologue
    const-wide/16 v2, -0x1

    .line 282
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->linkDown()V

    .line 283
    :cond_9
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerAddr:Ljava/net/InetAddress;

    .line 284
    iput p2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerPort:I

    .line 285
    iput p3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerSession:I

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->haveSeq:Z

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->reset()V

    .line 288
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statRttNs:J

    .line 289
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statLastLatencyNs:J

    .line 290
    return-void
.end method

.method private handle(Ljava/net/DatagramSocket;IJ)V
    .registers 16

    .prologue
    .line 183
    const/16 v0, 0x18

    if-ge p2, v0, :cond_5

    .line 245
    :cond_4
    :goto_4
    return-void

    .line 184
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

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxp:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxp:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    .line 192
    const/4 v0, 0x5

    if-ne v1, v0, :cond_7f

    .line 194
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->control:Lcom/isaigu/gymapp/wearable/vr/VrControlSink;

    .line 195
    const/16 v0, 0x20

    if-lt p2, v0, :cond_4

    if-eqz v2, :cond_4

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v1, 0x18

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v6, 0x19

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v7, 0x1c

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    invoke-interface {v2, v0, v1, v6}, Lcom/isaigu/gymapp/wearable/vr/VrControlSink;->onVrControl(III)V

    move-object v0, p0

    move-object v1, p1

    move-wide v6, p3

    .line 197
    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sendState(Ljava/net/DatagramSocket;Lcom/isaigu/gymapp/wearable/vr/VrControlSink;Ljava/net/InetAddress;IIJ)V

    goto :goto_4

    .line 201
    :cond_7f
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v0, :cond_b9

    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerSession:I

    if-ne v5, v0, :cond_b9

    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerPort:I

    if-ne v4, v0, :cond_b9

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    const/4 v0, 0x1

    .line 202
    :goto_94
    if-nez v0, :cond_a0

    .line 204
    const/4 v8, 0x3

    if-ne v1, v8, :cond_4

    const/16 v8, 0x78

    if-lt p2, v8, :cond_4

    .line 205
    invoke-direct {p0, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->adopt(Ljava/net/InetAddress;II)V

    .line 207
    :cond_a0
    iput-wide p3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->lastRxNs:J

    .line 209
    packed-switch v1, :pswitch_data_1b4

    goto/16 :goto_4

    .line 229
    :pswitch_a7
    const/16 v0, 0x28

    if-lt p2, v0, :cond_4

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->inOrder(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v4, p0

    move v5, v2

    move-wide v8, p3

    .line 230
    invoke-direct/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->onHaptic(IJJ)V

    goto/16 :goto_4

    .line 201
    :cond_b9
    const/4 v0, 0x0

    goto :goto_94

    .line 211
    :pswitch_bb
    if-nez v0, :cond_119

    .line 212
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v2, 0x1a

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x5d

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 213
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v6, 0x1b

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v2, v5, v6, v1, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    .line 215
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

    .line 216
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrLink(ZLjava/lang/String;)V

    .line 218
    :cond_119
    const/16 v1, 0x81

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sendSmall(Ljava/net/DatagramSocket;IJ)V

    .line 219
    if-nez v0, :cond_4

    .line 220
    const/16 v0, 0x82

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sendSmall(Ljava/net/DatagramSocket;IJ)V

    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xee6b280

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->nextPingNs:J

    goto/16 :goto_4

    .line 225
    :pswitch_135
    const/16 v0, 0x28

    if-lt p2, v0, :cond_4

    .line 226
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

    .line 233
    :pswitch_15c
    const/16 v0, 0x1c

    if-lt p2, v0, :cond_4

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->inOrder(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 236
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v3, 0x18

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->synced()Z

    move-result v3

    if-eqz v3, :cond_186

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    invoke-virtual {v3, v6, v7}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->toTablet(J)J

    move-result-wide p3

    :cond_186
    invoke-interface {v1, v2, v0, p3, p4}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrStop(IIJ)V

    .line 237
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    .line 239
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

    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrLink(ZLjava/lang/String;)V

    goto/16 :goto_4

    .line 209
    nop

    :pswitch_data_1b4
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_15c
        :pswitch_bb
        :pswitch_135
    .end packed-switch
.end method

.method private inOrder(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 272
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->haveSeq:Z

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->lastSeq:I

    sub-int v1, p1, v1

    if-gtz v1, :cond_14

    .line 273
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statReordered:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statReordered:J

    .line 274
    const/4 v0, 0x0

    .line 278
    :goto_13
    return v0

    .line 276
    :cond_14
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->haveSeq:Z

    .line 277
    iput p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->lastSeq:I

    goto :goto_13
.end method

.method private linkDown()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 293
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    .line 294
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

    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrStop(IIJ)V

    .line 296
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrLink(ZLjava/lang/String;)V

    .line 297
    return-void
.end method

.method private onHaptic(IJJ)V
    .registers 24

    .prologue
    .line 248
    .line 249
    const-wide/16 v12, -0x1

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->synced()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->clock:Lcom/isaigu/gymapp/wearable/vr/VrClockSync;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->toTablet(J)J

    move-result-wide v10

    .line 252
    const-wide/16 v2, 0x0

    sub-long v4, p4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 253
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->maxStaleNs:J

    cmp-long v2, v12, v2

    if-lez v2, :cond_34

    .line 254
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statStale:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statStale:J

    .line 268
    :goto_31
    return-void

    :cond_32
    move-wide/from16 v10, p4

    .line 258
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v3, 0x18

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0xff

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    const/16 v4, 0x19

    aget-byte v2, v2, v4

    and-int/lit16 v8, v2, 0xff

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v4, 0x1c

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v4

    .line 261
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_97

    const/4 v4, 0x0

    .line 263
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

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxb:Ljava/nio/ByteBuffer;

    const/16 v7, 0x24

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    .line 265
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statLastLatencyNs:J

    .line 266
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statHaptics:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statHaptics:J

    .line 267
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sink:Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;

    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerApp:Ljava/lang/String;

    move/from16 v9, p1

    invoke-direct/range {v2 .. v14}, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;-><init>(IFJFIIJJLjava/lang/String;)V

    invoke-interface {v15, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;->onVrHaptic(Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;)V

    goto :goto_31

    .line 262
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

    .line 354
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 355
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

    .line 358
    :cond_23
    :goto_23
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 359
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->mcLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 360
    return-void

    .line 356
    :catch_28
    move-exception v0

    goto :goto_23
.end method

.method private sendSmall(Ljava/net/DatagramSocket;IJ)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    const v1, 0x48525658    # 215385.38f

    invoke-virtual {v0, v3, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->tx:[B

    const/4 v1, 0x5

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 303
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 304
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    iget v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerSession:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    iget v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txSeq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txSeq:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p3, p4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txp:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txp:Ljava/net/DatagramPacket;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerPort:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 310
    :try_start_46
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txp:Ljava/net/DatagramPacket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4b} :catch_4c

    .line 314
    :cond_4b
    :goto_4b
    return-void

    .line 311
    :catch_4c
    move-exception v0

    .line 312
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z

    if-eqz v1, :cond_4b

    const-string v1, "XemsVr"

    const-string v2, "send"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b
.end method

.method private sendState(Ljava/net/DatagramSocket;Lcom/isaigu/gymapp/wearable/vr/VrControlSink;Ljava/net/InetAddress;IIJ)V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stxb:Ljava/nio/ByteBuffer;

    const v1, 0x48525658    # 215385.38f

    invoke-virtual {v0, v3, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stx:[B

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 319
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stx:[B

    const/4 v1, 0x5

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stxb:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 321
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stxb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stxb:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    iget v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txSeq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->txSeq:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stxb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p6, p7}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 324
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stxb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x18

    invoke-interface {p2, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrControlSink;->fillState(Ljava/nio/ByteBuffer;I)V

    .line 325
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stxp:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 326
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stxp:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p4}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 328
    :try_start_48
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->stxp:Ljava/net/DatagramPacket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_4e

    .line 332
    :cond_4d
    :goto_4d
    return-void

    .line 329
    :catch_4e
    move-exception v0

    .line 330
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z

    if-eqz v1, :cond_4d

    const-string v1, "XemsVr"

    const-string v2, "send state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d
.end method


# virtual methods
.method public droppedReordered()J
    .registers 3

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statReordered:J

    return-wide v0
.end method

.method public droppedStale()J
    .registers 3

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statStale:J

    return-wide v0
.end method

.method public haptics()J
    .registers 3

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statHaptics:J

    return-wide v0
.end method

.method public isLinked()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    return v0
.end method

.method public lastLatencyNs()J
    .registers 3

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statLastLatencyNs:J

    return-wide v0
.end method

.method public rttNs()J
    .registers 3

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->statRttNs:J

    return-wide v0
.end method

.method public run()V
    .registers 9

    .prologue
    .line 151
    const/16 v0, -0x13

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_8d

    .line 154
    :goto_5
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->socket:Ljava/net/DatagramSocket;

    .line 155
    :goto_7
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z

    if-eqz v0, :cond_85

    .line 156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 157
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v3, :cond_23

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->lastRxNs:J

    sub-long v4, v0, v4

    const-wide v6, 0x12a05f200L

    cmp-long v3, v4, v6

    if-lez v3, :cond_23

    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->linkDown()V

    .line 158
    :cond_23
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v3, :cond_38

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->nextPingNs:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_38

    .line 159
    const/16 v3, 0x82

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->sendSmall(Ljava/net/DatagramSocket;IJ)V

    .line 160
    const-wide/32 v4, 0xee6b280

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->nextPingNs:J

    .line 162
    :cond_38
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v0, :cond_75

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->nextPingNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 164
    :goto_43
    const-wide/16 v4, 0x1

    const-wide/32 v6, 0xf4240

    :try_start_48
    div-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 165
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxp:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rx:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->rxp:Ljava/net/DatagramPacket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_5e
    .catch Ljava/net/SocketTimeoutException; {:try_start_48 .. :try_end_5e} :catch_90
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5e} :catch_79

    .line 174
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

    .line 175
    :catch_6c
    move-exception v0

    .line 176
    const-string v1, "XemsVr"

    const-string v3, "dispatch"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 162
    :cond_75
    const-wide/32 v0, 0x3b9aca00

    goto :goto_43

    .line 169
    :catch_79
    move-exception v0

    .line 170
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z

    if-eqz v1, :cond_85

    const-string v1, "XemsVr"

    const-string v2, "receive"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :cond_85
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->peerUp:Z

    if-eqz v0, :cond_8c

    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->linkDown()V

    .line 180
    :cond_8c
    return-void

    .line 152
    :catch_8d
    move-exception v0

    goto/16 :goto_5

    .line 167
    :catch_90
    move-exception v0

    goto/16 :goto_7
.end method

.method public setControl(Lcom/isaigu/gymapp/wearable/vr/VrControlSink;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->control:Lcom/isaigu/gymapp/wearable/vr/VrControlSink;

    .line 89
    return-void
.end method

.method public declared-synchronized start()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_40

    if-eqz v0, :cond_7

    .line 107
    :goto_5
    monitor-exit p0

    return-void

    .line 93
    :cond_7
    :try_start_7
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 96
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_40

    .line 98
    const/16 v1, 0xb8

    :try_start_1c
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setTrafficClass(I)V
    :try_end_1f
    .catch Ljava/net/SocketException; {:try_start_1c .. :try_end_1f} :catch_43
    .catchall {:try_start_1c .. :try_end_1f} :catchall_40

    .line 101
    :goto_1f
    :try_start_1f
    new-instance v1, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->port:I

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 102
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->socket:Ljava/net/DatagramSocket;

    .line 103
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->acquireWifi()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z

    .line 105
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "xems-vr-rx"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->thread:Ljava/lang/Thread;

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3f
    .catchall {:try_start_1f .. :try_end_3f} :catchall_40

    goto :goto_5

    .line 92
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :catch_43
    move-exception v1

    goto :goto_1f
.end method

.method public declared-synchronized stop()V
    .registers 5

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez v0, :cond_7

    .line 121
    :goto_5
    monitor-exit p0

    return-void

    .line 111
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->running:Z

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->socket:Ljava/net/DatagramSocket;

    .line 113
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_23

    .line 115
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

    .line 119
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    :try_start_1d
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->thread:Ljava/lang/Thread;

    .line 120
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/vr/VrTelemetryReceiver;->releaseWifi()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_23

    goto :goto_5

    .line 110
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :catch_26
    move-exception v0

    .line 117
    :try_start_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_23

    goto :goto_1c
.end method
