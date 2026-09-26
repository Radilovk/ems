.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;
.super Ljava/lang/Object;
.source "XiaomiBandSppClient.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;


# static fields
.field private static final AUTH_TIMEOUT_MS:J = 0xafc8L

.field private static final BUILD_TAG:Ljava/lang/String; = "v1.1.65-spp"

.field private static final FIRST_EVENT_MS:J = 0x2ee0L

.field private static final RAW_FILE:Ljava/lang/String; = "band-raw.csv"

.field private static final REALTIME_FILE:Ljava/lang/String; = "band-realtime.csv"

.field private static final RECONNECT_MS:J = 0x7d0L

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
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->random:Ljava/util/Random;

    .line 42
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    .line 43
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    .line 44
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    .line 45
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    .line 46
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    .line 59
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    .line 75
    const-string v0, "idle"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 85
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 86
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 87
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 88
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 90
    return-void
.end method

.method private afterAuth()V
    .registers 5

    .line 640
    const-string v0, "initialized"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->clock()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 642
    const/4 v0, 0x2

    invoke-static {v0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 643
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->userInfo(Landroid/content/Context;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 644
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 645
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->onAuthenticated(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;)V

    .line 646
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_31

    .line 647
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_41

    .line 649
    :cond_31
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 650
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 652
    :goto_41
    return-void
.end method

.method private answerWatchNonce(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 617
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p1

    .line 618
    const/16 v0, 0x1f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p1

    .line 619
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v1

    .line 620
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object p1

    .line 621
    if-eqz v1, :cond_6f

    if-eqz p1, :cond_6f

    .line 624
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-static {v3, v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    move-result-object v3

    .line 625
    iget-object v4, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    new-array v5, v2, [[B

    const/4 v6, 0x0

    aput-object v1, v5, v6

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    aput-object v7, v5, v0

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v4

    .line 626
    invoke-static {v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result p1

    if-nez p1, :cond_47

    .line 628
    const-string p1, "auth_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 629
    const-string p1, "auth"

    const-string v0, "hmac mismatch \u2014 wrong auth key"

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    return-void

    .line 632
    :cond_47
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 633
    iget-object p1, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    new-array v2, v2, [[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    aput-object v4, v2, v6

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object p1

    .line 634
    iget-object v0, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v1, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    .line 635
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authDeviceInfo()[B

    move-result-object v2

    .line 634
    invoke-static {v0, v1, v6, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v0

    .line 636
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authStep3([B[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 637
    return-void

    .line 622
    :cond_6f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no watch nonce"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private beginAuth()V
    .registers 3

    .line 539
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    if-eqz v0, :cond_5

    .line 540
    return-void

    .line 542
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    .line 543
    const-string v0, "auth_start"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->random:Ljava/util/Random;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 545
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authNonce([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 546
    return-void
.end method

.method private closePort()V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 336
    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq v0, v1, :cond_10

    .line 338
    :try_start_b
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;->close()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 340
    goto :goto_10

    .line 339
    :catchall_f
    move-exception v0

    .line 342
    :cond_10
    :goto_10
    return-void
.end method

.method private consume(I)V
    .registers 5

    .line 422
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    sub-int/2addr v0, p1

    .line 423
    const/4 v1, 0x0

    if-lez v0, :cond_b

    .line 424
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    :cond_b
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 427
    return-void
.end method

.method private decryptV1([B)[B
    .registers 9

    .line 494
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 495
    return-object v1

    .line 498
    :cond_6
    const/4 v2, 0x0

    :try_start_7
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    invoke-static {v0, v3, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B

    move-result-object p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-object p1

    .line 499
    :catchall_12
    move-exception v0

    .line 502
    :try_start_13
    array-length v3, p1

    const/4 v4, 0x6

    if-le v3, v4, :cond_2f

    .line 503
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->u16([BI)I

    move-result v2

    .line 504
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    array-length v5, p1

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    .line 505
    invoke-static {p1, v6, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->slice([BII)[B

    move-result-object p1

    .line 504
    invoke-static {v3, v4, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_30

    return-object p1

    .line 508
    :cond_2f
    goto :goto_31

    .line 507
    :catchall_30
    move-exception p1

    .line 509
    :goto_31
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ERR:ccm"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-object v1
.end method

.method private dropped(Ljava/lang/String;)V
    .registers 5

    .line 380
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_f

    :cond_9
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 381
    :goto_10
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 382
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 383
    if-eqz v2, :cond_1a

    .line 384
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 386
    :cond_1a
    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_36

    .line 387
    const-string p1, "reconnecting"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 389
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    return-void

    .line 392
    :cond_36
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public static getBuildTag()Ljava/lang/String;
    .registers 1

    .line 100
    const-string v0, "v1.1.65-spp"

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;
    .registers 2

    const-class v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    monitor-enter v0

    .line 93
    :try_start_3
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-nez v1, :cond_e

    .line 94
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    .line 96
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 92
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static hex([B)Ljava/lang/String;
    .registers 7

    .line 858
    if-nez p0, :cond_5

    .line 859
    const-string p0, ""

    return-object p0

    .line 861
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 862
    array-length v1, p0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2c

    aget-byte v3, p0, v2

    .line 863
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 865
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private notifyConnected(Z)V
    .registers 3

    .line 852
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_7

    .line 853
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onConnected(Z)V

    .line 855
    :cond_7
    return-void
.end method

.method private onAuth(Ljava/util/Map;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .line 589
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_5

    .line 590
    return-void

    .line 592
    :cond_5
    const/16 v0, 0x1a

    const-string v1, "auth_fail"

    if-ne p2, v0, :cond_1d

    .line 594
    :try_start_b
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->answerWatchNonce(Ljava/util/Map;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 598
    goto :goto_1c

    .line 595
    :catchall_f
    move-exception p1

    .line 596
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ERR:auth"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 599
    :goto_1c
    return-void

    .line 601
    :cond_1d
    const/16 v0, 0x1b

    if-ne p2, v0, :cond_6a

    .line 602
    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p1

    .line 603
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez p2, :cond_2e

    .line 604
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 605
    return-void

    .line 607
    :cond_2e
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 608
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 609
    const-string v0, "authenticated"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 610
    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ok ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->getTransportName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "auth"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->afterAuth()V

    .line 614
    :cond_6a
    return-void
.end method

.method private onCommand([B)V
    .registers 10

    .line 559
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 560
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v2

    .line 561
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v4

    .line 562
    if-eq v2, v1, :cond_3d

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    const-string v5, "band-raw.csv"

    invoke-static {v5, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_3d
    if-ne v2, v1, :cond_44

    .line 567
    invoke-direct {p0, v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onAuth(Ljava/util/Map;I)V

    goto/16 :goto_11b

    .line 568
    :cond_44
    const/16 p1, 0x8

    if-ne v2, p1, :cond_51

    const/16 p1, 0x2f

    if-ne v4, p1, :cond_51

    .line 569
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onRealtime(Ljava/util/Map;)V

    goto/16 :goto_11b

    .line 570
    :cond_51
    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->onCommand(IILjava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "music sub="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "remote"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11b

    .line 572
    :cond_6f
    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->onCommand(IILjava/util/Map;)Z

    move-result p1

    const-string v1, "/"

    const-string v5, "cmd "

    if-eqz p1, :cond_95

    .line 573
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "applink"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11b

    .line 574
    :cond_95
    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->onCommand(IILjava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 575
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "install"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11b

    .line 576
    :cond_b6
    if-ne v2, v3, :cond_fd

    .line 577
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->onSystemCommand(ILjava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_11b

    .line 578
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bat="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getBatteryPercent()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " worn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownWorn()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " off="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " fw="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getFirmware()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 578
    const-string v0, "status"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11b

    .line 584
    :cond_fd
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sub="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cmd"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_11b
    :goto_11b
    return-void
.end method

.method private onPacket(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)V
    .registers 8

    .line 439
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->version:I

    const-string v1, " ignored"

    const/4 v2, 0x2

    const-string v3, "spp"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5f

    .line 440
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-nez v0, :cond_14

    .line 441
    iget-object p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onVersion([B)V

    .line 442
    return-void

    .line 444
    :cond_14
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v4, :cond_4e

    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v2, :cond_4e

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v1 channel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v1ch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    invoke-direct {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rawOther(Ljava/lang/String;[B)V

    .line 447
    return-void

    .line 449
    :cond_4e
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 450
    iget p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->dataType:I

    if-ne p1, v4, :cond_5b

    .line 451
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->decryptV1([B)[B

    move-result-object v0

    .line 452
    if-nez v0, :cond_5b

    .line 453
    return-void

    .line 456
    :cond_5b
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onCommand([B)V

    .line 457
    return-void

    .line 459
    :cond_5f
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->type:I

    if-eq v0, v4, :cond_107

    if-eq v0, v2, :cond_fe

    const/4 v5, 0x3

    if-eq v0, v5, :cond_82

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v2 type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->type:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void

    .line 467
    :cond_82
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->seq:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2Ack(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 468
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v4, :cond_d8

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2 channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "B) ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2ch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "op"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->opcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    invoke-direct {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rawOther(Ljava/lang/String;[B)V

    .line 471
    return-void

    .line 473
    :cond_d8
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 474
    iget p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->opcode:I

    if-ne p1, v2, :cond_fa

    .line 475
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez p1, :cond_e8

    .line 476
    const-string p1, "encrypted packet before auth"

    invoke-virtual {p0, v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void

    .line 480
    :cond_e8
    :try_start_e8
    iget-object p1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->ctr([B[B)[B

    move-result-object v0
    :try_end_ee
    .catchall {:try_start_e8 .. :try_end_ee} :catchall_ef

    .line 484
    goto :goto_fa

    .line 481
    :catchall_ef
    move-exception p1

    .line 482
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ERR:ctr"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void

    .line 486
    :cond_fa
    :goto_fa
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onCommand([B)V

    .line 487
    return-void

    .line 461
    :cond_fe
    const-string p1, "v2 session reply"

    invoke-virtual {p0, v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    .line 463
    return-void

    .line 465
    :cond_107
    return-void
.end method

.method private onRealtime(Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 724
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p1

    const/16 v0, 0x27

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p1

    .line 725
    if-nez p1, :cond_16

    .line 726
    const-string p1, "hr"

    const-string v0, "8/47 without realTimeStats"

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    return-void

    .line 729
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 730
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_25

    sub-long v2, v0, v2

    goto :goto_26

    :cond_25
    move-wide v2, v4

    .line 731
    :goto_26
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 732
    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_30

    .line 733
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    .line 735
    :cond_30
    iget v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    .line 736
    const/4 v4, 0x4

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 737
    invoke-static {p1, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v7

    iput v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 738
    const/4 v7, 0x2

    invoke-static {p1, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v7

    iput v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 739
    const/4 v7, 0x3

    invoke-static {p1, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v7

    iput v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 740
    const/4 v7, 0x5

    invoke-static {p1, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v7

    iput v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 741
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 742
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x6

    if-eqz v9, :cond_af

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 744
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 745
    if-lt v11, v5, :cond_85

    if-le v11, v10, :cond_ae

    .line 746
    :cond_85
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 747
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x3d

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of v10, v9, [B

    if-eqz v10, :cond_a2

    check-cast v9, [B

    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v9

    goto :goto_a6

    :cond_a2
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_a6
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3b

    .line 748
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    :cond_ae
    goto :goto_6a

    .line 751
    :cond_af
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-static {p1, v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 751
    const-string v0, "band-realtime.csv"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    if-nez v4, :cond_106

    .line 755
    const-string p1, "measuring"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 756
    return-void

    .line 758
    :cond_106
    const/16 p1, 0xdc

    if-gt v4, p1, :cond_11b

    .line 759
    iget p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    .line 760
    const-string p1, "streaming"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 761
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz p1, :cond_11b

    .line 762
    invoke-interface {p1, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onHeartRate(I)V

    .line 765
    :cond_11b
    return-void
.end method

.method private onVersion([B)V
    .registers 4

    .line 517
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    array-length v1, p1

    if-lez v1, :cond_11

    aget-byte p1, p1, v0

    and-int/lit16 v0, p1, 0xff

    .line 519
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocol version "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "spp"

    invoke-virtual {p0, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 p1, 0x2

    if-lt v0, p1, :cond_34

    .line 521
    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 522
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2SessionStart()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 523
    return-void

    .line 525
    :cond_34
    const/4 p1, 0x1

    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 526
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    .line 527
    return-void
.end method

.method private pollStatus()V
    .registers 3

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    .line 656
    const/4 v0, 0x2

    const/16 v1, 0x4e

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 657
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 658
    return-void
.end method

.method private rawOther(Ljava/lang/String;[B)V
    .registers 6

    .line 431
    if-nez p2, :cond_3

    .line 432
    return-void

    .line 434
    :cond_3
    array-length v0, p2

    const/16 v1, 0x200

    if-le v0, v1, :cond_c

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 435
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",-,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "band-raw.csv"

    invoke-static {p2, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private resetSession()V
    .registers 4

    .line 301
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->onDisconnected()V

    .line 302
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->reset()V

    .line 303
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 308
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 309
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    .line 310
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    .line 311
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    .line 312
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 313
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    .line 314
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 315
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 316
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    .line 317
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    .line 318
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    .line 319
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    .line 320
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    .line 321
    iput-wide v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 322
    iput-wide v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    .line 323
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    .line 324
    iput-wide v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 326
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 327
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 328
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 329
    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 331
    return-void
.end method

.method private send([B)V
    .registers 13

    .line 798
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_78

    if-nez p1, :cond_8

    goto/16 :goto_78

    .line 801
    :cond_8
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 803
    :try_start_c
    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    .line 804
    if-eqz v0, :cond_14

    :goto_13
    goto :goto_1d

    :cond_14
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->ctr([B[B)[B

    move-result-object p1

    goto :goto_13

    .line 805
    :goto_1d
    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    and-int/lit16 v2, v2, 0xff

    if-eqz v0, :cond_28

    const/4 v3, 0x1

    :cond_28
    invoke-static {v2, v1, v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2Data(III[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 806
    goto :goto_67

    .line 809
    :cond_30
    if-eqz v0, :cond_36

    .line 810
    nop

    .line 811
    move-object v10, p1

    const/4 v9, 0x2

    goto :goto_55

    .line 813
    :cond_36
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    .line 814
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    invoke-static {v2, v4, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object p1

    .line 815
    array-length v2, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 816
    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->putU16([BII)V

    .line 817
    array-length v0, p1

    invoke-static {p1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    move-object v10, v2

    const/4 v9, 0x1

    .line 820
    :goto_55
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    iget p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    and-int/lit16 v8, p1, 0xff

    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v1(IZIII[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V
    :try_end_67
    .catchall {:try_start_c .. :try_end_67} :catchall_68

    .line 825
    :goto_67
    goto :goto_77

    .line 822
    :catchall_68
    move-exception p1

    .line 823
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ERR:send"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string p1, "send_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 826
    :goto_77
    return-void

    .line 799
    :cond_78
    :goto_78
    return-void
.end method

.method private setState(Ljava/lang/String;)V
    .registers 3

    .line 844
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, ""

    :goto_5
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    .line 845
    const-string v0, "state"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz p1, :cond_15

    .line 847
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onState(Ljava/lang/String;)V

    .line 849
    :cond_15
    return-void
.end method

.method private write([B)V
    .registers 4

    .line 829
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 830
    if-nez v0, :cond_5

    .line 831
    return-void

    .line 833
    :cond_5
    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    .line 834
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;->write([B)V

    .line 835
    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 202
    const-string v0, "connect"

    if-nez p1, :cond_5

    .line 203
    return-void

    .line 205
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_f
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    .line 206
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 207
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->clear()V

    .line 208
    const-string p1, "build"

    const-string v1, "v1.1.65-spp"

    invoke-virtual {p0, p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# session "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    const-string v1, "band-raw.csv"

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | epochMs,dtMs,steps,calories,f3,hr,f5,standing,extra"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "band-realtime.csv"

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 214
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 215
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 216
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    .line 217
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    if-eqz p2, :cond_74

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    :cond_74
    const-string p1, ""

    :goto_76
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    .line 219
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->parseAuthKey(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    .line 220
    if-nez p1, :cond_86

    .line 221
    const-string p1, "bad_auth_key"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 222
    return-void

    .line 224
    :cond_86
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    const-string p2, "([0-9A-F]{2}:){5}[0-9A-F]{2}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "bad_mac"

    if-nez p1, :cond_96

    .line 225
    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 226
    return-void

    .line 228
    :cond_96
    const-string p1, "connecting"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/32 v1, 0xafc8

    invoke-virtual {p1, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz p1, :cond_af

    .line 231
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 232
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortOpened(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V

    .line 233
    return-void

    .line 235
    :cond_af
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 236
    const-string p3, "no_bluetooth"

    if-nez p1, :cond_bb

    .line 237
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 238
    return-void

    .line 241
    :cond_bb
    :try_start_bb
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_c5

    .line 242
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 243
    return-void

    .line 245
    :cond_c5
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 246
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spp mac="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bond="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p3

    const/16 v1, 0xc

    if-eq p3, v1, :cond_fa

    .line 249
    const-string p3, "band is not bonded over Bluetooth Classic"

    invoke-virtual {p0, v0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_fa
    new-instance p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;

    invoke-direct {p3, p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 252
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 253
    invoke-virtual {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->start()V
    :try_end_104
    .catch Ljava/lang/SecurityException; {:try_start_bb .. :try_end_104} :catch_11a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bb .. :try_end_104} :catch_115
    .catchall {:try_start_bb .. :try_end_104} :catchall_105

    goto :goto_120

    .line 258
    :catchall_105
    move-exception p1

    .line 259
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ERR:connect"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string p1, "connect_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_121

    .line 256
    :catch_115
    move-exception p1

    .line 257
    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_120

    .line 254
    :catch_11a
    move-exception p1

    .line 255
    const-string p1, "no_bt_permission"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 261
    :goto_120
    nop

    .line 262
    :goto_121
    return-void
.end method

.method public disconnect()V
    .registers 4

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 268
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    .line 269
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v1, :cond_22

    .line 271
    const/16 v1, 0x8

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 273
    :cond_22
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 274
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 275
    const-string v1, "disconnected"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 277
    return-void
.end method

.method public getHrEventCount()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    return v0
.end method

.method public getLastCalories()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    return v0
.end method

.method public getLastF3()I
    .registers 2

    .line 185
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    return v0
.end method

.method public getLastF5()I
    .registers 2

    .line 190
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    return v0
.end method

.method public getLastNotifyChar()Ljava/lang/String;
    .registers 2

    .line 152
    const-string v0, "spp"

    return-object v0
.end method

.method public getLastRawHr()I
    .registers 2

    .line 195
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    return v0
.end method

.method public getLastRealtimeEventMs()J
    .registers 3

    .line 157
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    return-wide v0
.end method

.method public getLastState()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSteps()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    return v0
.end method

.method public getNotifyCount51()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    return v0
.end method

.method public getNotifyCount52()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    return v0
.end method

.method public getNotifyEventCount()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    return v0
.end method

.method public getRealtimeEventCount()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    return v0
.end method

.method public getRealtimeEventRate()F
    .registers 7

    .line 167
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_19

    iget-wide v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    iget-wide v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_e

    goto :goto_19

    .line 170
    :cond_e
    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v0, v0, v5

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 168
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method public getTransportName()Ljava/lang/String;
    .registers 3

    .line 116
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    const-string v0, "SPP v2"

    goto :goto_10

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const-string v0, "SPP v1"

    goto :goto_10

    :cond_e
    const-string v0, "SPP"

    :goto_10
    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 840
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method onAuthTimeout()V
    .registers 3

    .line 549
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_1d

    .line 550
    const-string v0, "auth"

    const-string v1, "timeout"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 552
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 553
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 554
    const-string v0, "auth_timeout"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 556
    :cond_1d
    return-void
.end method

.method onPortBytes(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[B)V
    .registers 9

    .line 396
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-ne p1, v0, :cond_7a

    if-nez p2, :cond_8

    goto/16 :goto_7a

    .line 399
    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v1, p2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-le v1, v3, :cond_27

    .line 400
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    array-length v2, p2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 401
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    .line 404
    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v2, p2

    invoke-static {p2, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length p2, p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 406
    :goto_35
    iget p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    if-lez p2, :cond_79

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-ne v0, p1, :cond_79

    .line 407
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->parse([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object p2

    .line 408
    iget v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    if-nez v0, :cond_48

    .line 409
    goto :goto_79

    .line 411
    :cond_48
    iget v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->consume(I)V

    .line 412
    iget v0, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    if-ne v0, v4, :cond_6f

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "B"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "spp"

    invoke-virtual {p0, v0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    goto :goto_35

    .line 416
    :cond_6f
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    .line 417
    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPacket(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)V

    .line 418
    goto :goto_35

    .line 419
    :cond_79
    :goto_79
    return-void

    .line 397
    :cond_7a
    :goto_7a
    return-void
.end method

.method onPortClosed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V
    .registers 4

    .line 370
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 371
    return-void

    .line 373
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "closed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "spp"

    invoke-virtual {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 375
    const-string p1, "disconnected"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method onPortFailed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 358
    return-void

    .line 360
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "open failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "spp"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 362
    const-string p1, "permission"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 363
    const-string p1, "no_bt_permission"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 364
    return-void

    .line 366
    :cond_2c
    const-string p1, "connect_fail"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method onPortOpened(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V
    .registers 5

    .line 347
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 348
    return-void

    .line 350
    :cond_5
    const-string p1, "spp"

    const-string v0, "socket open"

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string p1, "handshake"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v1Version()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 353
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    return-void
.end method

.method onReconnectTick()V
    .registers 5

    .line 714
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_2e

    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    if-nez v0, :cond_15

    goto :goto_2e

    .line 717
    :cond_15
    const-string v0, "spp"

    const-string v1, "reconnecting"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 719
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 721
    return-void

    .line 715
    :cond_2e
    :goto_2e
    return-void
.end method

.method onStartRealtimeDue()V
    .registers 5

    .line 663
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_d

    goto :goto_3e

    .line 666
    :cond_d
    const-string v0, "starting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 667
    const-string v0, "health"

    const-string v1, "realtime START"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const/16 v0, 0x8

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    .line 671
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 672
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 673
    return-void

    .line 664
    :cond_3e
    :goto_3e
    return-void
.end method

.method onVersionTimeout()V
    .registers 3

    .line 530
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-nez v0, :cond_9

    goto :goto_17

    .line 533
    :cond_9
    const-string v0, "spp"

    const-string v1, "no version reply \u2014 assume v1"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 535
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    .line 536
    return-void

    .line 531
    :cond_17
    :goto_17
    return-void
.end method

.method onWatchTick()V
    .registers 16

    .line 676
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-nez v0, :cond_a

    goto/16 :goto_8a

    .line 679
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 680
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0x7530

    if-nez v2, :cond_28

    .line 682
    iget-wide v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    sub-long/2addr v0, v7

    cmp-long v2, v0, v5

    if-lez v2, :cond_20

    .line 683
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 685
    :cond_20
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 686
    return-void

    .line 688
    :cond_28
    iget-wide v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    const-string v2, "disconnected"

    const-wide/16 v9, 0x0

    const-string v11, "health"

    cmp-long v12, v7, v9

    if-nez v12, :cond_5e

    iget-wide v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    sub-long v7, v0, v7

    const-wide/16 v12, 0x2ee0

    cmp-long v14, v7, v12

    if-lez v14, :cond_5e

    .line 689
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_52

    .line 690
    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    .line 691
    const-string v0, "no first 8/47 \u2014 START once more"

    invoke-virtual {p0, v11, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 693
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onStartRealtimeDue()V

    .line 694
    return-void

    .line 696
    :cond_52
    const-string v0, "no 8/47 \u2014 reconnect"

    invoke-virtual {p0, v11, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 698
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    .line 699
    return-void

    .line 701
    :cond_5e
    iget-wide v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v12, v7, v9

    if-lez v12, :cond_78

    sub-long v7, v0, v7

    const-wide/16 v9, 0x3a98

    cmp-long v12, v7, v9

    if-lez v12, :cond_78

    .line 702
    const-string v0, "stream stalled \u2014 reconnect"

    invoke-virtual {p0, v11, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 704
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    .line 705
    return-void

    .line 707
    :cond_78
    iget-wide v7, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    sub-long/2addr v0, v7

    cmp-long v2, v0, v5

    if-lez v2, :cond_82

    .line 708
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 710
    :cond_82
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 711
    return-void

    .line 677
    :cond_8a
    :goto_8a
    return-void
.end method

.method public sendCommand([B)V
    .registers 3

    .line 771
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_7

    .line 772
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 774
    :cond_7
    return-void
.end method

.method sendData([B)V
    .registers 11

    .line 781
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_4d

    if-nez p1, :cond_b

    goto :goto_4d

    .line 785
    :cond_b
    :try_start_b
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 786
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2Data(III[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    goto :goto_41

    .line 788
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v8

    .line 789
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    and-int/lit16 v6, p1, 0xff

    const/4 v7, 0x1

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v1(IZIII[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_42

    .line 793
    :goto_41
    goto :goto_4c

    .line 791
    :catchall_42
    move-exception p1

    .line 792
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ERR:data"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :goto_4c
    return-void

    .line 782
    :cond_4d
    :goto_4d
    return-void
.end method

.method public setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    .line 112
    return-void
.end method

.method setTestPort(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 105
    return-void
.end method

.method public startRealtime()V
    .registers 5

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 282
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-nez v0, :cond_1b

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    :cond_1b
    return-void
.end method

.method public stopRealtime()V
    .registers 4

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 291
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v1, :cond_24

    .line 293
    const-string v1, "health"

    const-string v2, "realtime STOP"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/16 v1, 0x8

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 296
    :cond_24
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 298
    return-void
.end method
