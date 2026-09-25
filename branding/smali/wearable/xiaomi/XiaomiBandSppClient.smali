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
    .locals 3

    .prologue
    const/4 v2, -0x1

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
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 85
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 86
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 87
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 88
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 90
    return-void
.end method

.method private afterAuth()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 640
    const-string v0, "initialized"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->clock()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 642
    invoke-static {v1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

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

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 652
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 650
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private answerWatchNonce(Ljava/util/Map;)V
    .locals 9
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

    .line 617
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 618
    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 619
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v1

    .line 620
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 621
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 622
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no watch nonce"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    move-result-object v2

    .line 625
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    new-array v4, v8, [[B

    aput-object v1, v4, v6

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v3

    .line 626
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 628
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 629
    const-string v0, "auth"

    const-string v1, "hmac mismatch \u2014 wrong auth key"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :goto_0
    return-void

    .line 632
    :cond_2
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 633
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    new-array v3, v8, [[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v0

    .line 634
    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    .line 635
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authDeviceInfo()[B

    move-result-object v3

    .line 634
    invoke-static {v1, v2, v6, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v1

    .line 636
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authStep3([B[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    goto :goto_0
.end method

.method private beginAuth()V
    .locals 2

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    if-eqz v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 542
    :cond_0
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

    goto :goto_0
.end method

.method private closePort()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 336
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq v0, v1, :cond_0

    .line 338
    :try_start_0
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private consume(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 422
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    sub-int/2addr v0, p1

    .line 423
    if-lez v0, :cond_0

    .line 424
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    :cond_0
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 427
    return-void
.end method

.method private decryptV1([B)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 494
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_0

    .line 510
    :goto_0
    return-object v0

    .line 498
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v1

    .line 502
    :try_start_1
    array-length v2, p1

    const/4 v3, 0x6

    if-le v2, v3, :cond_1

    .line 503
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->u16([BI)I

    move-result v2

    .line 504
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    const/4 v5, 0x2

    array-length v6, p1

    add-int/lit8 v6, v6, -0x2

    .line 505
    invoke-static {p1, v5, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->slice([BII)[B

    move-result-object v5

    .line 504
    invoke-static {v3, v4, v2, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 507
    :catch_1
    move-exception v2

    .line 509
    :cond_1
    const-string v2, "ERR:ccm"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dropped(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 381
    :goto_0
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 382
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 383
    if-eqz v2, :cond_1

    .line 384
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 386
    :cond_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 387
    const-string v0, "reconnecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 389
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 380
    goto :goto_0

    .line 392
    :cond_3
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getBuildTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "v1.1.65-spp"

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;
    .locals 2

    .prologue
    .line 93
    const-class v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    .line 96
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->instance:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hex([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 858
    if-nez p0, :cond_0

    .line 859
    const-string v0, ""

    .line 865
    :goto_0
    return-object v0

    .line 861
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 862
    array-length v2, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-byte v3, p0, v0

    .line 863
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

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 865
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyConnected(Z)V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onConnected(Z)V

    .line 855
    :cond_0
    return-void
.end method

.method private onAuth(Ljava/util/Map;I)V
    .locals 4
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

    .line 589
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_2

    .line 594
    :try_start_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->answerWatchNonce(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    const-string v1, "ERR:auth"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_2
    const/16 v0, 0x1b

    if-ne p2, v0, :cond_0

    .line 602
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 603
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_3

    .line 604
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_3
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 608
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 609
    const-string v1, "authenticated"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 610
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 611
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

    .line 612
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->afterAuth()V

    goto :goto_0
.end method

.method private onCommand([B)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 559
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 560
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v1

    .line 561
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v2

    .line 562
    if-eq v1, v8, :cond_0

    .line 563
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

    .line 564
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_0
    if-ne v1, v8, :cond_2

    .line 567
    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onAuth(Ljava/util/Map;I)V

    .line 586
    :cond_1
    :goto_0
    return-void

    .line 568
    :cond_2
    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_3

    .line 569
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onRealtime(Ljava/util/Map;)V

    goto :goto_0

    .line 570
    :cond_3
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->onCommand(IILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 571
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

    goto :goto_0

    .line 572
    :cond_4
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->onCommand(IILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 573
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

    goto :goto_0

    .line 574
    :cond_5
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->onCommand(IILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 575
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

    goto :goto_0

    .line 576
    :cond_6
    if-ne v1, v9, :cond_7

    .line 577
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->onSystemCommand(ILjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
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

    .line 579
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownWorn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 580
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 581
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getFirmware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :cond_7
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

    goto/16 :goto_0
.end method

.method private onPacket(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 439
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->version:I

    if-ne v0, v2, :cond_4

    .line 440
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-nez v0, :cond_1

    .line 441
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onVersion([B)V

    .line 491
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 444
    :cond_1
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v2, :cond_2

    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v3, :cond_2

    .line 445
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

    .line 446
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

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 450
    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->dataType:I

    if-ne v1, v2, :cond_3

    .line 451
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->decryptV1([B)[B

    move-result-object v0

    .line 452
    if-eqz v0, :cond_0

    .line 456
    :cond_3
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onCommand([B)V

    goto :goto_0

    .line 459
    :cond_4
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->type:I

    packed-switch v0, :pswitch_data_0

    .line 489
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

    goto :goto_0

    .line 461
    :pswitch_1
    const-string v0, "spp"

    const-string v1, "v2 session reply"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto/16 :goto_0

    .line 467
    :pswitch_2
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->seq:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2Ack(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 468
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v2, :cond_5

    .line 469
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

    .line 470
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

    goto/16 :goto_0

    .line 473
    :cond_5
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 474
    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->opcode:I

    if-ne v1, v3, :cond_7

    .line 475
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_6

    .line 476
    const-string v0, "spp"

    const-string v1, "encrypted packet before auth"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->ctr([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 486
    :cond_7
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onCommand([B)V

    goto/16 :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    const-string v1, "ERR:ctr"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onRealtime(Ljava/util/Map;)V
    .locals 14
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

    .line 724
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v6

    .line 725
    if-nez v6, :cond_1

    .line 726
    const-string v0, "hr"

    const-string v1, "8/47 without realTimeStats"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 730
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    sub-long v0, v8, v0

    move-wide v2, v0

    .line 731
    :goto_1
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 732
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 733
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    .line 735
    :cond_2
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    .line 736
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 737
    invoke-static {v6, v12}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 738
    const/4 v0, 0x2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 739
    const/4 v0, 0x3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 740
    const/4 v0, 0x5

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 741
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 744
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 745
    if-lt v1, v12, :cond_4

    if-le v1, v13, :cond_3

    .line 746
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 747
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v10, 0x3d

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v10, v0, [B

    if-eqz v10, :cond_6

    check-cast v0, [B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move-wide v2, v4

    .line 730
    goto/16 :goto_1

    .line 747
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 751
    :cond_7
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

    .line 753
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

    .line 751
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    if-nez v4, :cond_8

    .line 755
    const-string v0, "measuring"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 758
    :cond_8
    const/16 v0, 0xdc

    if-gt v4, v0, :cond_0

    .line 759
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    .line 760
    const-string v0, "streaming"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onHeartRate(I)V

    goto/16 :goto_0
.end method

.method private onVersion([B)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 517
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 519
    :cond_0
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

    .line 520
    if-lt v0, v4, :cond_1

    .line 521
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 522
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2SessionStart()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 526
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto :goto_0
.end method

.method private pollStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    .line 656
    const/16 v0, 0x4e

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 657
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 658
    return-void
.end method

.method private rawOther(Ljava/lang/String;[B)V
    .locals 4

    .prologue
    const/16 v1, 0x200

    .line 431
    if-nez p2, :cond_0

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    array-length v0, p2

    if-le v0, v1, :cond_1

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 435
    :cond_1
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

    goto :goto_0
.end method

.method private resetSession()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

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
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 308
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 309
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    .line 310
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    .line 311
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 313
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    .line 314
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 315
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 316
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    .line 317
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    .line 318
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    .line 319
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    .line 320
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    .line 321
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 322
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    .line 323
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    .line 324
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    .line 325
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 326
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 327
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 328
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 329
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 331
    return-void
.end method

.method private send([B)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 798
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 803
    :cond_2
    :try_start_0
    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-ne v2, v4, :cond_5

    .line 804
    if-eqz v0, :cond_3

    .line 805
    :goto_1
    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    :goto_2
    invoke-static {v2, v3, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2Data(III[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 822
    :catch_0
    move-exception v0

    .line 823
    const-string v1, "ERR:send"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v0, "send_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->ctr([B[B)[B

    move-result-object p1

    goto :goto_1

    :cond_4
    move v1, v4

    .line 805
    goto :goto_2

    .line 809
    :cond_5
    if-eqz v0, :cond_6

    move-object v5, p1

    .line 820
    :goto_3
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

    goto :goto_0

    .line 813
    :cond_6
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    .line 814
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    invoke-static {v2, v3, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v2

    .line 815
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    new-array v5, v3, [B

    .line 816
    const/4 v3, 0x0

    invoke-static {v5, v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->putU16([BII)V

    .line 817
    const/4 v0, 0x0

    const/4 v3, 0x2

    array-length v4, v2

    invoke-static {v2, v0, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v1

    .line 818
    goto :goto_3
.end method

.method private setState(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 844
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    .line 845
    const-string v0, "state"

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onState(Ljava/lang/String;)V

    .line 849
    :cond_0
    return-void

    .line 844
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method private write([B)V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 830
    if-nez v0, :cond_0

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_0
    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    .line 834
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method public connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 207
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->clear()V

    .line 208
    const-string v0, "build"

    const-string v1, "v1.1.65-spp"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
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

    .line 210
    const-string v1, "band-raw.csv"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
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

    .line 213
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 214
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    .line 219
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->parseAuthKey(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    if-nez v0, :cond_3

    .line 221
    const-string v0, "bad_auth_key"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    const-string v1, "([0-9A-F]{2}:){5}[0-9A-F]{2}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 225
    const-string v0, "bad_mac"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_4
    const-string v0, "connecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 232
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortOpened(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V

    goto/16 :goto_0

    .line 235
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 236
    if-nez v0, :cond_6

    .line 237
    const-string v0, "no_bluetooth"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :cond_6
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 242
    const-string v0, "no_bluetooth"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 246
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

    .line 247
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_8

    .line 249
    const-string v1, "connect"

    const-string v2, "band is not bonded over Bluetooth Classic"

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_8
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 252
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 253
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort;->start()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    const-string v0, "bad_mac"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :catch_2
    move-exception v0

    .line 259
    const-string v1, "ERR:connect"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 267
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 268
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    .line 269
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_0

    .line 271
    const/16 v0, 0x8

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 274
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 275
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 277
    return-void
.end method

.method public getHrEventCount()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    return v0
.end method

.method public getLastCalories()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    return v0
.end method

.method public getLastF3()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    return v0
.end method

.method public getLastF5()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    return v0
.end method

.method public getLastNotifyChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "spp"

    return-object v0
.end method

.method public getLastRawHr()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    return v0
.end method

.method public getLastRealtimeEventMs()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    return-wide v0
.end method

.method public getLastState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSteps()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    return v0
.end method

.method public getNotifyCount51()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    return v0
.end method

.method public getNotifyCount52()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    return v0
.end method

.method public getNotifyEventCount()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    return v0
.end method

.method public getRealtimeEventCount()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    return v0
.end method

.method public getRealtimeEventRate()F
    .locals 6

    .prologue
    .line 167
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_1
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

    goto :goto_0
.end method

.method public getTransportName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "SPP v2"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "SPP v1"

    goto :goto_0

    :cond_1
    const-string v0, "SPP"

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 840
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method onAuthTimeout()V
    .locals 2

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_0

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
    :cond_0
    return-void
.end method

.method onPortBytes(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 396
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 419
    :cond_0
    return-void

    .line 399
    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v1, p2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 401
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 406
    :goto_0
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-ne v0, p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->parse([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object v0

    .line 408
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    if-eqz v1, :cond_0

    .line 411
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->consume(I)V

    .line 412
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 413
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

    goto :goto_0

    .line 416
    :cond_3
    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    .line 417
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPacket(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)V

    goto :goto_0
.end method

.method onPortClosed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 373
    :cond_0
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

    .line 374
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 375
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_0
.end method

.method onPortFailed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 360
    :cond_0
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

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 362
    const-string v0, "permission"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_1
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_0
.end method

.method onPortOpened(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string v0, "spp"

    const-string v1, "socket open"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v0, "handshake"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v1Version()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 353
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method onReconnectTick()V
    .locals 4

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keepLink:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    if-nez v0, :cond_2

    .line 721
    :cond_1
    :goto_0
    return-void

    .line 717
    :cond_2
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

    goto :goto_0
.end method

.method onStartRealtimeDue()V
    .locals 4

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
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

    goto :goto_0
.end method

.method onVersionTimeout()V
    .locals 2

    .prologue
    .line 530
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-nez v0, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    const-string v0, "spp"

    const-string v1, "no version reply \u2014 assume v1"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 535
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto :goto_0
.end method

.method onWatchTick()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x7530

    const-wide/16 v8, 0xbb8

    const-wide/16 v6, 0x0

    .line 676
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-nez v0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 680
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-nez v2, :cond_3

    .line 682
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v10

    if-lez v0, :cond_2

    .line 683
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 688
    :cond_3
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2ee0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 689
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4

    .line 690
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    .line 691
    const-string v0, "health"

    const-string v1, "no first 8/47 \u2014 START once more"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 693
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onStartRealtimeDue()V

    goto :goto_0

    .line 696
    :cond_4
    const-string v0, "health"

    const-string v1, "no 8/47 \u2014 reconnect"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 698
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_5
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_6

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 702
    const-string v0, "health"

    const-string v1, "stream stalled \u2014 reconnect"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 704
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_6
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v10

    if-lez v0, :cond_7

    .line 708
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 710
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public sendCommand([B)V
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 774
    :cond_0
    return-void
.end method

.method sendData([B)V
    .locals 6

    .prologue
    const/4 v1, 0x2

    .line 781
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-ne v0, v1, :cond_2

    .line 786
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2Data(III[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v0

    .line 792
    const-string v1, "ERR:data"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 788
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v5

    .line 789
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
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    .line 112
    return-void
.end method

.method setTestPort(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 105
    return-void
.end method

.method public startRealtime()V
    .locals 4

    .prologue
    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 282
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-nez v0, :cond_0

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
    :cond_0
    return-void
.end method

.method public stopRealtime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 291
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "health"

    const-string v1, "realtime STOP"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/16 v0, 0x8

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 296
    :cond_0
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 298
    return-void
.end method
