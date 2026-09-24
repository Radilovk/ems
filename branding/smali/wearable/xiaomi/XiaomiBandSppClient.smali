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
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 88
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

    .line 73
    const-string v0, "idle"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    .line 82
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 83
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 84
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 85
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 86
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 88
    return-void
.end method

.method private afterAuth()V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 607
    const-string v0, "initialized"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->clock()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 609
    invoke-static {v1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 610
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->userInfo(Landroid/content/Context;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 611
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 612
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_2d

    .line 613
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 615
    :cond_2d
    return-void
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

    .line 584
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 585
    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 586
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v1

    .line 587
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 588
    if-eqz v1, :cond_1a

    if-nez v0, :cond_22

    .line 589
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no watch nonce"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_22
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    move-result-object v2

    .line 592
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    new-array v4, v8, [[B

    aput-object v1, v4, v6

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v3

    .line 593
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 595
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 596
    const-string v0, "auth"

    const-string v1, "hmac mismatch \u2014 wrong auth key"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :goto_4e
    return-void

    .line 599
    :cond_4f
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 600
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    new-array v3, v8, [[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v0

    .line 601
    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    .line 602
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authDeviceInfo()[B

    move-result-object v3

    .line 601
    invoke-static {v1, v2, v6, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v1

    .line 603
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authStep3([B[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    goto :goto_4e
.end method

.method private beginAuth()V
    .registers 3

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    if-eqz v0, :cond_5

    .line 517
    :goto_4
    return-void

    .line 513
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    .line 514
    const-string v0, "auth_start"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->random:Ljava/util/Random;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 516
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authNonce([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    goto :goto_4
.end method

.method private closePort()V
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 317
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 318
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq v0, v1, :cond_e

    .line 320
    :try_start_b
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_f

    .line 324
    :cond_e
    :goto_e
    return-void

    .line 321
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private consume(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 404
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    sub-int/2addr v0, p1

    .line 405
    if-lez v0, :cond_d

    .line 406
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    :cond_d
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 409
    return-void
.end method

.method private decryptV1([B)[B
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 465
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_6

    .line 481
    :goto_5
    return-object v0

    .line 469
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

    .line 470
    :catch_14
    move-exception v1

    .line 473
    :try_start_15
    array-length v2, p1

    const/4 v3, 0x6

    if-le v2, v3, :cond_34

    .line 474
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->u16([BI)I

    move-result v2

    .line 475
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    const/4 v5, 0x2

    array-length v6, p1

    add-int/lit8 v6, v6, -0x2

    .line 476
    invoke-static {p1, v5, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->slice([BII)[B

    move-result-object v5

    .line 475
    invoke-static {v3, v4, v2, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_31} :catch_33

    move-result-object v0

    goto :goto_5

    .line 478
    :catch_33
    move-exception v2

    .line 480
    :cond_34
    const-string v2, "ERR:ccm"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private dropped(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    .line 363
    :goto_a
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 364
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 365
    if-eqz v2, :cond_14

    .line 366
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 368
    :cond_14
    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_32

    .line 369
    const-string v0, "reconnecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    :goto_2f
    return-void

    :cond_30
    move v0, v1

    .line 362
    goto :goto_a

    .line 374
    :cond_32
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public static getBuildTag()Ljava/lang/String;
    .registers 1

    .prologue
    .line 98
    const-string v0, "v1.1.65-spp"

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;
    .registers 2

    .prologue
    .line 91
    const-class v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-nez v0, :cond_e

    .line 92
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    .line 94
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hex([B)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x10

    .line 793
    if-nez p0, :cond_7

    .line 794
    const-string v0, ""

    .line 800
    :goto_6
    return-object v0

    .line 796
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 797
    array-length v2, p0

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_2d

    aget-byte v3, p0, v0

    .line 798
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

    .line 797
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 800
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private notifyConnected(Z)V
    .registers 3

    .prologue
    .line 787
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_9

    .line 788
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onConnected(Z)V

    .line 790
    :cond_9
    return-void
.end method

.method private onAuth(Ljava/util/Map;I)V
    .registers 7
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
    const/4 v3, 0x1

    .line 556
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_6

    .line 581
    :cond_5
    :goto_5
    return-void

    .line 559
    :cond_6
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_1e

    .line 561
    :try_start_a
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->answerWatchNonce(Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_5

    .line 562
    :catch_e
    move-exception v0

    .line 563
    const-string v1, "ERR:auth"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_5

    .line 568
    :cond_1e
    const/16 v0, 0x1b

    if-ne p2, v0, :cond_5

    .line 569
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_31

    .line 571
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_5

    .line 574
    :cond_31
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 575
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    const-string v1, "authenticated"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 578
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

    .line 579
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->afterAuth()V

    goto :goto_5
.end method

.method private onCommand([B)V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 530
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 531
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v1

    .line 532
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v2

    .line 533
    if-eq v1, v8, :cond_48

    .line 534
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

    .line 535
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 534
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_48
    if-ne v1, v8, :cond_4e

    .line 538
    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onAuth(Ljava/util/Map;I)V

    .line 553
    :cond_4d
    :goto_4d
    return-void

    .line 539
    :cond_4e
    const/16 v3, 0x8

    if-ne v1, v3, :cond_5a

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_5a

    .line 540
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onRealtime(Ljava/util/Map;)V

    goto :goto_4d

    .line 541
    :cond_5a
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->onCommand(IILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 542
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

    .line 543
    :cond_79
    if-ne v1, v9, :cond_c8

    .line 544
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->onSystemCommand(ILjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 545
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

    .line 546
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownWorn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 547
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getFirmware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 551
    :cond_c8
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

    .line 412
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->version:I

    if-ne v0, v2, :cond_49

    .line 413
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-nez v0, :cond_10

    .line 414
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onVersion([B)V

    .line 462
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 417
    :cond_10
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v2, :cond_39

    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v3, :cond_39

    .line 418
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

    goto :goto_f

    .line 421
    :cond_39
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 422
    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->dataType:I

    if-ne v1, v2, :cond_45

    .line 423
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->decryptV1([B)[B

    move-result-object v0

    .line 424
    if-eqz v0, :cond_f

    .line 428
    :cond_45
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onCommand([B)V

    goto :goto_f

    .line 431
    :cond_49
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->type:I

    packed-switch v0, :pswitch_data_e2

    .line 460
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

    .line 433
    :pswitch_6f
    const-string v0, "spp"

    const-string v1, "v2 session reply"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto :goto_f

    .line 439
    :pswitch_7a
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->seq:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2Ack(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 440
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v2, :cond_b6

    .line 441
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

    goto/16 :goto_f

    .line 444
    :cond_b6
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 445
    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->opcode:I

    if-ne v1, v3, :cond_d1

    .line 446
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_c9

    .line 447
    const-string v0, "spp"

    const-string v1, "encrypted packet before auth"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 451
    :cond_c9
    :try_start_c9
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->ctr([B[B)[B
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_d0} :catch_d6

    move-result-object v0

    .line 457
    :cond_d1
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onCommand([B)V

    goto/16 :goto_f

    .line 452
    :catch_d6
    move-exception v0

    .line 453
    const-string v1, "ERR:ctr"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 431
    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_6f
        :pswitch_7a
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

    const/4 v11, 0x0

    const-wide/16 v4, 0x0

    .line 679
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v6

    .line 680
    if-nez v6, :cond_1b

    .line 681
    const-string v0, "hr"

    const-string v1, "8/47 without realTimeStats"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_1a
    :goto_1a
    return-void

    .line 684
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 685
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_af

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    sub-long v0, v8, v0

    move-wide v2, v0

    .line 686
    :goto_2a
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 687
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_34

    .line 688
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    .line 690
    :cond_34
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    .line 691
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 692
    invoke-static {v6, v12}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 693
    const/4 v0, 0x2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 694
    const/4 v0, 0x3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 695
    const/4 v0, 0x5

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 696
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 697
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6d
    :goto_6d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 699
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 700
    if-lt v1, v12, :cond_87

    if-le v1, v13, :cond_6d

    .line 701
    :cond_87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 702
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v10, 0x3d

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v10, v0, [B

    if-eqz v10, :cond_b2

    check-cast v0, [B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v0

    :goto_a5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    .line 703
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_af
    move-wide v2, v4

    .line 685
    goto/16 :goto_2a

    .line 702
    :cond_b2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    .line 706
    :cond_b7
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

    .line 708
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

    .line 706
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    if-nez v4, :cond_12e

    .line 710
    const-string v0, "measuring"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 713
    :cond_12e
    const/16 v0, 0xdc

    if-gt v4, v0, :cond_1a

    .line 714
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    .line 715
    const-string v0, "streaming"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_1a

    .line 717
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onHeartRate(I)V

    goto/16 :goto_1a
.end method

.method private onVersion([B)V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 488
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 489
    if-eqz p1, :cond_12

    array-length v1, p1

    if-lez v1, :cond_12

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 490
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

    .line 491
    if-lt v0, v4, :cond_36

    .line 492
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 493
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2SessionStart()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 498
    :goto_35
    return-void

    .line 496
    :cond_36
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 497
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto :goto_35
.end method

.method private pollStatus()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    .line 619
    const/16 v0, 0x4e

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 620
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 621
    return-void
.end method

.method private resetSession()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 290
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 291
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    .line 292
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    .line 293
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 295
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    .line 296
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 297
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 298
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    .line 299
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    .line 300
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    .line 301
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    .line 302
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    .line 303
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 304
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    .line 305
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    .line 306
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    .line 307
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 308
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 309
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 310
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 311
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 312
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 313
    return-void
.end method

.method private send([B)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 733
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v2, :cond_9

    if-nez p1, :cond_a

    .line 761
    :cond_9
    :goto_9
    return-void

    .line 736
    :cond_a
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-nez v2, :cond_f

    move v0, v1

    .line 738
    :cond_f
    :try_start_f
    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-ne v2, v4, :cond_43

    .line 739
    if-eqz v0, :cond_38

    .line 740
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

    .line 757
    :catch_28
    move-exception v0

    .line 758
    const-string v1, "ERR:send"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "send_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_9

    .line 739
    :cond_38
    :try_start_38
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->ctr([B[B)[B

    move-result-object p1

    goto :goto_15

    :cond_41
    move v1, v4

    .line 740
    goto :goto_20

    .line 744
    :cond_43
    if-eqz v0, :cond_59

    move-object v5, p1

    .line 755
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

    .line 748
    :cond_59
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    .line 749
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    invoke-static {v2, v3, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v2

    .line 750
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    new-array v5, v3, [B

    .line 751
    const/4 v3, 0x0

    invoke-static {v5, v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->putU16([BII)V

    .line 752
    const/4 v0, 0x0

    const/4 v3, 0x2

    array-length v4, v2

    invoke-static {v2, v0, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_7a} :catch_28

    move v4, v1

    .line 753
    goto :goto_46
.end method

.method private setState(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 779
    if-eqz p1, :cond_17

    :goto_2
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    .line 780
    const-string v0, "state"

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_16

    .line 782
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onState(Ljava/lang/String;)V

    .line 784
    :cond_16
    return-void

    .line 779
    :cond_17
    const-string p1, ""

    goto :goto_2
.end method

.method private write([B)V
    .registers 4

    .prologue
    .line 764
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 765
    if-nez v0, :cond_5

    .line 770
    :goto_4
    return-void

    .line 768
    :cond_5
    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    .line 769
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;->write([B)V

    goto :goto_4
.end method


# virtual methods
.method public connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 200
    if-nez p1, :cond_3

    .line 259
    :goto_2
    return-void

    .line 203
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_d
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 205
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->clear()V

    .line 206
    const-string v0, "build"

    const-string v1, "v1.1.65-spp"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
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

    .line 208
    const-string v1, "band-raw.csv"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
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

    .line 211
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 212
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    if-eqz p2, :cond_8b

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_78
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    .line 216
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->parseAuthKey(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    if-nez v0, :cond_8e

    .line 218
    const-string v0, "bad_auth_key"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 215
    :cond_8b
    const-string v0, ""

    goto :goto_78

    .line 221
    :cond_8e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    const-string v1, "([0-9A-F]{2}:){5}[0-9A-F]{2}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 222
    const-string v0, "bad_mac"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 225
    :cond_9f
    const-string v0, "connecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_bd

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortOpened(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V

    goto/16 :goto_2

    .line 232
    :cond_bd
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 233
    if-nez v0, :cond_ca

    .line 234
    const-string v0, "no_bluetooth"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 238
    :cond_ca
    :try_start_ca
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_df

    .line 239
    const-string v0, "no_bluetooth"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/SecurityException; {:try_start_ca .. :try_end_d5} :catch_d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ca .. :try_end_d5} :catch_128
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_d5} :catch_130

    goto/16 :goto_2

    .line 251
    :catch_d7
    move-exception v0

    .line 252
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 242
    :cond_df
    :try_start_df
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 243
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

    .line 244
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_11c

    .line 246
    const-string v1, "connect"

    const-string v2, "band is not bonded over Bluetooth Classic"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_11c
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 249
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 250
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->start()V
    :try_end_126
    .catch Ljava/lang/SecurityException; {:try_start_df .. :try_end_126} :catch_d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_df .. :try_end_126} :catch_128
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_126} :catch_130

    goto/16 :goto_2

    .line 253
    :catch_128
    move-exception v0

    .line 254
    const-string v0, "bad_mac"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 255
    :catch_130
    move-exception v0

    .line 256
    const-string v1, "ERR:connect"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public disconnect()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 264
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 265
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_20

    .line 267
    const/16 v0, 0x8

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 269
    :cond_20
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 270
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 271
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 273
    return-void
.end method

.method public getHrEventCount()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    return v0
.end method

.method public getLastCalories()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    return v0
.end method

.method public getLastF3()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    return v0
.end method

.method public getLastF5()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    return v0
.end method

.method public getLastNotifyChar()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    const-string v0, "spp"

    return-object v0
.end method

.method public getLastRawHr()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    return v0
.end method

.method public getLastRealtimeEventMs()J
    .registers 3

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    return-wide v0
.end method

.method public getLastState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSteps()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    return v0
.end method

.method public getNotifyCount51()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    return v0
.end method

.method public getNotifyCount52()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    return v0
.end method

.method public getNotifyEventCount()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    return v0
.end method

.method public getRealtimeEventCount()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    return v0
.end method

.method public getRealtimeEventRate()F
    .registers 7

    .prologue
    .line 165
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    .line 166
    :cond_d
    const/4 v0, 0x0

    .line 168
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
    .line 114
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
    .line 124
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
    .line 775
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method onAuthTimeout()V
    .registers 3

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_1d

    .line 521
    const-string v0, "auth"

    const-string v1, "timeout"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 523
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 524
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 525
    const-string v0, "auth_timeout"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 527
    :cond_1d
    return-void
.end method

.method onPortBytes(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[B)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-ne p1, v0, :cond_7

    if-nez p2, :cond_8

    .line 401
    :cond_7
    return-void

    .line 381
    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v1, p2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    array-length v1, v1

    if-le v0, v1, :cond_29

    .line 382
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 383
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    .line 386
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 388
    :goto_37
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-ne v0, p1, :cond_7

    .line 389
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->parse([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object v0

    .line 390
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    if-eqz v1, :cond_7

    .line 393
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->consume(I)V

    .line 394
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_76

    .line 395
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

    .line 398
    :cond_76
    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    .line 399
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPacket(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)V

    goto :goto_37
.end method

.method onPortClosed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 358
    :goto_4
    return-void

    .line 355
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

    .line 356
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 357
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_4
.end method

.method onPortFailed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 339
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 349
    :goto_4
    return-void

    .line 342
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

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 344
    const-string v0, "permission"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 345
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_4

    .line 348
    :cond_2e
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_4
.end method

.method onPortOpened(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V
    .registers 6

    .prologue
    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 336
    :goto_4
    return-void

    .line 332
    :cond_5
    const-string v0, "spp"

    const-string v1, "socket open"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "handshake"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v1Version()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 335
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method onReconnectTick()V
    .registers 5

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    if-nez v0, :cond_11

    .line 676
    :cond_10
    :goto_10
    return-void

    .line 672
    :cond_11
    const-string v0, "spp"

    const-string v1, "reconnecting"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 674
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    goto :goto_10
.end method

.method onStartRealtimeDue()V
    .registers 5

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_d

    .line 636
    :cond_c
    :goto_c
    return-void

    .line 629
    :cond_d
    const-string v0, "starting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 630
    const-string v0, "health"

    const-string v1, "realtime START"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/16 v0, 0x8

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    .line 634
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 635
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method

.method onVersionTimeout()V
    .registers 3

    .prologue
    .line 501
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-nez v0, :cond_9

    .line 507
    :cond_8
    :goto_8
    return-void

    .line 504
    :cond_9
    const-string v0, "spp"

    const-string v1, "no version reply \u2014 assume v1"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 506
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto :goto_8
.end method

.method onWatchTick()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 639
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-nez v0, :cond_f

    .line 666
    :cond_e
    :goto_e
    return-void

    .line 642
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 643
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_4c

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2ee0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4c

    .line 644
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3c

    .line 645
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    .line 646
    const-string v0, "health"

    const-string v1, "no first 8/47 \u2014 START once more"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 648
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onStartRealtimeDue()V

    goto :goto_e

    .line 651
    :cond_3c
    const-string v0, "health"

    const-string v1, "no 8/47 \u2014 reconnect"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 653
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_e

    .line 656
    :cond_4c
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_6c

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_6c

    .line 657
    const-string v0, "health"

    const-string v1, "stream stalled \u2014 reconnect"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 659
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_e

    .line 662
    :cond_6c
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_78

    .line 663
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 665
    :cond_78
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e
.end method

.method public sendCommand([B)V
    .registers 3

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_7

    .line 727
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 729
    :cond_7
    return-void
.end method

.method public setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    .line 110
    return-void
.end method

.method setTestPort(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 103
    return-void
.end method

.method public startRealtime()V
    .registers 5

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 278
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-nez v0, :cond_1b

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    :cond_1b
    return-void
.end method
