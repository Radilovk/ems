.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;
.super Ljava/lang/Object;
.source "XiaomiBandSppClient.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;


# static fields
.field private static final AUTH_TIMEOUT_MS:J = 0xafc8L

.field private static final BUILD_TAG:Ljava/lang/String; = "v1.1.65-spp"

.field private static final FIRST_EVENT_MS:J = 0x2ee0L

.field private static final LINK_DEAD_MS:J = 0x124f8L

.field private static final RAW_FILE:Ljava/lang/String; = "band-raw.csv"

.field private static final REALTIME_FILE:Ljava/lang/String; = "band-realtime.csv"

.field private static final RECONNECT_MAX_MS:J = 0x3a98L

.field private static final RECONNECT_MS:J = 0x7d0L

.field private static final REMOTE_ACTIVE_MS:J = 0x1d4c0L

.field private static final SOFT_RESTARTS:I = 0x3

.field private static final STALL_MS:J = 0x3a98L

.field private static final START_DELAY_MS:J = 0x190L

.field private static final STATUS_POLL_MS:J = 0x7530L

.field private static final VERSION_TIMEOUT_MS:J = 0x1388L

.field private static final WATCH_MS:J = 0xbb8L

.field private static instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;


# instance fields
.field private appContext:Landroid/content/Context;

.field private authKey:[B

.field private authStarted:Z

.field private final authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

.field private authenticated:Z

.field private eventCount:I

.field private firstEventMs:J

.field private hrEvents:I

.field private keepLink:Z

.field private keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

.field private lastCalories:I

.field private lastEventMs:J

.field private lastF3:I

.field private lastF5:I

.field private lastRawHr:I

.field private lastRxMs:J

.field private lastStatusPollMs:J

.field private lastSteps:I

.field private listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

.field private mac:Ljava/lang/String;

.field private final main:Landroid/os/Handler;

.field private packetsIn:I

.field private packetsOut:I

.field private final phoneNonce:[B

.field private port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

.field private final random:Ljava/util/Random;

.field private realtimeStarted:Z

.field private realtimeWanted:Z

.field private final reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

.field private reconnectAttempt:I

.field private rx:[B

.field private rxLen:I

.field private final startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

.field private startRetries:I

.field private state:Ljava/lang/String;

.field private streamStartMs:J

.field private testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

.field private userDisconnect:Z

.field private v1EncCounter:I

.field private v1Serial:I

.field private v2Seq:I

.field private version:I

.field private final versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

.field private final watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->random:Ljava/util/Random;

    .line 52
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    .line 53
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    .line 54
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    .line 55
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    .line 56
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    .line 66
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    .line 69
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    .line 88
    const-string v0, "idle"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    .line 97
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 98
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 99
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 100
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 101
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 103
    return-void
.end method

.method private afterAuth()V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 679
    const-string v0, "initialized"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 680
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->clock()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 681
    invoke-static {v1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 682
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->userInfo(Landroid/content/Context;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 683
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 684
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->onAuthenticated(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;)V

    .line 685
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_31

    .line 686
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    :goto_30
    return-void

    .line 688
    :cond_31
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 689
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30
.end method

.method private answerWatchNonce(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 656
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 657
    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 658
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v1

    .line 659
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 660
    if-eqz v1, :cond_1a

    if-nez v0, :cond_22

    .line 661
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no watch nonce"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_22
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    move-result-object v2

    .line 664
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    new-array v4, v8, [[B

    aput-object v1, v4, v6

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v3

    .line 665
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 667
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 668
    const-string v0, "auth"

    const-string v1, "hmac mismatch \u2014 wrong auth key"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_4e
    return-void

    .line 671
    :cond_4f
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 672
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    new-array v3, v8, [[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v0

    .line 673
    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    .line 674
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authDeviceInfo()[B

    move-result-object v3

    .line 673
    invoke-static {v1, v2, v6, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v1

    .line 675
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authStep3([B[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    goto :goto_4e
.end method

.method private beginAuth()V
    .registers 3

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    if-eqz v0, :cond_5

    .line 579
    :goto_4
    return-void

    .line 575
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    .line 576
    const-string v0, "auth_start"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->random:Ljava/util/Random;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 578
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authNonce([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    goto :goto_4
.end method

.method private closePort()V
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 366
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq v0, v1, :cond_e

    .line 368
    :try_start_b
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_f

    .line 372
    :cond_e
    :goto_e
    return-void

    .line 369
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private consume(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 455
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    sub-int/2addr v0, p1

    .line 456
    if-lez v0, :cond_d

    .line 457
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    :cond_d
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 460
    return-void
.end method

.method private decryptV1([B)[B
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 527
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_6

    .line 543
    :goto_5
    return-object v0

    .line 531
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_5

    .line 532
    :catch_14
    move-exception v1

    .line 535
    :try_start_15
    array-length v2, p1

    const/4 v3, 0x6

    if-le v2, v3, :cond_34

    .line 536
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->u16([BI)I

    move-result v2

    .line 537
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    const/4 v5, 0x2

    array-length v6, p1

    add-int/lit8 v6, v6, -0x2

    .line 538
    invoke-static {p1, v5, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->slice([BII)[B

    move-result-object v5

    .line 537
    invoke-static {v3, v4, v2, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_31} :catch_33

    move-result-object v0

    goto :goto_5

    .line 540
    :catch_33
    move-exception v2

    .line 542
    :cond_34
    const-string v2, "ERR:ccm"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private dropped(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 410
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_72

    :cond_9
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    if-nez v0, :cond_72

    const/4 v0, 0x1

    .line 411
    :goto_e
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 412
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 413
    if-eqz v2, :cond_18

    .line 414
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 416
    :cond_18
    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    if-eqz v0, :cond_74

    .line 417
    const-string v0, "reconnecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 418
    const-wide/16 v0, 0x3a98

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x3

    iget v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnectAttempt:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    shl-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 419
    const-string v2, "spp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnect #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnectAttempt:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 425
    :goto_71
    return-void

    :cond_72
    move v0, v1

    .line 410
    goto :goto_e

    .line 424
    :cond_74
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_71
.end method

.method public static getBuildTag()Ljava/lang/String;
    .registers 1

    .prologue
    .line 113
    const-string v0, "v1.1.65-spp"

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;
    .registers 2

    .prologue
    .line 106
    const-class v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-nez v0, :cond_e

    .line 107
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    .line 109
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 106
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hex([B)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x10

    .line 918
    if-nez p0, :cond_7

    .line 919
    const-string v0, ""

    .line 925
    :goto_6
    return-object v0

    .line 921
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 922
    array-length v2, p0

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_2d

    aget-byte v3, p0, v0

    .line 923
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 922
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 925
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private mayRebuildForHr(J)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 764
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 768
    :cond_7
    :goto_7
    return v0

    .line 767
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->getLastMessageMs()J

    move-result-wide v2

    .line 768
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    sub-long v2, p1, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    :cond_1b
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private notifyConnected(Z)V
    .registers 3

    .prologue
    .line 912
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_9

    .line 913
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onConnected(Z)V

    .line 915
    :cond_9
    return-void
.end method

.method private onAuth(Ljava/util/Map;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 626
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_6

    .line 653
    :cond_5
    :goto_5
    return-void

    .line 629
    :cond_6
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_1e

    .line 631
    :try_start_a
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->answerWatchNonce(Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_5

    .line 632
    :catch_e
    move-exception v0

    .line 633
    const-string v1, "ERR:auth"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_5

    .line 638
    :cond_1e
    const/16 v0, 0x1b

    if-ne p2, v0, :cond_5

    .line 639
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 640
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_31

    .line 641
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_5

    .line 644
    :cond_31
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 645
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnectAttempt:I

    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRxMs:J

    .line 647
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 648
    const-string v1, "authenticated"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 649
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 650
    const-string v1, "auth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ok ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->getTransportName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->afterAuth()V

    goto :goto_5
.end method

.method private onCommand([B)V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 596
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 597
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v1

    .line 598
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v2

    .line 599
    if-eq v1, v8, :cond_48

    .line 600
    const-string v3, "band-raw.csv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 601
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 600
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_48
    if-ne v1, v8, :cond_4e

    .line 604
    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onAuth(Ljava/util/Map;I)V

    .line 623
    :cond_4d
    :goto_4d
    return-void

    .line 605
    :cond_4e
    const/16 v3, 0x8

    if-ne v1, v3, :cond_5a

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_5a

    .line 606
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onRealtime(Ljava/util/Map;)V

    goto :goto_4d

    .line 607
    :cond_5a
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->onCommand(IILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 608
    const-string v0, "remote"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music sub="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 609
    :cond_79
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->onCommand(IILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 610
    const-string v0, "applink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 611
    :cond_a2
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->onCommand(IILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 612
    const-string v0, "install"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 613
    :cond_cb
    if-ne v1, v9, :cond_11b

    .line 614
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->onSystemCommand(ILjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 615
    const-string v0, "status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getBatteryPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " worn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownWorn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 617
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 618
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getFirmware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 621
    :cond_11b
    const-string v0, "cmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sub="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d
.end method

.method private onPacket(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 472
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->version:I

    if-ne v0, v2, :cond_63

    .line 473
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-nez v0, :cond_10

    .line 474
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onVersion([B)V

    .line 524
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 477
    :cond_10
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v2, :cond_53

    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v3, :cond_53

    .line 478
    const-string v0, "spp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v1 channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v1ch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rawOther(Ljava/lang/String;[B)V

    goto :goto_f

    .line 482
    :cond_53
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 483
    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->dataType:I

    if-ne v1, v2, :cond_5f

    .line 484
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->decryptV1([B)[B

    move-result-object v0

    .line 485
    if-eqz v0, :cond_f

    .line 489
    :cond_5f
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onCommand([B)V

    goto :goto_f

    .line 492
    :cond_63
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->type:I

    packed-switch v0, :pswitch_data_124

    .line 522
    const-string v0, "spp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v2 type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 494
    :pswitch_89
    const-string v0, "spp"

    const-string v1, "v2 session reply"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto/16 :goto_f

    .line 500
    :pswitch_95
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->seq:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2Ack(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 501
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v2, :cond_f7

    .line 502
    const-string v0, "spp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v2 channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B) ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2ch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "op"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->opcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rawOther(Ljava/lang/String;[B)V

    goto/16 :goto_f

    .line 506
    :cond_f7
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 507
    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->opcode:I

    if-ne v1, v3, :cond_112

    .line 508
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_10a

    .line 509
    const-string v0, "spp"

    const-string v1, "encrypted packet before auth"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 513
    :cond_10a
    :try_start_10a
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->ctr([B[B)[B
    :try_end_111
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_111} :catch_117

    move-result-object v0

    .line 519
    :cond_112
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onCommand([B)V

    goto/16 :goto_f

    .line 514
    :catch_117
    move-exception v0

    .line 515
    const-string v1, "ERR:ctr"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 492
    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_f
        :pswitch_89
        :pswitch_95
    .end packed-switch
.end method

.method private onRealtime(Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x1

    const-wide/16 v4, 0x0

    const/4 v11, 0x0

    .line 783
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v6

    .line 784
    if-nez v6, :cond_1b

    .line 785
    const-string v0, "hr"

    const-string v1, "8/47 without realTimeStats"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :cond_1a
    :goto_1a
    return-void

    .line 788
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 789
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_b1

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    sub-long v0, v8, v0

    move-wide v2, v0

    .line 790
    :goto_2a
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 791
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_34

    .line 792
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    .line 794
    :cond_34
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    .line 795
    iput v11, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    .line 796
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 797
    invoke-static {v6, v12}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 798
    const/4 v0, 0x2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 799
    const/4 v0, 0x3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 800
    const/4 v0, 0x5

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 801
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6f
    :goto_6f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 804
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 805
    if-lt v1, v12, :cond_89

    if-le v1, v13, :cond_6f

    .line 806
    :cond_89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 807
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v10, 0x3d

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v10, v0, [B

    if-eqz v10, :cond_b4

    check-cast v0, [B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v0

    :goto_a7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    .line 808
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6f

    :cond_b1
    move-wide v2, v4

    .line 789
    goto/16 :goto_2a

    .line 807
    :cond_b4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a7

    .line 811
    :cond_b9
    const-string v0, "band-realtime.csv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 813
    invoke-static {v6, v13}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 811
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    if-nez v4, :cond_130

    .line 815
    const-string v0, "measuring"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 818
    :cond_130
    const/16 v0, 0xdc

    if-gt v4, v0, :cond_1a

    .line 819
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    .line 820
    const-string v0, "streaming"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_1a

    .line 822
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onHeartRate(I)V

    goto/16 :goto_1a
.end method

.method private onVersion([B)V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 550
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 551
    if-eqz p1, :cond_12

    array-length v1, p1

    if-lez v1, :cond_12

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 552
    :cond_12
    const-string v1, "spp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocol version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    if-lt v0, v4, :cond_36

    .line 554
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 555
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2SessionStart()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 560
    :goto_35
    return-void

    .line 558
    :cond_36
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 559
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto :goto_35
.end method

.method private open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    .prologue
    .line 220
    if-nez p1, :cond_3

    .line 291
    :goto_2
    return-void

    .line 223
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_d
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 225
    if-nez p4, :cond_19

    .line 226
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->clear()V

    .line 228
    :cond_19
    const-string v0, "build"

    const-string v1, "v1.1.65-spp"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v1.1.65-spp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v1, "band-raw.csv"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "band-realtime.csv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | epochMs,dtMs,steps,calories,f3,hr,f5,standing,extra"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 234
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    .line 237
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    if-eqz p2, :cond_90

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_7d
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    .line 239
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->parseAuthKey(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    if-nez v0, :cond_93

    .line 241
    const-string v0, "bad_auth_key"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 238
    :cond_90
    const-string v0, ""

    goto :goto_7d

    .line 244
    :cond_93
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    const-string v1, "([0-9A-F]{2}:){5}[0-9A-F]{2}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 245
    const-string v0, "bad_mac"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 248
    :cond_a4
    const-string v0, "connecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_c2

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortOpened(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V

    goto/16 :goto_2

    .line 255
    :cond_c2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 256
    if-nez v0, :cond_cf

    .line 257
    const-string v0, "no_bluetooth"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 261
    :cond_cf
    :try_start_cf
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f5

    .line 262
    if-eqz p4, :cond_e6

    .line 263
    const-string v0, "no_bluetooth"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/SecurityException; {:try_start_cf .. :try_end_dc} :catch_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cf .. :try_end_dc} :catch_ed
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_dc} :catch_13e

    goto/16 :goto_2

    .line 278
    :catch_de
    move-exception v0

    .line 279
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 266
    :cond_e6
    :try_start_e6
    const-string v0, "no_bluetooth"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/lang/SecurityException; {:try_start_e6 .. :try_end_eb} :catch_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e6 .. :try_end_eb} :catch_ed
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_eb} :catch_13e

    goto/16 :goto_2

    .line 280
    :catch_ed
    move-exception v0

    .line 281
    const-string v0, "bad_mac"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 269
    :cond_f5
    :try_start_f5
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 270
    const-string v1, "connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spp mac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bond="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_132

    .line 273
    const-string v1, "connect"

    const-string v2, "band is not bonded over Bluetooth Classic"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_132
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 276
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 277
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->start()V
    :try_end_13c
    .catch Ljava/lang/SecurityException; {:try_start_f5 .. :try_end_13c} :catch_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f5 .. :try_end_13c} :catch_ed
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_13c} :catch_13e

    goto/16 :goto_2

    .line 282
    :catch_13e
    move-exception v0

    .line 283
    const-string v1, "ERR:connect"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 285
    if-eqz p4, :cond_154

    .line 286
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 289
    :cond_154
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private pollStatus()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    .line 695
    const/16 v0, 0x4e

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 696
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 697
    return-void
.end method

.method private rawOther(Ljava/lang/String;[B)V
    .registers 7

    .prologue
    const/16 v1, 0x200

    .line 464
    if-nez p2, :cond_5

    .line 469
    :goto_4
    return-void

    .line 467
    :cond_5
    array-length v0, p2

    if-le v0, v1, :cond_c

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 468
    :cond_c
    const-string v0, "band-raw.csv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",-,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private resetSession()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->onDisconnected()V

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->reset()V

    .line 332
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 336
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 337
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 338
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    .line 339
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    .line 340
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 342
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    .line 343
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 344
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 345
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    .line 346
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRxMs:J

    .line 347
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    .line 348
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    .line 349
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    .line 350
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    .line 351
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 352
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    .line 353
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    .line 354
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    .line 355
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 356
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 357
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 358
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 359
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 360
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 361
    return-void
.end method

.method private send([B)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 858
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v2, :cond_9

    if-nez p1, :cond_a

    .line 886
    :cond_9
    :goto_9
    return-void

    .line 861
    :cond_a
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-nez v2, :cond_f

    move v0, v1

    .line 863
    :cond_f
    :try_start_f
    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-ne v2, v4, :cond_43

    .line 864
    if-eqz v0, :cond_38

    .line 865
    :goto_15
    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    :goto_20
    invoke-static {v2, v3, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2Data(III[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_27} :catch_28

    goto :goto_9

    .line 882
    :catch_28
    move-exception v0

    .line 883
    const-string v1, "ERR:send"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v0, "send_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_9

    .line 864
    :cond_38
    :try_start_38
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->ctr([B[B)[B

    move-result-object p1

    goto :goto_15

    :cond_41
    move v1, v4

    .line 865
    goto :goto_20

    .line 869
    :cond_43
    if-eqz v0, :cond_59

    move-object v5, p1

    .line 880
    :goto_46
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    and-int/lit16 v3, v3, 0xff

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v1(IZIII[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    goto :goto_9

    .line 873
    :cond_59
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    .line 874
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    invoke-static {v2, v3, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v2

    .line 875
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    new-array v5, v3, [B

    .line 876
    const/4 v3, 0x0

    invoke-static {v5, v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->putU16([BII)V

    .line 877
    const/4 v0, 0x0

    const/4 v3, 0x2

    array-length v4, v2

    invoke-static {v2, v0, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_7a} :catch_28

    move v4, v1

    .line 878
    goto :goto_46
.end method

.method private setState(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 904
    if-eqz p1, :cond_17

    :goto_2
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    .line 905
    const-string v0, "state"

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_16

    .line 907
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onState(Ljava/lang/String;)V

    .line 909
    :cond_16
    return-void

    .line 904
    :cond_17
    const-string p1, ""

    goto :goto_2
.end method

.method private write([B)V
    .registers 4

    .prologue
    .line 889
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 890
    if-nez v0, :cond_5

    .line 895
    :goto_4
    return-void

    .line 893
    :cond_5
    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    .line 894
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;->write([B)V

    goto :goto_4
.end method


# virtual methods
.method public connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 215
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnectAttempt:I

    .line 216
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    return-void
.end method

.method public disconnect()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 296
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 297
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    .line 298
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 299
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_22

    .line 300
    const/16 v0, 0x8

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 302
    :cond_22
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 303
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 304
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 305
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 306
    return-void
.end method

.method public getHrEventCount()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    return v0
.end method

.method public getLastCalories()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    return v0
.end method

.method public getLastF3()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    return v0
.end method

.method public getLastF5()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    return v0
.end method

.method public getLastNotifyChar()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    const-string v0, "spp"

    return-object v0
.end method

.method public getLastRawHr()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    return v0
.end method

.method public getLastRealtimeEventMs()J
    .registers 3

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    return-wide v0
.end method

.method public getLastState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSteps()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    return v0
.end method

.method public getNotifyCount51()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    return v0
.end method

.method public getNotifyCount52()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    return v0
.end method

.method public getNotifyEventCount()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    return v0
.end method

.method public getRealtimeEventCount()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    return v0
.end method

.method public getRealtimeEventRate()F
    .registers 7

    .prologue
    .line 180
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    .line 181
    :cond_d
    const/4 v0, 0x0

    .line 183
    :goto_e
    return v0

    :cond_f
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_e
.end method

.method public getTransportName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 129
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    const-string v0, "SPP v2"

    :goto_7
    return-object v0

    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const-string v0, "SPP v1"

    goto :goto_7

    :cond_10
    const-string v0, "SPP"

    goto :goto_7
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 900
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    return-void
.end method

.method onAuthTimeout()V
    .registers 3

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_1b

    .line 583
    const-string v0, "auth"

    const-string v1, "timeout"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 585
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnectAttempt:I

    if-lez v0, :cond_1c

    .line 586
    const-string v0, "auth_timeout"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    .line 593
    :cond_1b
    :goto_1b
    return-void

    .line 589
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 590
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 591
    const-string v0, "auth_timeout"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method onPortBytes(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[B)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 428
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-ne p1, v0, :cond_7

    if-nez p2, :cond_8

    .line 452
    :cond_7
    return-void

    .line 431
    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v1, p2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    array-length v1, v1

    if-le v0, v1, :cond_29

    .line 432
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 433
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    .line 436
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 438
    :goto_37
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-ne v0, p1, :cond_7

    .line 439
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->parse([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object v0

    .line 440
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    if-eqz v1, :cond_7

    .line 443
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->consume(I)V

    .line 444
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_76

    .line 445
    const-string v1, "spp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "B"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 448
    :cond_76
    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRxMs:J

    .line 450
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPacket(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)V

    goto :goto_37
.end method

.method onPortClosed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 406
    :goto_4
    return-void

    .line 403
    :cond_5
    const-string v0, "spp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 405
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_4
.end method

.method onPortFailed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 387
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 397
    :goto_4
    return-void

    .line 390
    :cond_5
    const-string v0, "spp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 392
    const-string v0, "permission"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 393
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_4

    .line 396
    :cond_2e
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_4
.end method

.method onPortOpened(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V
    .registers 6

    .prologue
    .line 377
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 384
    :goto_4
    return-void

    .line 380
    :cond_5
    const-string v0, "spp"

    const-string v1, "socket open"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "handshake"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v1Version()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 383
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method onReconnectTick()V
    .registers 6

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_14

    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    if-nez v0, :cond_15

    .line 780
    :cond_14
    :goto_14
    return-void

    .line 775
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnectAttempt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnectAttempt:I

    .line 776
    const-string v0, "spp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnecting (#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnectAttempt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 778
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 779
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    goto :goto_14
.end method

.method onStartRealtimeDue()V
    .registers 5

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_d

    .line 712
    :cond_c
    :goto_c
    return-void

    .line 705
    :cond_d
    const-string v0, "starting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 706
    const-string v0, "health"

    const-string v1, "realtime START"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/16 v0, 0x8

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    .line 710
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 711
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method

.method onVersionTimeout()V
    .registers 3

    .prologue
    .line 563
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-nez v0, :cond_9

    .line 569
    :cond_8
    :goto_8
    return-void

    .line 566
    :cond_9
    const-string v0, "spp"

    const-string v1, "no version reply \u2014 assume v1"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 568
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto :goto_8
.end method

.method onWatchTick()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x7530

    const-wide/16 v10, 0xbb8

    const/4 v8, 0x3

    const-wide/16 v6, 0x0

    .line 715
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-nez v0, :cond_10

    .line 757
    :cond_f
    :goto_f
    return-void

    .line 718
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 719
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRxMs:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_53

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRxMs:J

    sub-long v0, v4, v0

    const-wide/32 v2, 0x124f8

    cmp-long v0, v0, v2

    if-lez v0, :cond_53

    .line 720
    const-string v0, "spp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no bytes for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRxMs:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s \u2014 link dead, reconnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 722
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_f

    .line 725
    :cond_53
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-nez v0, :cond_6a

    .line 727
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    sub-long v0, v4, v0

    cmp-long v0, v0, v12

    if-lez v0, :cond_62

    .line 728
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 730
    :cond_62
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    .line 733
    :cond_6a
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_d8

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 734
    :goto_72
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_db

    const-wide/16 v2, 0x3a98

    .line 735
    :goto_7a
    sub-long v0, v4, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f2

    .line 736
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    if-lt v0, v8, :cond_8a

    invoke-direct {p0, v4, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mayRebuildForHr(J)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 738
    :cond_8a
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    .line 739
    const-string v1, "health"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_de

    const-string v0, "stream stalled"

    :goto_a3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u2014 START again ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const/16 v0, 0x8

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 743
    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 744
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onStartRealtimeDue()V

    .line 745
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    goto/16 :goto_f

    .line 733
    :cond_d8
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    goto :goto_72

    .line 734
    :cond_db
    const-wide/16 v2, 0x2ee0

    goto :goto_7a

    .line 739
    :cond_de
    const-string v0, "no first 8/47"

    goto :goto_a3

    .line 748
    :cond_e1
    const-string v0, "health"

    const-string v1, "no heart rate after 3 restarts \u2014 rebuild the link"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 750
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 753
    :cond_f2
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    sub-long v0, v4, v0

    cmp-long v0, v0, v12

    if-lez v0, :cond_fd

    .line 754
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 756
    :cond_fd
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_f
.end method

.method public sendCommand([B)V
    .registers 3

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_7

    .line 832
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 834
    :cond_7
    return-void
.end method

.method sendData([B)V
    .registers 8

    .prologue
    const/4 v1, 0x2

    .line 841
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_b

    if-nez p1, :cond_c

    .line 854
    :cond_b
    :goto_b
    return-void

    .line 845
    :cond_c
    :try_start_c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-ne v0, v1, :cond_2d

    .line 846
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2Data(III[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_21} :catch_22

    goto :goto_b

    .line 851
    :catch_22
    move-exception v0

    .line 852
    const-string v1, "ERR:data"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 848
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v5

    .line 849
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v1(IZIII[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_4d} :catch_22

    goto :goto_b
.end method

.method public setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    .line 125
    return-void
.end method

.method setTestPort(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 118
    return-void
.end method

.method public startRealtime()V
    .registers 5

    .prologue
    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 311
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-nez v0, :cond_1b

    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    :cond_1b
    return-void
.end method

.method public stopRealtime()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 319
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_24

    .line 322
    const-string v0, "health"

    const-string v1, "realtime STOP"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/16 v0, 0x8

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 325
    :cond_24
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 327
    return-void
.end method
